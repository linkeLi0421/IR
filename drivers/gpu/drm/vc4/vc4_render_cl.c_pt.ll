; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_render_cl.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_render_cl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vc4_rcl_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, [2 x i32], i32, i8, [3 x i8], i32, i64, i32, i32, i32, i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i16, i16 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }

@.str = private unnamed_addr constant [37 x i8] c"Bad render tile set (%d,%d)-(%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Render tiles (%d,%d) outside of bin config (%d,%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"RCL requires color or Z/S write\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"No flags supported on render config.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unknown bits in render config: 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Bad tiling format\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Bad tile buffer format\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Extra flags set\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"general zs write may not be a full-res.\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"load/store general bits set with full res load/store.\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Unknown bits in load/store: 0x%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"No color format should be set for ZS\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Bad load/store buffer %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"load/store buffer must be 16b aligned.\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"surface offset %d > BO size %zd\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"MSAA tile %d, %d out of bounds (bo size %zd, offset %d).\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"MSAA surface had nonzero flags/bits\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"MSAA write must be 16b aligned.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_get_rcl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.vc4_rcl_setup, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false)
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 11
  %7 = load i8, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 13
  %9 = load i8, ptr %8, align 2
  %10 = icmp ugt i8 %7, %9
  %11 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 12
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 14
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %12, %14
  %16 = select i1 %10, i1 true, i1 %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = zext i8 %7 to i32
  %19 = zext i8 %12 to i32
  %20 = zext i8 %9 to i32
  %21 = zext i8 %14 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21) #4
  br label %127

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 21
  %28 = load i8, ptr %27, align 8
  %29 = icmp ugt i8 %9, %28
  %30 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 22
  %31 = load i8, ptr %30, align 1
  %32 = icmp ugt i8 %14, %31
  %33 = select i1 %29, i1 true, i1 %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = zext i8 %9 to i32
  %36 = zext i8 %14 to i32
  %37 = zext i8 %28 to i32
  %38 = zext i8 %31 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38) #4
  br label %127

39:                                               ; preds = %26, %22
  %40 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %3, i32 0, i32 1
  %41 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 16
  %42 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 16, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = trunc i16 %43 to i8
  %46 = lshr i8 %45, 6
  %47 = lshr i16 %43, 2
  %48 = and i16 %47, 3
  %49 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 16, i32 3
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #4
  br label %127

53:                                               ; preds = %39
  %54 = and i32 %44, 65314
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %44) #4
  br label %127

57:                                               ; preds = %53
  %58 = load i32, ptr %41, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %88, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @vc4_use_bo(ptr noundef %1, i32 noundef %58) #4
  store ptr %61, ptr %40, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %127, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 9
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8
  %67 = getelementptr %struct.vc4_exec_info, ptr %1, i32 0, i32 8, i32 %65
  store ptr %61, ptr %67, align 4
  %68 = icmp eq i8 %46, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #4
  br label %127

70:                                               ; preds = %63
  %71 = icmp eq i16 %48, 3
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #4
  br label %127

73:                                               ; preds = %70
  %74 = shl nuw nsw i16 %48, 3
  %75 = zext i16 %74 to i24
  %76 = lshr i24 132098, %75
  %77 = trunc i24 %76 to i8
  %78 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 16, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %80, i32 0, i32 9
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %80, i32 0, i32 10
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = tail call zeroext i1 @vc4_check_tex_size(ptr noundef %1, ptr noundef nonnull %61, i32 noundef %79, i8 noundef zeroext %46, i32 noundef %83, i32 noundef %86, i8 noundef zeroext %77) #4
  br i1 %87, label %88, label %127

88:                                               ; preds = %73, %57
  %89 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 15
  %90 = call fastcc i32 @vc4_rcl_surface_setup(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %89, i1 noundef zeroext false)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %3, i32 0, i32 2
  %94 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 17
  %95 = call fastcc i32 @vc4_rcl_surface_setup(ptr noundef %1, ptr noundef %93, ptr noundef %94, i1 noundef zeroext false)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %3, i32 0, i32 3
  %99 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 18
  %100 = call fastcc i32 @vc4_rcl_surface_setup(ptr noundef %1, ptr noundef %98, ptr noundef %99, i1 noundef zeroext true)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %3, i32 0, i32 4
  %104 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 19
  %105 = call fastcc i32 @vc4_rcl_msaa_surface_setup(ptr noundef %1, ptr noundef %103, ptr noundef %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %3, i32 0, i32 5
  %109 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 20
  %110 = call fastcc i32 @vc4_rcl_msaa_surface_setup(ptr noundef %1, ptr noundef %108, ptr noundef %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load ptr, ptr %40, align 4
  %114 = icmp ne ptr %113, null
  %115 = load ptr, ptr %98, align 4
  %116 = icmp ne ptr %115, null
  %117 = select i1 %114, i1 true, i1 %116
  %118 = load ptr, ptr %103, align 4
  %119 = icmp ne ptr %118, null
  %120 = select i1 %117, i1 true, i1 %119
  %121 = load ptr, ptr %108, align 4
  %122 = icmp ne ptr %121, null
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %112
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  br label %127

125:                                              ; preds = %112
  %126 = call fastcc i32 @vc4_create_rcl_bo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %127

127:                                              ; preds = %125, %124, %107, %102, %97, %92, %88, %73, %72, %69, %60, %56, %52, %34, %17
  %128 = phi i32 [ -22, %17 ], [ -22, %34 ], [ %126, %125 ], [ -22, %124 ], [ %90, %88 ], [ %95, %92 ], [ %100, %97 ], [ %105, %102 ], [ %110, %107 ], [ -22, %52 ], [ -22, %56 ], [ -22, %69 ], [ -22, %72 ], [ -22, %60 ], [ -22, %73 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #4
  ret i32 %128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_rcl_surface_setup(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = trunc i16 %6 to i8
  %8 = lshr i8 %7, 4
  %9 = and i8 %8, 3
  %10 = and i16 %6, 7
  %11 = zext i16 %10 to i32
  %12 = lshr i16 %6, 8
  %13 = trunc i16 %12 to i8
  %14 = and i8 %13, 3
  %15 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = icmp ult i16 %16, 2
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #4
  br label %113

19:                                               ; preds = %4
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %113, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @vc4_use_bo(ptr noundef %0, i32 noundef %20) #4
  store ptr %23, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %113, label %25

25:                                               ; preds = %22
  br i1 %3, label %26, label %31

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  %30 = getelementptr %struct.vc4_exec_info, ptr %0, i32 0, i32 8, i32 %28
  store ptr %23, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i16, ptr %15, align 2
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %37, i32 0, i32 18
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #4
  br label %113

41:                                               ; preds = %35
  %42 = load i16, ptr %5, align 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #4
  br label %113

45:                                               ; preds = %41
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_gem_object, ptr %46, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %50, %48
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %48, i32 noundef %50) #4
  br label %113

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %37, i32 0, i32 9
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = add nuw nsw i32 %56, 31
  %58 = lshr i32 %57, 5
  %59 = sub i32 %50, %48
  %60 = lshr i32 %59, 14
  %61 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %37, i32 0, i32 14
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = mul nuw nsw i32 %58, %63
  %65 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %37, i32 0, i32 13
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %64, %67
  %69 = icmp ult i32 %60, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %53
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %67, i32 noundef %63, i32 noundef %50, i32 noundef %48) #4
  br label %113

71:                                               ; preds = %31
  %72 = load i16, ptr %5, align 4
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 64712
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %73) #4
  br label %113

77:                                               ; preds = %71
  %78 = icmp eq i8 %9, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #4
  br label %113

80:                                               ; preds = %77
  %81 = trunc i16 %6 to i3
  switch i3 %81, label %88 [
    i3 2, label %82
    i3 1, label %85
  ]

82:                                               ; preds = %80
  %83 = icmp eq i8 %14, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %82
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #4
  br label %113

85:                                               ; preds = %80
  %86 = icmp eq i8 %14, 3
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #4
  br label %113

88:                                               ; preds = %80
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %11) #4
  br label %113

