; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_drv = type { i8, i8, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dcb_i2c_entry = type { i32, i8, i8, i8, i8 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.127, i8 }
%union.anon.127 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_i2c_func = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.nvkm_i2c_pad_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_ntfy_rep = type { i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_i2c_ntfy_req = type { i8, i8 }

@nvkm_i2c = internal constant %struct.nvkm_subdev_func { ptr @nvkm_i2c_dtor, ptr @nvkm_i2c_preinit, ptr null, ptr null, ptr @nvkm_i2c_init, ptr @nvkm_i2c_fini, ptr @nvkm_i2c_intr }, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s: ccb %02x: type %02x drive %02x sense %02x share %02x auxch %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: ccb %02x pad, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: ccb %02x bus, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: ccb %02x aux, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: ccb %02x was ignored\0A\00", align 1
@nvkm_i2c_drv = internal unnamed_addr constant [3 x %struct.nvkm_i2c_drv] [%struct.nvkm_i2c_drv { i8 13, i8 57, ptr @anx9805_pad_new }, %struct.nvkm_i2c_drv { i8 14, i8 59, ptr @anx9805_pad_new }, %struct.nvkm_i2c_drv zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: dcb %02x no bus\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: dcb %02x drv %02x unknown\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: dcb %02x pad, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s: dcb %02x aux, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s: dcb %02x bus, %d\0A\00", align 1
@nvkm_i2c_intr_func = internal constant %struct.nvkm_event_func { ptr @nvkm_i2c_intr_ctor, ptr null, ptr @nvkm_i2c_intr_init, ptr @nvkm_i2c_intr_fini }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/base.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_i2c_bus_find(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq i32 %1, -1
  %12 = icmp ugt i32 %1, -3
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  %14 = call zeroext i16 @dcb_i2c_table(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %15 = icmp ne i16 %14, 0
  %16 = load i8, ptr %3, align 1
  %17 = icmp ugt i8 %16, 47
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = zext i16 %14 to i32
  %21 = add nuw nsw i32 %20, 4
  %22 = call zeroext i8 @nvbios_rd08(ptr noundef %10, i32 noundef %21) #7
  %23 = and i8 %22, 15
  %24 = lshr i8 %22, 4
  %25 = select i1 %11, i8 %23, i8 %24
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi i32 [ %26, %19 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ %28, %27 ], [ %1, %2 ]
  %31 = getelementptr inbounds %struct.nvkm_i2c, ptr %0, i32 0, i32 3
  br label %32

32:                                               ; preds = %36, %29
  %33 = phi ptr [ %31, %29 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 -24
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, %30
  br i1 %39, label %40, label %32

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %34, i32 -32
  br label %42

42:                                               ; preds = %40, %32
  %43 = phi ptr [ %41, %40 ], [ null, %32 ]
  ret ptr %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_i2c_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_i2c_aux_find(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.nvkm_i2c, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -24
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -32
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.dcb_i2c_entry, align 8
  %7 = alloca %struct.dcb_output, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %17 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 0, ptr %9, align 1, !annotation !8
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 112) #8
  store ptr %19, ptr %4, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %317, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_i2c, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %22) #7
  store ptr %0, ptr %19, align 8
  %23 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 2
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 3
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 3, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 4
  store volatile ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 4, i32 1
  store ptr %27, ptr %28, align 4
  %29 = call i32 @dcb_i2c_parse(ptr noundef %17, i8 noundef zeroext 0, ptr noundef nonnull %6) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1, i32 5
  %33 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1, i32 1
  %34 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1, i32 4
  %35 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %6, i32 0, i32 2
  %37 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %6, i32 0, i32 3
  %38 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %6, i32 0, i32 4
  %39 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %0, i32 0, i32 1
  br label %51

40:                                               ; preds = %189, %21
  %41 = call zeroext i16 @dcb_outp_parse(ptr noundef %17, i8 noundef zeroext 0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #7
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %313, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 8
  %45 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 4
  %46 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1, i32 1
  %47 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 12
  %48 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1, i32 5
  %49 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 1, i32 4
  %50 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 3
  br label %194

51:                                               ; preds = %189, %31
  %52 = phi i32 [ 0, %31 ], [ %190, %189 ]
  %53 = phi i32 [ -1, %31 ], [ %52, %189 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store ptr null, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store ptr null, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  store ptr null, ptr %12, align 4
  %54 = load i32, ptr %32, align 4
  %55 = icmp ugt i32 %54, 3
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load ptr, ptr %33, align 8
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr %6, align 8
  %61 = load i8, ptr %35, align 4
  %62 = zext i8 %61 to i32
  %63 = load i8, ptr %36, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, ptr %37, align 2
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr %38, align 1
  %68 = zext i8 %67 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str, ptr noundef %34, i32 noundef %52, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #9
  br label %69

69:                                               ; preds = %56, %51
  %70 = load i8, ptr %37, align 2
  %71 = zext i8 %70 to i32
  %72 = icmp eq i8 %70, -1
  br i1 %72, label %88, label %73

73:                                               ; preds = %78, %69
  %74 = phi ptr [ %75, %78 ], [ %23, %69 ]
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %23
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store ptr null, ptr %10, align 4
  br label %85

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %75, i32 -28
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %71
  br i1 %81, label %82, label %73

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %75, i32 -36
  store ptr %83, ptr %10, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %82, %77
  %86 = load ptr, ptr %39, align 4
  %87 = call i32 %86(ptr noundef nonnull %19, i32 noundef %71, ptr noundef nonnull %10) #7
  br label %92

88:                                               ; preds = %69
  %89 = load ptr, ptr %0, align 4
  %90 = add i32 %53, 257
  %91 = call i32 %89(ptr noundef nonnull %19, i32 noundef %90, ptr noundef nonnull %10) #7
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i32 [ %91, %88 ], [ %87, %85 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load ptr, ptr %10, align 4
  br label %105

97:                                               ; preds = %92
  %98 = load i32, ptr %32, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %33, align 8
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.1, ptr noundef %34, i32 noundef %52, i32 noundef %93) #9
  br label %104

104:                                              ; preds = %100, %97
  call void @nvkm_i2c_pad_del(ptr noundef nonnull %10) #7
  br label %189

105:                                              ; preds = %95, %82
  %106 = phi ptr [ %96, %95 ], [ %83, %82 ]
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = icmp ne ptr %108, null
  %110 = load i32, ptr %6, align 8
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i8, ptr %35, align 4
  %115 = load i8, ptr %36, align 1
  %116 = call i32 %108(ptr noundef %106, i32 noundef %52, i8 noundef zeroext %114, i8 noundef zeroext %115, ptr noundef nonnull %11) #7
  br label %134

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %107, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %145, label %121

121:                                              ; preds = %117
  %122 = and i32 %110, -2
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i8, ptr %35, align 4
  br label %131

126:                                              ; preds = %121
  %127 = icmp eq i32 %110, 128
  %128 = load i8, ptr %35, align 4
  %129 = icmp ne i8 %128, -1
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %145

131:                                              ; preds = %126, %124
  %132 = phi i8 [ %125, %124 ], [ %128, %126 ]
  %133 = call i32 %119(ptr noundef %106, i32 noundef %52, i8 noundef zeroext %132, ptr noundef nonnull %11) #7
  br label %134

134:                                              ; preds = %131, %113
  %135 = phi i32 [ %116, %113 ], [ %133, %131 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %32, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %33, align 8
  %142 = getelementptr inbounds %struct.nvkm_device, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.2, ptr noundef %34, i32 noundef %52, i32 noundef %135) #9
  br label %144

144:                                              ; preds = %140, %137
  call void @nvkm_i2c_bus_del(ptr noundef nonnull %11) #7
  br label %145

145:                                              ; preds = %144, %134, %126, %117
  %146 = load ptr, ptr %10, align 4
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %173, label %151

151:                                              ; preds = %145
  %152 = load i32, ptr %6, align 8
  %153 = icmp eq i32 %152, 6
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8, ptr %38, align 1
  br label %161

156:                                              ; preds = %151
  %157 = icmp eq i32 %152, 128
  %158 = load i8, ptr %38, align 1
  %159 = icmp ne i8 %158, -1
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %173

161:                                              ; preds = %156, %154
  %162 = phi i8 [ %155, %154 ], [ %158, %156 ]
  %163 = call i32 %149(ptr noundef %146, i32 noundef %52, i8 noundef zeroext %162, ptr noundef nonnull %12) #7
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %32, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %33, align 8
  %170 = getelementptr inbounds %struct.nvkm_device, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.3, ptr noundef %34, i32 noundef %52, i32 noundef %163) #9
  br label %172

172:                                              ; preds = %168, %165
  call void @nvkm_i2c_aux_del(ptr noundef nonnull %12) #7
  br label %173

173:                                              ; preds = %172, %161, %156, %145
  %174 = load i32, ptr %6, align 8
  %175 = icmp eq i32 %174, 255
  %176 = load ptr, ptr %11, align 4
  %177 = icmp ne ptr %176, null
  %178 = select i1 %175, i1 true, i1 %177
  %179 = load ptr, ptr %12, align 4
  %180 = icmp ne ptr %179, null
  %181 = select i1 %178, i1 true, i1 %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %173
  %183 = load i32, ptr %32, align 4
  %184 = icmp ugt i32 %183, 1
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load ptr, ptr %33, align 8
  %187 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %188, ptr noundef nonnull @.str.4, ptr noundef %34, i32 noundef %52) #9
  br label %189

189:                                              ; preds = %185, %182, %173, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  %190 = add i32 %52, 1
  %191 = trunc i32 %190 to i8
  %192 = call i32 @dcb_i2c_parse(ptr noundef %17, i8 noundef zeroext %191, ptr noundef nonnull %6) #7
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %51, label %40

194:                                              ; preds = %308, %43
  %195 = phi i32 [ 0, %43 ], [ %309, %308 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7
  store ptr null, ptr %13, align 4, !annotation !8
  %196 = load i8, ptr %44, align 4
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %308, label %198

198:                                              ; preds = %194
  %199 = load i8, ptr %45, align 4
  %200 = zext i8 %199 to i32
  %201 = load ptr, ptr %46, align 8
  br label %202

202:                                              ; preds = %206, %198
  %203 = phi ptr [ %25, %198 ], [ %204, %206 ]
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, %25
  br i1 %205, label %215, label %206

206:                                              ; preds = %202
  %207 = getelementptr i8, ptr %204, i32 -24
  %208 = load i32, ptr %207, align 8
  %209 = icmp eq i32 %208, %200
  br i1 %209, label %210, label %202

210:                                              ; preds = %206
  %211 = getelementptr i8, ptr %204, i32 -32
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = load i8, ptr %47, align 4
  switch i8 %214, label %221 [
    i8 13, label %229
    i8 14, label %228
  ]

215:                                              ; preds = %210, %202
  %216 = load i32, ptr %48, align 4
  %217 = icmp ugt i32 %216, 3
  br i1 %217, label %218, label %308

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.nvkm_device, ptr %201, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %220, ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %195) #9
  br label %308

221:                                              ; preds = %213
  %222 = load i32, ptr %48, align 4
  %223 = icmp ugt i32 %222, 3
  br i1 %223, label %224, label %308

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.nvkm_device, ptr %201, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8
  %227 = zext i8 %214 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %226, ptr noundef nonnull @.str.6, ptr noundef %49, i32 noundef %195, i32 noundef %227) #9
  br label %308

228:                                              ; preds = %213
  br label %229

229:                                              ; preds = %228, %213
  %230 = phi ptr [ @nvkm_i2c_drv, %213 ], [ getelementptr inbounds ([3 x %struct.nvkm_i2c_drv], ptr @nvkm_i2c_drv, i32 0, i32 1), %228 ]
  %231 = zext i8 %214 to i32
  %232 = or i32 %231, 512
  br label %233

233:                                              ; preds = %237, %229
  %234 = phi ptr [ %23, %229 ], [ %235, %237 ]
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, %23
  br i1 %236, label %244, label %237

237:                                              ; preds = %233
  %238 = getelementptr i8, ptr %235, i32 -28
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, %232
  br i1 %240, label %241, label %233

241:                                              ; preds = %237
  %242 = getelementptr i8, ptr %235, i32 -36
  store ptr %242, ptr %13, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %259

244:                                              ; preds = %241, %233
  %245 = getelementptr inbounds %struct.nvkm_i2c_drv, ptr %230, i32 0, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = call i32 @anx9805_pad_new(ptr noundef nonnull %211, i32 noundef %232, i8 noundef zeroext %246, ptr noundef nonnull %13) #7
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load ptr, ptr %13, align 4
  br label %259

251:                                              ; preds = %244
  %252 = load i32, ptr %48, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %46, align 8
  %256 = getelementptr inbounds %struct.nvkm_device, ptr %255, i32 0, i32 2
  %257 = load ptr, ptr %256, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.7, ptr noundef %49, i32 noundef %195, i32 noundef %247) #9
  br label %258

258:                                              ; preds = %254, %251
  call void @nvkm_i2c_pad_del(ptr noundef nonnull %13) #7
  br label %308

259:                                              ; preds = %249, %241
  %260 = phi ptr [ %250, %249 ], [ %242, %241 ]
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %261, i32 0, i32 2
  %263 = load ptr, ptr %262, align 4
  %264 = icmp ne ptr %263, null
  %265 = load i32, ptr %50, align 4
  %266 = icmp eq i32 %265, 6
  %267 = select i1 %264, i1 %266, i1 false
  br i1 %267, label %268, label %286

268:                                              ; preds = %259
  %269 = load i8, ptr %47, align 4
  %270 = zext i8 %269 to i32
  %271 = or i32 %270, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  store ptr null, ptr %14, align 4
  %272 = load ptr, ptr %260, align 4
  %273 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 4
  %275 = call i32 %274(ptr noundef %260, i32 noundef %271, i8 noundef zeroext 0, ptr noundef nonnull %14) #7
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %268
  %278 = load i32, ptr %48, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %46, align 8
  %282 = getelementptr inbounds %struct.nvkm_device, ptr %281, i32 0, i32 2
  %283 = load ptr, ptr %282, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %283, ptr noundef nonnull @.str.8, ptr noundef %49, i32 noundef %195, i32 noundef %275) #9
  br label %284

284:                                              ; preds = %280, %277
  call void @nvkm_i2c_aux_del(ptr noundef nonnull %14) #7
  br label %285

285:                                              ; preds = %284, %268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  br label %308

286:                                              ; preds = %259
  %287 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %261, i32 0, i32 1
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %308, label %290

290:                                              ; preds = %286
  %291 = load i8, ptr %47, align 4
  %292 = zext i8 %291 to i32
  %293 = or i32 %292, 256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  store ptr null, ptr %15, align 4
  %294 = load ptr, ptr %260, align 4
  %295 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %294, i32 0, i32 1
  %296 = load ptr, ptr %295, align 4
  %297 = call i32 %296(ptr noundef %260, i32 noundef %293, i8 noundef zeroext 0, ptr noundef nonnull %15) #7
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %290
  %300 = load i32, ptr %48, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %299
  %303 = load ptr, ptr %46, align 8
  %304 = getelementptr inbounds %struct.nvkm_device, ptr %303, i32 0, i32 2
  %305 = load ptr, ptr %304, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %305, ptr noundef nonnull @.str.9, ptr noundef %49, i32 noundef %195, i32 noundef %297) #9
  br label %306

306:                                              ; preds = %302, %299
  call void @nvkm_i2c_bus_del(ptr noundef nonnull %15) #7
  br label %307

307:                                              ; preds = %306, %290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  br label %308

308:                                              ; preds = %307, %286, %285, %258, %224, %221, %218, %215, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7
  %309 = add i32 %195, 1
  %310 = trunc i32 %309 to i8
  %311 = call zeroext i16 @dcb_outp_parse(ptr noundef %17, i8 noundef zeroext %310, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #7
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %313, label %194

313:                                              ; preds = %308, %40
  %314 = phi i32 [ 0, %40 ], [ %309, %308 ]
  %315 = getelementptr inbounds %struct.nvkm_i2c, ptr %19, i32 0, i32 5
  %316 = call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_i2c_intr_func, i32 noundef 4, i32 noundef %314, ptr noundef %315) #7
  br label %317

317:                                              ; preds = %313, %5
  %318 = phi i32 [ %316, %313 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret i32 %318
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_i2c_parse(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_bus_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_outp_parse(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_i2c_dtor(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %0, i32 76
  tail call void @nvkm_event_fini(ptr noundef %5) #7
  %6 = getelementptr i8, ptr %0, i32 68
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %13

9:                                                ; preds = %13, %1
  %10 = getelementptr i8, ptr %0, i32 60
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %18, label %22

13:                                               ; preds = %13, %1
  %14 = phi ptr [ %16, %13 ], [ %7, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %15 = getelementptr i8, ptr %14, i32 -32
  store ptr %15, ptr %2, align 4
  call void @nvkm_i2c_aux_del(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %16 = load volatile ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, %6
  br i1 %17, label %9, label %13

18:                                               ; preds = %22, %9
  %19 = getelementptr i8, ptr %0, i32 52
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %32, label %27

22:                                               ; preds = %22, %9
  %23 = phi ptr [ %25, %22 ], [ %11, %9 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %24 = getelementptr i8, ptr %23, i32 -32
  store ptr %24, ptr %3, align 4
  call void @nvkm_i2c_bus_del(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %25 = load volatile ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, %10
  br i1 %26, label %18, label %22

27:                                               ; preds = %27, %18
  %28 = phi ptr [ %30, %27 ], [ %20, %18 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %29 = getelementptr i8, ptr %28, i32 -36
  store ptr %29, ptr %4, align 4
  call void @nvkm_i2c_pad_del(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %30 = load volatile ptr, ptr %19, align 4
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %32, label %27

32:                                               ; preds = %27, %18
  %33 = getelementptr i8, ptr %0, i32 -4
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_preinit(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -36
  tail call void @nvkm_i2c_pad_init(ptr noundef %7) #7
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  %11 = getelementptr i8, ptr %0, i32 60
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -32
  tail call void @nvkm_i2c_bus_init(ptr noundef %16) #7
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_init(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -36
  tail call void @nvkm_i2c_pad_init(ptr noundef %7) #7
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  %11 = getelementptr i8, ptr %0, i32 60
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -32
  tail call void @nvkm_i2c_bus_init(ptr noundef %16) #7
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %10
  %20 = getelementptr i8, ptr %0, i32 68
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 -32
  tail call void @nvkm_i2c_aux_init(ptr noundef %25) #7
  %26 = load ptr, ptr %24, align 4
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %28, label %23

28:                                               ; preds = %23, %19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %5 = getelementptr i8, ptr %0, i32 68
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %11, %8 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -32
  tail call void @nvkm_i2c_aux_fini(ptr noundef %10) #7
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %2
  %14 = getelementptr i8, ptr %0, i32 60
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 -32
  tail call void @nvkm_i2c_bus_fini(ptr noundef %19) #7
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %13
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  store i32 %27, ptr %3, align 4
  %28 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %23, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %23, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %4, i32 noundef 15, i32 noundef %27, i32 noundef 0) #7
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  br label %37

37:                                               ; preds = %31, %22
  %38 = getelementptr i8, ptr %0, i32 52
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %46, label %41

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %44, %41 ], [ %39, %37 ]
  %43 = getelementptr i8, ptr %42, i32 -36
  call void @nvkm_i2c_pad_fini(ptr noundef %43) #7
  %44 = load ptr, ptr %42, align 4
  %45 = icmp eq ptr %44, %38
  br i1 %45, label %46, label %41

46:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_i2c_intr(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_ntfy_rep, align 1
  %7 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %1
  call void %10(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %13 = load i32, ptr %2, align 4
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  %18 = load i32, ptr %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  %21 = load i32, ptr %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %0, i32 68
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %67, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 76
  br label %30

30:                                               ; preds = %62, %28
  %31 = phi i32 [ %21, %28 ], [ %66, %62 ]
  %32 = phi i32 [ %18, %28 ], [ %65, %62 ]
  %33 = phi i32 [ %15, %28 ], [ %64, %62 ]
  %34 = phi i32 [ %13, %28 ], [ %63, %62 ]
  %35 = phi ptr [ %26, %28 ], [ %60, %62 ]
  %36 = getelementptr i8, ptr %35, i32 668
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %34
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = and i32 %33, %37
  %42 = icmp eq i32 %41, 0
  %43 = or i32 %40, 2
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = and i32 %32, %37
  %46 = icmp eq i32 %45, 0
  %47 = or i32 %44, 4
  %48 = select i1 %46, i32 %44, i32 %47
  %49 = and i32 %31, %37
  %50 = icmp eq i32 %49, 0
  %51 = or i32 %48, 8
  %52 = select i1 %50, i32 %48, i32 %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  %55 = trunc i32 %52 to i8
  store i8 %55, ptr %6, align 1
  %56 = and i32 %52, 255
  %57 = getelementptr i8, ptr %35, i32 -24
  %58 = load i32, ptr %57, align 8
  call void @nvkm_event_send(ptr noundef %29, i32 noundef %56, i32 noundef %58, ptr noundef nonnull %6, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  br label %59

59:                                               ; preds = %54, %30
  %60 = load ptr, ptr %35, align 4
  %61 = icmp eq ptr %60, %25
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %2, align 4
  %64 = load i32, ptr %3, align 4
  %65 = load i32, ptr %4, align 4
  %66 = load i32, ptr %5, align 4
  br label %30

67:                                               ; preds = %59, %24, %12, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_bus_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_bus_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anx9805_pad_new(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_intr_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 112, i32 noundef 9, ptr noundef null) #7
  br label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 1, ptr %8, align 4
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_i2c_ntfy_req, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %6
  %17 = phi i32 [ -22, %6 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_i2c_intr_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -80
  %5 = getelementptr i8, ptr %0, i32 -8
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -24
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -32
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %8, i32 668
  %22 = load i32, ptr %21, align 4
  tail call void %20(ptr noundef %4, i32 noundef %1, i32 noundef %22, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %17, %14, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_i2c_intr_fini(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -80
  %5 = getelementptr i8, ptr %0, i32 -8
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -24
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -32
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %8, i32 668
  %22 = load i32, ptr %21, align 4
  tail call void %20(ptr noundef %4, i32 noundef %1, i32 noundef %22, i32 noundef 0) #7
  br label %23

23:                                               ; preds = %17, %14, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