89:                                               ; preds = %85
  %90 = shl nuw nsw i8 %14, 3
  %91 = zext i8 %90 to i24
  %92 = lshr i24 131588, %91
  %93 = trunc i24 %92 to i8
  br label %94

94:                                               ; preds = %89, %82
  %95 = phi i8 [ 4, %82 ], [ %93, %89 ]
  %96 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 15
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #4
  br label %113

101:                                              ; preds = %94
  %102 = load ptr, ptr %1, align 4
  %103 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %104, i32 0, i32 9
  %106 = load i16, ptr %105, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %104, i32 0, i32 10
  %109 = load i16, ptr %108, align 2
  %110 = zext i16 %109 to i32
  %111 = tail call zeroext i1 @vc4_check_tex_size(ptr noundef %0, ptr noundef %102, i32 noundef %97, i8 noundef zeroext %9, i32 noundef %107, i32 noundef %110, i8 noundef zeroext %95) #4
  %112 = select i1 %111, i32 0, i32 -22
  br label %113

113:                                              ; preds = %101, %100, %88, %87, %84, %79, %76, %70, %53, %52, %44, %40, %22, %19, %18
  %114 = phi i32 [ -22, %18 ], [ -22, %40 ], [ -22, %44 ], [ -22, %76 ], [ -22, %79 ], [ -22, %84 ], [ -22, %100 ], [ -22, %87 ], [ -22, %88 ], [ 0, %19 ], [ -22, %22 ], [ %112, %101 ], [ -22, %52 ], [ -22, %70 ], [ 0, %53 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_rcl_msaa_surface_setup(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #4
  br label %54

12:                                               ; preds = %7
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @vc4_use_bo(ptr noundef %0, i32 noundef %13) #4
  store ptr %16, ptr %1, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8
  %22 = getelementptr %struct.vc4_exec_info, ptr %0, i32 0, i32 8, i32 %20
  store ptr %16, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17) #4
  br label %54

28:                                               ; preds = %18
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.drm_gem_object, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = icmp ult i32 %31, %24
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %24, i32 noundef %31) #4
  br label %54

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %36, i32 0, i32 9
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = add nuw nsw i32 %39, 31
  %41 = lshr i32 %40, 5
  %42 = sub i32 %31, %24
  %43 = lshr i32 %42, 14
  %44 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %36, i32 0, i32 14
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul nuw nsw i32 %41, %46
  %48 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %36, i32 0, i32 13
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %47, %50
  %52 = icmp ult i32 %43, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %50, i32 noundef %46, i32 noundef %31, i32 noundef %24) #4
  br label %54

54:                                               ; preds = %53, %34, %33, %27, %15, %12, %11
  %55 = phi i32 [ -22, %11 ], [ -22, %27 ], [ 0, %12 ], [ -22, %15 ], [ -22, %33 ], [ -22, %53 ], [ 0, %34 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_create_rcl_bo(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 11
  %10 = load i8, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 12
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 13
  %14 = load i8, ptr %13, align 2
  %15 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 14
  %16 = load i8, ptr %15, align 1
  %17 = sub i8 %14, %10
  %18 = add i8 %17, 1
  %19 = sub i8 %16, %12
  %20 = add i8 %19, 1
  %21 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 25
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 6
  %24 = icmp eq i32 %23, 2
  %25 = and i32 %22, 10
  %26 = icmp eq i32 %25, 2
  %27 = and i32 %22, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 11, i32 35
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 15, i32 3
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, i32 10, i32 8
  br label %38

38:                                               ; preds = %32, %3
  %39 = phi i32 [ 3, %3 ], [ %37, %32 ]
  %40 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = add nuw nsw i32 %39, 10
  %45 = select i1 %31, i32 %39, i32 %44
  %46 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 17, i32 3
  %47 = load i16, ptr %46, align 2
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = add nuw nsw i32 %45, 5
  br label %54

52:                                               ; preds = %43
  %53 = add nuw nsw i32 %45, 7
  br label %54

54:                                               ; preds = %52, %50, %38
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ], [ %39, %38 ]
  %56 = add nuw nsw i32 %55, 5
  %57 = xor i1 %8, true
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %29, %58
  %60 = select i1 %8, i32 %55, i32 %56
  %61 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = add nuw nsw i32 %60, 5
  %65 = select i1 %63, i32 %60, i32 %64
  %66 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = add nuw nsw i32 %65, 5
  %70 = select i1 %68, i32 %65, i32 %69
  %71 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  %74 = add nuw nsw i32 %70, 7
  %75 = select i1 %73, i32 %70, i32 %74
  %76 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = icmp ne ptr %62, null
  %80 = zext i1 %79 to i32
  %81 = icmp ne ptr %67, null
  %82 = zext i1 %81 to i32
  %83 = add nuw nsw i32 %82, %80
  %84 = icmp ne ptr %77, null
  %85 = zext i1 %84 to i32
  %86 = icmp ne ptr %72, null
  %87 = zext i1 %86 to i32
  %88 = add nuw nsw i32 %83, %87
  %89 = add nuw nsw i32 %88, %85
  %90 = mul nuw nsw i32 %89, 3
  %91 = select i1 %78, i32 -3, i32 -2
  %92 = add nsw i32 %91, %75
  %93 = add nuw nsw i32 %92, %90
  %94 = zext i8 %18 to i32
  %95 = zext i8 %20 to i32
  %96 = mul nuw nsw i32 %95, %94
  %97 = mul nuw nsw i32 %96, %93
  %98 = add nuw nsw i32 %59, %97
  %99 = tail call ptr @vc4_bo_create(ptr noundef %0, i32 noundef %98, i1 noundef zeroext true, i32 noundef 5) #4
  %100 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 6
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %104

102:                                              ; preds = %54
  %103 = ptrtoint ptr %99 to i32
  br label %725

104:                                              ; preds = %54
  %105 = getelementptr inbounds %struct.vc4_bo, ptr %99, i32 0, i32 4
  %106 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 11
  %107 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 11, i32 1
  %108 = load ptr, ptr %107, align 4
  store ptr %105, ptr %107, align 4
  store ptr %106, ptr %105, align 4
  %109 = getelementptr inbounds %struct.vc4_bo, ptr %99, i32 0, i32 4, i32 1
  store ptr %108, ptr %109, align 4
  store volatile ptr %105, ptr %108, align 4
  %110 = load i32, ptr %21, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 7
  %115 = load i32, ptr %114, align 4
  br label %193

116:                                              ; preds = %104
  %117 = load ptr, ptr %100, align 4
  %118 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 7
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %119, i32 %121
  store i8 114, ptr %122, align 1
  %123 = load i32, ptr %120, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %120, align 4
  %125 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 21
  %126 = load i32, ptr %125, align 4
  %127 = load ptr, ptr %100, align 4
  %128 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr i8, ptr %129, i32 %124
  store i32 %126, ptr %130, align 4
  %131 = load i32, ptr %120, align 4
  %132 = add i32 %131, 4
  store i32 %132, ptr %120, align 4
  %133 = getelementptr %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 21, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = load ptr, ptr %100, align 4
  %136 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr i8, ptr %137, i32 %132
  store i32 %134, ptr %138, align 4
  %139 = load i32, ptr %120, align 4
  %140 = add i32 %139, 4
  store i32 %140, ptr %120, align 4
  %141 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 22
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %100, align 4
  %144 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr i8, ptr %145, i32 %140
  store i32 %142, ptr %146, align 4
  %147 = load i32, ptr %120, align 4
  %148 = add i32 %147, 4
  store i32 %148, ptr %120, align 4
  %149 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 23
  %150 = load i8, ptr %149, align 8
  %151 = load ptr, ptr %100, align 4
  %152 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr i8, ptr %153, i32 %148
  store i8 %150, ptr %154, align 1
  %155 = load i32, ptr %120, align 4
  %156 = add i32 %155, 1
  store i32 %156, ptr %120, align 4
  %157 = load ptr, ptr %100, align 4
  %158 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %157, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr i8, ptr %159, i32 %156
  store i8 115, ptr %160, align 1
  %161 = load i32, ptr %120, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %120, align 4
  %163 = load ptr, ptr %100, align 4
  %164 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr i8, ptr %165, i32 %162
  store i8 0, ptr %166, align 1
  %167 = load i32, ptr %120, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %120, align 4
  %169 = load ptr, ptr %100, align 4
  %170 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %169, i32 0, i32 3
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr i8, ptr %171, i32 %168
  store i8 0, ptr %172, align 1
  %173 = load i32, ptr %120, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %120, align 4
  %175 = load ptr, ptr %100, align 4
  %176 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %175, i32 0, i32 3
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr i8, ptr %177, i32 %174
  store i8 28, ptr %178, align 1
  %179 = load i32, ptr %120, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %120, align 4
  %181 = load ptr, ptr %100, align 4
  %182 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %181, i32 0, i32 3
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr i8, ptr %183, i32 %180
  store i16 0, ptr %184, align 2
  %185 = load i32, ptr %120, align 4
  %186 = add i32 %185, 2
  store i32 %186, ptr %120, align 4
  %187 = load ptr, ptr %100, align 4
  %188 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr i8, ptr %189, i32 %186
  store i32 0, ptr %190, align 4
  %191 = load i32, ptr %120, align 4
  %192 = add i32 %191, 4
  store i32 %192, ptr %120, align 4
  br label %193

193:                                              ; preds = %116, %113
  %194 = phi i32 [ %115, %113 ], [ %192, %116 ]
  %195 = load ptr, ptr %100, align 4
  %196 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %195, i32 0, i32 3
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %2, i32 0, i32 7
  %199 = getelementptr i8, ptr %197, i32 %194
  store i8 113, ptr %199, align 1
  %200 = load i32, ptr %198, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %198, align 4
  %202 = load ptr, ptr %76, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %193
  %205 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %202, i32 0, i32 1
  %206 = load i32, ptr %205, align 8
  %207 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 16, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = add i32 %208, %206
  br label %210

210:                                              ; preds = %204, %193
  %211 = phi i32 [ %209, %204 ], [ 0, %193 ]
  %212 = load ptr, ptr %100, align 4
  %213 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr i8, ptr %214, i32 %201
  store i32 %211, ptr %215, align 4
  %216 = load i32, ptr %198, align 4
  %217 = add i32 %216, 4
  store i32 %217, ptr %198, align 4
  %218 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 9
  %219 = load i16, ptr %218, align 4
  %220 = load ptr, ptr %100, align 4
  %221 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %220, i32 0, i32 3
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr i8, ptr %222, i32 %217
  store i16 %219, ptr %223, align 2
  %224 = load i32, ptr %198, align 4
  %225 = add i32 %224, 2
  store i32 %225, ptr %198, align 4
  %226 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 10
  %227 = load i16, ptr %226, align 2
  %228 = load ptr, ptr %100, align 4
  %229 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %228, i32 0, i32 3
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr i8, ptr %230, i32 %225
  store i16 %227, ptr %231, align 2
  %232 = load i32, ptr %198, align 4
  %233 = add i32 %232, 2
  store i32 %233, ptr %198, align 4
  %234 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 16, i32 2
  %235 = load i16, ptr %234, align 8
  %236 = load ptr, ptr %100, align 4
  %237 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %236, i32 0, i32 3
  %238 = load ptr, ptr %237, align 8
  %239 = getelementptr i8, ptr %238, i32 %233
  store i16 %235, ptr %239, align 2
  %240 = load i32, ptr %198, align 4
  %241 = add i32 %240, 2
  store i32 %241, ptr %198, align 4
  %242 = icmp eq i8 %20, 0
  br i1 %242, label %710, label %243

243:                                              ; preds = %210
  %244 = icmp eq i8 %18, 0
  %245 = add nsw i32 %94, -1
  %246 = add nsw i32 %95, -1
  %247 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 23
  %248 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 21
  br label %249

249:                                              ; preds = %706, %243
  %250 = phi i32 [ %241, %243 ], [ %707, %706 ]
  %251 = phi i32 [ 0, %243 ], [ %708, %706 ]
  %252 = trunc i32 %251 to i8
  %253 = add i8 %12, %252
  %254 = sub i8 %16, %252
  %255 = select i1 %26, i8 %254, i8 %253
  br i1 %244, label %706, label %256

256:                                              ; preds = %249
  %257 = icmp ne i32 %251, 0
  %258 = icmp eq i32 %246, %251
  %259 = zext i8 %255 to i32
  br label %260

260:                                              ; preds = %702, %256
  %261 = phi i32 [ %250, %256 ], [ %703, %702 ]
  %262 = phi i32 [ 0, %256 ], [ %704, %702 ]
  %263 = trunc i32 %262 to i8
  %264 = add i8 %10, %263
  %265 = sub i8 %14, %263
  %266 = select i1 %24, i8 %265, i8 %264
  %267 = icmp ne i32 %262, 0
  %268 = select i1 %267, i1 true, i1 %257
  %269 = icmp eq i32 %245, %262
  %270 = select i1 %269, i1 %258, i1 false
  %271 = load ptr, ptr %4, align 4
  %272 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 4
  %273 = load i32, ptr %272, align 8
  %274 = icmp eq i32 %273, 0
  %275 = load ptr, ptr %2, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %333, label %277

277:                                              ; preds = %260
  %278 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 15, i32 3
  %279 = load i16, ptr %278, align 2
  %280 = and i16 %279, 1
  %281 = icmp eq i16 %280, 0
  %282 = load ptr, ptr %100, align 4
  %283 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %282, i32 0, i32 3
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr i8, ptr %284, i32 %261
  br i1 %281, label %307, label %286

286:                                              ; preds = %277
  store i8 27, ptr %285, align 1
  %287 = load i32, ptr %198, align 4
  %288 = add i32 %287, 1
  store i32 %288, ptr %198, align 4
  %289 = load ptr, ptr %2, align 4
  %290 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %289, i32 0, i32 1
  %291 = load i32, ptr %290, align 8
  %292 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 15, i32 1
  %293 = load i32, ptr %292, align 4
  %294 = add i32 %293, %291
  %295 = load ptr, ptr %4, align 4
  %296 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %295, i32 0, i32 9
  %297 = load i16, ptr %296, align 4
  %298 = zext i16 %297 to i32
  %299 = add nuw nsw i32 %298, 31
  %300 = lshr i32 %299, 5
  %301 = mul nuw nsw i32 %300, %259
  %302 = zext i8 %266 to i32
  %303 = add nuw nsw i32 %301, %302
  %304 = shl i32 %303, 14
  %305 = add i32 %294, %304
  %306 = or i32 %305, 2
  br label %324

307:                                              ; preds = %277
  store i8 29, ptr %285, align 1
  %308 = load i32, ptr %198, align 4
  %309 = add i32 %308, 1
  store i32 %309, ptr %198, align 4
  %310 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 15, i32 2
  %311 = load i16, ptr %310, align 4
  %312 = load ptr, ptr %100, align 4
  %313 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %312, i32 0, i32 3
  %314 = load ptr, ptr %313, align 8
  %315 = getelementptr i8, ptr %314, i32 %309
  store i16 %311, ptr %315, align 2
  %316 = load i32, ptr %198, align 4
  %317 = add i32 %316, 2
  store i32 %317, ptr %198, align 4
  %318 = load ptr, ptr %2, align 4
  %319 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %318, i32 0, i32 1
  %320 = load i32, ptr %319, align 8
  %321 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 15, i32 1
  %322 = load i32, ptr %321, align 4
  %323 = add i32 %322, %320
  br label %324

324:                                              ; preds = %307, %286
  %325 = phi i32 [ %288, %286 ], [ %317, %307 ]
  %326 = phi i32 [ %306, %286 ], [ %323, %307 ]
  %327 = load ptr, ptr %100, align 4
  %328 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %327, i32 0, i32 3
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr i8, ptr %329, i32 %325
  store i32 %326, ptr %330, align 4
  %331 = load i32, ptr %198, align 4
  %332 = add i32 %331, 4
  store i32 %332, ptr %198, align 4
  br label %333

333:                                              ; preds = %324, %260
  %334 = phi i32 [ %332, %324 ], [ %261, %260 ]
  %335 = load ptr, ptr %40, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %434, label %337

337:                                              ; preds = %333
  %338 = load ptr, ptr %2, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %377, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr %100, align 4
  %342 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %341, i32 0, i32 3
  %343 = load ptr, ptr %342, align 8
  %344 = getelementptr i8, ptr %343, i32 %334
  store i8 115, ptr %344, align 1
  %345 = load i32, ptr %198, align 4
  %346 = add i32 %345, 1
  store i32 %346, ptr %198, align 4
  %347 = load ptr, ptr %100, align 4
  %348 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %347, i32 0, i32 3
  %349 = load ptr, ptr %348, align 8
  %350 = getelementptr i8, ptr %349, i32 %346
  store i8 %266, ptr %350, align 1
  %351 = load i32, ptr %198, align 4
  %352 = add i32 %351, 1
  store i32 %352, ptr %198, align 4
  %353 = load ptr, ptr %100, align 4
  %354 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %353, i32 0, i32 3
  %355 = load ptr, ptr %354, align 8
  %356 = getelementptr i8, ptr %355, i32 %352
  store i8 %255, ptr %356, align 1
  %357 = load i32, ptr %198, align 4
  %358 = add i32 %357, 1
  store i32 %358, ptr %198, align 4
  %359 = load ptr, ptr %100, align 4
  %360 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %359, i32 0, i32 3
  %361 = load ptr, ptr %360, align 8
  %362 = getelementptr i8, ptr %361, i32 %358
  store i8 28, ptr %362, align 1
  %363 = load i32, ptr %198, align 4
  %364 = add i32 %363, 1
  store i32 %364, ptr %198, align 4
  %365 = load ptr, ptr %100, align 4
  %366 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %365, i32 0, i32 3
  %367 = load ptr, ptr %366, align 8
  %368 = getelementptr i8, ptr %367, i32 %364
  store i16 -8192, ptr %368, align 2
  %369 = load i32, ptr %198, align 4
  %370 = add i32 %369, 2
  store i32 %370, ptr %198, align 4
  %371 = load ptr, ptr %100, align 4
  %372 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %371, i32 0, i32 3
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr i8, ptr %373, i32 %370
  store i32 0, ptr %374, align 4
  %375 = load i32, ptr %198, align 4
  %376 = add i32 %375, 4
  store i32 %376, ptr %198, align 4
  br label %377

377:                                              ; preds = %340, %337
  %378 = phi i32 [ %376, %340 ], [ %334, %337 ]
  %379 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 17, i32 3
  %380 = load i16, ptr %379, align 2
  %381 = and i16 %380, 1
  %382 = icmp eq i16 %381, 0
  %383 = load ptr, ptr %100, align 4
  %384 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %383, i32 0, i32 3
  %385 = load ptr, ptr %384, align 8
  %386 = getelementptr i8, ptr %385, i32 %378
  br i1 %382, label %408, label %387

387:                                              ; preds = %377
  store i8 27, ptr %386, align 1
  %388 = load i32, ptr %198, align 4
  %389 = add i32 %388, 1
  store i32 %389, ptr %198, align 4
  %390 = load ptr, ptr %40, align 4
  %391 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %390, i32 0, i32 1
  %392 = load i32, ptr %391, align 8
  %393 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 17, i32 1
  %394 = load i32, ptr %393, align 4
  %395 = add i32 %394, %392
  %396 = load ptr, ptr %4, align 4
  %397 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %396, i32 0, i32 9
  %398 = load i16, ptr %397, align 4
  %399 = zext i16 %398 to i32
  %400 = add nuw nsw i32 %399, 31
  %401 = lshr i32 %400, 5
  %402 = mul nuw nsw i32 %401, %259
  %403 = zext i8 %266 to i32
  %404 = add nuw nsw i32 %402, %403
  %405 = shl i32 %404, 14
  %406 = add i32 %395, %405
  %407 = or i32 %406, 1
  br label %425

408:                                              ; preds = %377
  store i8 29, ptr %386, align 1
  %409 = load i32, ptr %198, align 4
  %410 = add i32 %409, 1
  store i32 %410, ptr %198, align 4
  %411 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 17, i32 2
  %412 = load i16, ptr %411, align 4
  %413 = load ptr, ptr %100, align 4
  %414 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %413, i32 0, i32 3
  %415 = load ptr, ptr %414, align 8
  %416 = getelementptr i8, ptr %415, i32 %410
  store i16 %412, ptr %416, align 2
  %417 = load i32, ptr %198, align 4
  %418 = add i32 %417, 2
  store i32 %418, ptr %198, align 4
  %419 = load ptr, ptr %40, align 4
  %420 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %419, i32 0, i32 1
  %421 = load i32, ptr %420, align 8
  %422 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 17, i32 1
  %423 = load i32, ptr %422, align 4
  %424 = add i32 %423, %421
  br label %425

425:                                              ; preds = %408, %387
  %426 = phi i32 [ %389, %387 ], [ %418, %408 ]
  %427 = phi i32 [ %407, %387 ], [ %424, %408 ]
  %428 = load ptr, ptr %100, align 4
  %429 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %428, i32 0, i32 3
  %430 = load ptr, ptr %429, align 8
  %431 = getelementptr i8, ptr %430, i32 %426
  store i32 %427, ptr %431, align 4
  %432 = load i32, ptr %198, align 4
  %433 = add i32 %432, 4
  store i32 %433, ptr %198, align 4
  br label %434

434:                                              ; preds = %425, %333
  %435 = phi i32 [ %334, %333 ], [ %433, %425 ]
  %436 = zext i8 %266 to i32
  %437 = load ptr, ptr %100, align 4
  %438 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %437, i32 0, i32 3
  %439 = load ptr, ptr %438, align 8
  %440 = getelementptr i8, ptr %439, i32 %435
  store i8 115, ptr %440, align 1
  %441 = load i32, ptr %198, align 4
  %442 = add i32 %441, 1
  store i32 %442, ptr %198, align 4
  %443 = load ptr, ptr %100, align 4
  %444 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %443, i32 0, i32 3
  %445 = load ptr, ptr %444, align 8
  %446 = getelementptr i8, ptr %445, i32 %442
  store i8 %266, ptr %446, align 1
  %447 = load i32, ptr %198, align 4
  %448 = add i32 %447, 1
  store i32 %448, ptr %198, align 4
  %449 = load ptr, ptr %100, align 4
  %450 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %449, i32 0, i32 3
  %451 = load ptr, ptr %450, align 8
  %452 = getelementptr i8, ptr %451, i32 %448
  store i8 %255, ptr %452, align 1
  %453 = load i32, ptr %198, align 4
  %454 = add i32 %453, 1
  store i32 %454, ptr %198, align 4
  %455 = select i1 %268, i1 true, i1 %274
  br i1 %455, label %463, label %456

456:                                              ; preds = %434
  %457 = load ptr, ptr %100, align 4
  %458 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %457, i32 0, i32 3
  %459 = load ptr, ptr %458, align 8
  %460 = getelementptr i8, ptr %459, i32 %454
  store i8 8, ptr %460, align 1
  %461 = load i32, ptr %198, align 4
  %462 = add i32 %461, 1
  store i32 %462, ptr %198, align 4
  br label %463

463:                                              ; preds = %456, %434
  %464 = phi i32 [ %454, %434 ], [ %462, %456 ]
  br i1 %274, label %485, label %465

465:                                              ; preds = %463
  %466 = load ptr, ptr %100, align 4
  %467 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %466, i32 0, i32 3
  %468 = load ptr, ptr %467, align 8
  %469 = getelementptr i8, ptr %468, i32 %464
  store i8 17, ptr %469, align 1
  %470 = load i32, ptr %198, align 4
  %471 = add i32 %470, 1
  store i32 %471, ptr %198, align 4
  %472 = load i32, ptr %247, align 4
  %473 = load i8, ptr %248, align 8
  %474 = zext i8 %473 to i32
  %475 = mul nuw nsw i32 %474, %259
  %476 = add nuw nsw i32 %475, %436
  %477 = shl nuw nsw i32 %476, 5
  %478 = add i32 %477, %472
  %479 = load ptr, ptr %100, align 4
  %480 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %479, i32 0, i32 3
  %481 = load ptr, ptr %480, align 8
  %482 = getelementptr i8, ptr %481, i32 %471
  store i32 %478, ptr %482, align 4
  %483 = load i32, ptr %198, align 4
  %484 = add i32 %483, 4
  store i32 %484, ptr %198, align 4
  br label %485

485:                                              ; preds = %465, %463
  %486 = phi i32 [ %484, %465 ], [ %464, %463 ]
  %487 = load ptr, ptr %61, align 4
  %488 = icmp eq ptr %487, null
  br i1 %488, label %531, label %489

489:                                              ; preds = %485
  %490 = load ptr, ptr %66, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %500

492:                                              ; preds = %489
  %493 = load ptr, ptr %71, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %500

495:                                              ; preds = %492
  %496 = load ptr, ptr %76, align 4
  %497 = icmp eq ptr %496, null
  %498 = select i1 %270, i32 10, i32 2
  %499 = select i1 %497, i32 %498, i32 6
  br label %500

500:                                              ; preds = %495, %492, %489
  %501 = phi i32 [ 6, %492 ], [ 6, %489 ], [ %499, %495 ]
  %502 = load ptr, ptr %100, align 4
  %503 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %502, i32 0, i32 3
  %504 = load ptr, ptr %503, align 8
  %505 = getelementptr i8, ptr %504, i32 %486
  store i8 26, ptr %505, align 1
  %506 = load i32, ptr %198, align 4
  %507 = add i32 %506, 1
  store i32 %507, ptr %198, align 4
  %508 = load ptr, ptr %61, align 4
  %509 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %508, i32 0, i32 1
  %510 = load i32, ptr %509, align 8
  %511 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 19, i32 1
  %512 = load i32, ptr %511, align 4
  %513 = add i32 %512, %510
  %514 = load ptr, ptr %4, align 4
  %515 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %514, i32 0, i32 9
  %516 = load i16, ptr %515, align 4
  %517 = zext i16 %516 to i32
  %518 = add nuw nsw i32 %517, 31
  %519 = lshr i32 %518, 5
  %520 = mul nuw nsw i32 %519, %259
  %521 = add nuw nsw i32 %520, %436
  %522 = shl i32 %521, 14
  %523 = add i32 %513, %522
  %524 = or i32 %523, %501
  %525 = load ptr, ptr %100, align 4
  %526 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %525, i32 0, i32 3
  %527 = load ptr, ptr %526, align 8
  %528 = getelementptr i8, ptr %527, i32 %507
  store i32 %524, ptr %528, align 4
  %529 = load i32, ptr %198, align 4
  %530 = add i32 %529, 4
  store i32 %530, ptr %198, align 4
  br label %531

531:                                              ; preds = %500, %485
  %532 = phi i32 [ %530, %500 ], [ %486, %485 ]
  %533 = load ptr, ptr %66, align 4
  %534 = icmp eq ptr %533, null
  br i1 %534, label %597, label %535

535:                                              ; preds = %531
  %536 = load ptr, ptr %71, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %538, label %541

538:                                              ; preds = %535
  %539 = load ptr, ptr %76, align 4
  %540 = icmp eq ptr %539, null
  br label %541

541:                                              ; preds = %538, %535
  %542 = phi i1 [ false, %535 ], [ %540, %538 ]
  %543 = load ptr, ptr %61, align 4
  %544 = icmp eq ptr %543, null
  br i1 %544, label %564, label %545

545:                                              ; preds = %541
  %546 = load ptr, ptr %100, align 4
  %547 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %546, i32 0, i32 3
  %548 = load ptr, ptr %547, align 8
  %549 = getelementptr i8, ptr %548, i32 %532
  store i8 115, ptr %549, align 1
  %550 = load i32, ptr %198, align 4
  %551 = add i32 %550, 1
  store i32 %551, ptr %198, align 4
  %552 = load ptr, ptr %100, align 4
  %553 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %552, i32 0, i32 3
  %554 = load ptr, ptr %553, align 8
  %555 = getelementptr i8, ptr %554, i32 %551
  store i8 %266, ptr %555, align 1
  %556 = load i32, ptr %198, align 4
  %557 = add i32 %556, 1
  store i32 %557, ptr %198, align 4
  %558 = load ptr, ptr %100, align 4
  %559 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %558, i32 0, i32 3
  %560 = load ptr, ptr %559, align 8
  %561 = getelementptr i8, ptr %560, i32 %557
  store i8 %255, ptr %561, align 1
  %562 = load i32, ptr %198, align 4
  %563 = add i32 %562, 1
  store i32 %563, ptr %198, align 4
  br label %564

564:                                              ; preds = %545, %541
  %565 = phi i32 [ %563, %545 ], [ %532, %541 ]
  %566 = select i1 %270, i32 9, i32 1
  %567 = select i1 %542, i32 %566, i32 5
  %568 = load ptr, ptr %100, align 4
  %569 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %568, i32 0, i32 3
  %570 = load ptr, ptr %569, align 8
  %571 = getelementptr i8, ptr %570, i32 %565
  store i8 26, ptr %571, align 1
  %572 = load i32, ptr %198, align 4
  %573 = add i32 %572, 1
  store i32 %573, ptr %198, align 4
  %574 = load ptr, ptr %66, align 4
  %575 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %574, i32 0, i32 1
  %576 = load i32, ptr %575, align 8
  %577 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 20, i32 1
  %578 = load i32, ptr %577, align 4
  %579 = add i32 %578, %576
  %580 = load ptr, ptr %4, align 4
  %581 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %580, i32 0, i32 9
  %582 = load i16, ptr %581, align 4
  %583 = zext i16 %582 to i32
  %584 = add nuw nsw i32 %583, 31
  %585 = lshr i32 %584, 5
  %586 = mul nuw nsw i32 %585, %259
  %587 = add nuw nsw i32 %586, %436
  %588 = shl i32 %587, 14
  %589 = add i32 %579, %588
  %590 = or i32 %589, %567
  %591 = load ptr, ptr %100, align 4
  %592 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %591, i32 0, i32 3
  %593 = load ptr, ptr %592, align 8
  %594 = getelementptr i8, ptr %593, i32 %573
  store i32 %590, ptr %594, align 4
  %595 = load i32, ptr %198, align 4
  %596 = add i32 %595, 4
  store i32 %596, ptr %198, align 4
  br label %597

597:                                              ; preds = %564, %531
  %598 = phi i32 [ %596, %564 ], [ %532, %531 ]
  %599 = load ptr, ptr %71, align 4
  %600 = icmp eq ptr %599, null
  br i1 %600, label %661, label %601

601:                                              ; preds = %597
  %602 = load ptr, ptr %76, align 4
  %603 = icmp eq ptr %602, null
  %604 = load ptr, ptr %61, align 4
  %605 = icmp eq ptr %604, null
  br i1 %605, label %606, label %609

606:                                              ; preds = %601
  %607 = load ptr, ptr %66, align 4
  %608 = icmp eq ptr %607, null
  br i1 %608, label %628, label %609

609:                                              ; preds = %606, %601
  %610 = load ptr, ptr %100, align 4
  %611 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %610, i32 0, i32 3
  %612 = load ptr, ptr %611, align 8
  %613 = getelementptr i8, ptr %612, i32 %598
  store i8 115, ptr %613, align 1
  %614 = load i32, ptr %198, align 4
  %615 = add i32 %614, 1
  store i32 %615, ptr %198, align 4
  %616 = load ptr, ptr %100, align 4
  %617 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %616, i32 0, i32 3
  %618 = load ptr, ptr %617, align 8
  %619 = getelementptr i8, ptr %618, i32 %615
  store i8 %266, ptr %619, align 1
  %620 = load i32, ptr %198, align 4
  %621 = add i32 %620, 1
  store i32 %621, ptr %198, align 4
  %622 = load ptr, ptr %100, align 4
  %623 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %622, i32 0, i32 3
  %624 = load ptr, ptr %623, align 8
  %625 = getelementptr i8, ptr %624, i32 %621
  store i8 %255, ptr %625, align 1
  %626 = load i32, ptr %198, align 4
  %627 = add i32 %626, 1
  store i32 %627, ptr %198, align 4
  br label %628

628:                                              ; preds = %609, %606
  %629 = phi i32 [ %627, %609 ], [ %598, %606 ]
  %630 = load ptr, ptr %100, align 4
  %631 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %630, i32 0, i32 3
  %632 = load ptr, ptr %631, align 8
  %633 = getelementptr i8, ptr %632, i32 %629
  store i8 28, ptr %633, align 1
  %634 = load i32, ptr %198, align 4
  %635 = add i32 %634, 1
  store i32 %635, ptr %198, align 4
  %636 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 18, i32 2
  %637 = load i16, ptr %636, align 8
  %638 = select i1 %603, i16 0, i16 8192
  %639 = or i16 %637, %638
  %640 = load ptr, ptr %100, align 4
  %641 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %640, i32 0, i32 3
  %642 = load ptr, ptr %641, align 8
  %643 = getelementptr i8, ptr %642, i32 %635
  store i16 %639, ptr %643, align 2
  %644 = load i32, ptr %198, align 4
  %645 = add i32 %644, 2
  store i32 %645, ptr %198, align 4
  %646 = load ptr, ptr %71, align 4
  %647 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %646, i32 0, i32 1
  %648 = load i32, ptr %647, align 8
  %649 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %271, i32 0, i32 18, i32 1
  %650 = load i32, ptr %649, align 4
  %651 = add i32 %650, %648
  %652 = select i1 %270, i1 %603, i1 false
  %653 = select i1 %652, i32 8, i32 0
  %654 = or i32 %651, %653
  %655 = load ptr, ptr %100, align 4
  %656 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %655, i32 0, i32 3
  %657 = load ptr, ptr %656, align 8
  %658 = getelementptr i8, ptr %657, i32 %645
  store i32 %654, ptr %658, align 4
  %659 = load i32, ptr %198, align 4
  %660 = add i32 %659, 4
  store i32 %660, ptr %198, align 4
  br label %661

661:                                              ; preds = %628, %597
  %662 = phi i32 [ %660, %628 ], [ %598, %597 ]
  %663 = load ptr, ptr %76, align 4
  %664 = icmp eq ptr %663, null
  br i1 %664, label %702, label %665

665:                                              ; preds = %661
  %666 = load ptr, ptr %61, align 4
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %674

668:                                              ; preds = %665
  %669 = load ptr, ptr %66, align 4
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %674

671:                                              ; preds = %668
  %672 = load ptr, ptr %71, align 4
  %673 = icmp eq ptr %672, null
  br i1 %673, label %693, label %674

674:                                              ; preds = %671, %668, %665
  %675 = load ptr, ptr %100, align 4
  %676 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %675, i32 0, i32 3
  %677 = load ptr, ptr %676, align 8
  %678 = getelementptr i8, ptr %677, i32 %662
  store i8 115, ptr %678, align 1
  %679 = load i32, ptr %198, align 4
  %680 = add i32 %679, 1
  store i32 %680, ptr %198, align 4
  %681 = load ptr, ptr %100, align 4
  %682 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %681, i32 0, i32 3
  %683 = load ptr, ptr %682, align 8
  %684 = getelementptr i8, ptr %683, i32 %680
  store i8 %266, ptr %684, align 1
  %685 = load i32, ptr %198, align 4
  %686 = add i32 %685, 1
  store i32 %686, ptr %198, align 4
  %687 = load ptr, ptr %100, align 4
  %688 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %687, i32 0, i32 3
  %689 = load ptr, ptr %688, align 8
  %690 = getelementptr i8, ptr %689, i32 %686
  store i8 %255, ptr %690, align 1
  %691 = load i32, ptr %198, align 4
  %692 = add i32 %691, 1
  store i32 %692, ptr %198, align 4
  br label %693

693:                                              ; preds = %674, %671
  %694 = phi i32 [ %692, %674 ], [ %662, %671 ]
  %695 = load ptr, ptr %100, align 4
  %696 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %695, i32 0, i32 3
  %697 = load ptr, ptr %696, align 8
  %698 = getelementptr i8, ptr %697, i32 %694
  %699 = select i1 %270, i8 25, i8 24
  store i8 %699, ptr %698, align 1
  %700 = load i32, ptr %198, align 4
  %701 = add i32 %700, 1
  store i32 %701, ptr %198, align 4
  br label %702

702:                                              ; preds = %693, %661
  %703 = phi i32 [ %662, %661 ], [ %701, %693 ]
  %704 = add nuw nsw i32 %262, 1
  %705 = icmp eq i32 %704, %94
  br i1 %705, label %706, label %260

706:                                              ; preds = %702, %249
  %707 = phi i32 [ %250, %249 ], [ %703, %702 ]
  %708 = add nuw nsw i32 %251, 1
  %709 = icmp eq i32 %708, %95
  br i1 %709, label %710, label %249

710:                                              ; preds = %706, %210
  %711 = phi i32 [ %241, %210 ], [ %707, %706 ]
  %712 = icmp eq i32 %711, %98
  br i1 %712, label %714, label %713, !prof !8

713:                                              ; preds = %710
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/vc4/vc4_render_cl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

714:                                              ; preds = %710
  %715 = load ptr, ptr %100, align 4
  %716 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %715, i32 0, i32 1
  %717 = load i32, ptr %716, align 8
  %718 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 27
  store i32 %717, ptr %718, align 4
  %719 = load ptr, ptr %100, align 4
  %720 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %719, i32 0, i32 1
  %721 = load i32, ptr %720, align 8
  %722 = load i32, ptr %198, align 4
  %723 = add i32 %722, %721
  %724 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 28
  store i32 %723, ptr %724, align 8
  br label %725

725:                                              ; preds = %714, %102
  %726 = phi i32 [ %103, %102 ], [ 0, %714 ]
  ret i32 %726
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_use_bo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vc4_check_tex_size(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155374344, i64 2155374844, i64 2155374381, i64 2155374437, i64 2155374471, i64 2155374495, i64 2155374536, i64 2155374557, i64 2155374585, i64 2155374619}
