; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv50_disp_user = type { %struct.nvkm_sclass, ptr }
%struct.nv50_disp_root = type { ptr, ptr, %struct.nvkm_object }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nv50_disp_mthd_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nv50_disp_mthd_v1 = type { i8, i8, i16, i16, [2 x i8] }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.123, %struct.anon.123, %struct.anon.123, %struct.anon.124, %struct.anon.125, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.121 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.120 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.121 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.123 = type { i32, i32 }
%struct.anon.124 = type { i32, i32, i32 }
%struct.anon.125 = type { i32, i32, [3 x i8] }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.145, i8 }
%union.anon.145 = type { %struct.anon.149 }
%struct.anon.149 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.143, %struct.anon.144 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.143 = type { i8, i8, i8, i8 }
%struct.anon.144 = type { i8 }
%struct.nvkm_ior_func = type { %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142 }
%struct.anon.139 = type { ptr, ptr }
%struct.anon.140 = type { ptr, ptr }
%struct.anon.141 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr }
%struct.nvkm_dp = type { %union.anon.157, %struct.nvbios_dpout, i8, ptr, %struct.nvkm_notify, i8, [16 x i8], %struct.mutex, %struct.anon.158 }
%union.anon.157 = type { %struct.nvkm_outp }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.anon.158 = type { %struct.atomic_t, i8 }
%struct.nv50_disp_root_func = type { i32, [0 x %struct.nv50_disp_user] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }

@nv50_disp_root_ = internal constant %struct.nvkm_object_func { ptr @nv50_disp_root_dtor_, ptr null, ptr null, ptr @nv50_disp_root_mthd_, ptr @nvkm_disp_ntfy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_disp_root_child_get_ }, align 4
@nv50_disp_root_oclass = dso_local local_unnamed_addr constant %struct.nvkm_disp_oclass { ptr @nv50_disp_root_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20592, ptr null, ptr null } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [51 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd vers %d mthd %02x head %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd vers %d mthd %02x type %04x mask %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hda eld size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hda eld vers %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hdmi ctrl size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hdmi ctrl vers %d state %d max_ac_packet %d rekey %d scdc %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor lvds script size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor lvds script vers %d name %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst link size %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst link vers %d state %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst vcpi size %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [91 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst vcpi vers %d slot %02x/%02x pbn %04x/%04x\0A\00", align 1
@nv50_disp_root = internal constant { i32, [6 x %struct.nv50_disp_user] } { i32 0, [6 x %struct.nv50_disp_user] [%struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20602, ptr null, ptr null }, ptr @nv50_disp_curs_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20603, ptr null, ptr null }, ptr @nv50_disp_oimm_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20604, ptr null, ptr null }, ptr @nv50_disp_base_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20605, ptr null, ptr null }, ptr @nv50_disp_core_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20606, ptr null, ptr null }, ptr @nv50_disp_ovly_new }, %struct.nv50_disp_user zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_root_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 80) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %1, i32 -4
  %12 = getelementptr inbounds %struct.nv50_disp_root, ptr %8, i32 0, i32 2
  store ptr %12, ptr %5, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_disp_root_, ptr noundef %2, ptr noundef %12) #9
  store ptr %0, ptr %8, align 8
  %13 = getelementptr inbounds %struct.nv50_disp_root, ptr %8, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %10 ], [ -12, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_root_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 80) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = getelementptr inbounds %struct.nv50_disp_root, ptr %7, i32 0, i32 2
  store ptr %11, ptr %4, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_disp_root_, ptr noundef %1, ptr noundef %11) #9
  store ptr @nv50_disp_root, ptr %7, align 8
  %12 = getelementptr inbounds %struct.nv50_disp_root, ptr %7, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nv50_disp_root_dtor_(ptr noundef readnone %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_root_mthd_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %469

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.nvkm_client, ptr %10, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %3) #10
  br label %21

21:                                               ; preds = %14, %8
  %22 = icmp ugt i32 %3, 7
  br i1 %22, label %23, label %469

23:                                               ; preds = %21
  %24 = load i8, ptr %2, align 2
  switch i8 %24, label %469 [
    i8 0, label %25
    i8 1, label %48
  ]

25:                                               ; preds = %23
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %2, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %2, i32 0, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 0, i32 noundef %38, i32 noundef %41) #10
  br label %43

43:                                               ; preds = %30, %25
  %44 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %2, i32 0, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  br label %81

48:                                               ; preds = %23
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.nvkm_client, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 8
  %52 = icmp ugt i32 %51, 4
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.nvkm_client, ptr %49, i32 0, i32 1
  %55 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 2
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 3
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef 1, i32 noundef %61, i32 noundef %64, i32 noundef %67) #10
  br label %69

69:                                               ; preds = %53, %48
  %70 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 1
  %71 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 2
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 3
  %74 = load i16, ptr %73, align 2
  %75 = lshr i16 %74, 8
  %76 = and i16 %75, 15
  %77 = tail call i16 @llvm.cttz.i16(i16 %76, i1 true), !range !8
  %78 = zext i16 %77 to i32
  %79 = icmp eq i16 %76, 0
  %80 = select i1 %79, i32 -1, i32 %78
  br label %81

81:                                               ; preds = %69, %43
  %82 = phi i32 [ %80, %69 ], [ %47, %43 ]
  %83 = phi i16 [ %74, %69 ], [ 0, %43 ]
  %84 = phi i16 [ %72, %69 ], [ 0, %43 ]
  %85 = phi ptr [ %70, %69 ], [ %44, %43 ]
  %86 = getelementptr i8, ptr %2, i32 8
  %87 = add i32 %3, -8
  %88 = load i8, ptr %85, align 1
  %89 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 1
  %90 = tail call ptr @nvkm_head_find(ptr noundef %89, i32 noundef %82) #9
  %91 = icmp eq ptr %90, null
  br i1 %91, label %469, label %92

92:                                               ; preds = %81
  %93 = icmp eq i16 %83, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 1, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %469, label %98

98:                                               ; preds = %108, %94
  %99 = phi ptr [ %109, %108 ], [ %96, %94 ]
  %100 = getelementptr i8, ptr %99, i32 -40
  %101 = load i16, ptr %100, align 4
  %102 = icmp eq i16 %101, %84
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr i8, ptr %99, i32 -38
  %105 = load i16, ptr %104, align 2
  %106 = and i16 %105, %83
  %107 = icmp eq i16 %106, %83
  br i1 %107, label %111, label %108

108:                                              ; preds = %103, %98
  %109 = load ptr, ptr %99, align 4
  %110 = icmp eq ptr %109, %95
  br i1 %110, label %469, label %98

111:                                              ; preds = %103
  %112 = getelementptr i8, ptr %99, i32 -56
  %113 = icmp eq ptr %112, null
  br i1 %113, label %469, label %114

114:                                              ; preds = %111, %92
  %115 = phi ptr [ %112, %111 ], [ null, %92 ]
  %116 = icmp eq i8 %88, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = tail call i32 @nvkm_head_mthd_scanoutpos(ptr noundef %0, ptr noundef nonnull %90, ptr noundef %86, i32 noundef %87) #9
  br label %469

119:                                              ; preds = %114
  %120 = icmp eq ptr %115, null
  %121 = select i1 %120, i8 0, i8 %88
  switch i8 %121, label %469 [
    i8 1, label %122
    i8 2, label %149
    i8 17, label %150
    i8 33, label %176
    i8 34, label %249
    i8 35, label %331
    i8 37, label %370
    i8 38, label %410
  ]

122:                                              ; preds = %119
  %123 = icmp ugt i32 %87, 7
  br i1 %123, label %124, label %469

124:                                              ; preds = %122
  %125 = load i8, ptr %86, align 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %469

127:                                              ; preds = %124
  %128 = icmp eq i32 %87, 8
  br i1 %128, label %129, label %469

129:                                              ; preds = %127
  %130 = getelementptr i8, ptr %2, i32 11
  %131 = load i8, ptr %130, align 1
  %132 = icmp ne i8 %131, 0
  %133 = tail call i32 @nvkm_outp_acquire(ptr noundef %115, i8 noundef zeroext 2, i1 noundef zeroext %132) #9
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %469

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 9
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nvkm_ior, ptr %137, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = trunc i32 %139 to i8
  %141 = getelementptr i8, ptr %2, i32 9
  store i8 %140, ptr %141, align 1
  %142 = load ptr, ptr %136, align 4
  %143 = getelementptr inbounds %struct.nvkm_ior, ptr %142, i32 0, i32 8, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = lshr i32 %144, 7
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 3
  %148 = getelementptr i8, ptr %2, i32 10
  store i8 %147, ptr %148, align 1
  br label %469

149:                                              ; preds = %119
  tail call void @nvkm_outp_release(ptr noundef %115, i8 noundef zeroext 2) #9
  br label %469

150:                                              ; preds = %119
  %151 = icmp ugt i32 %87, 7
  br i1 %151, label %152, label %469

152:                                              ; preds = %150
  %153 = load i8, ptr %86, align 4
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %469

155:                                              ; preds = %152
  %156 = icmp eq i32 %87, 8
  br i1 %156, label %157, label %469

157:                                              ; preds = %155
  %158 = getelementptr i8, ptr %2, i32 12
  %159 = load i32, ptr %158, align 4
  %160 = icmp ult i32 %159, 1048576
  br i1 %160, label %161, label %469

161:                                              ; preds = %157
  %162 = tail call i32 @nvkm_outp_acquire(ptr noundef %115, i8 noundef zeroext 1, i1 noundef zeroext false) #9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %469

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 9
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.nvkm_ior_func, ptr %167, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = load i32, ptr %158, align 4
  %171 = tail call i32 %169(ptr noundef %166, i32 noundef %170) #9
  tail call void @nvkm_outp_release(ptr noundef %115, i8 noundef zeroext 1) #9
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %469, label %173

173:                                              ; preds = %164
  %174 = trunc i32 %171 to i8
  %175 = getelementptr i8, ptr %2, i32 9
  store i8 %174, ptr %175, align 1
  br label %469

176:                                              ; preds = %119
  %177 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 9
  %178 = load ptr, ptr %177, align 4
  %179 = load ptr, ptr %9, align 4
  %180 = getelementptr inbounds %struct.nvkm_client, ptr %179, i32 0, i32 3
  %181 = load i32, ptr %180, align 8
  %182 = icmp ugt i32 %181, 4
  br i1 %182, label %183, label %190

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.nvkm_client, ptr %179, i32 0, i32 1
  %185 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %188 = load i32, ptr %187, align 4
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %184, i32 noundef %186, i32 noundef %188, i32 noundef %87) #10
  br label %190

190:                                              ; preds = %183, %176
  %191 = icmp ugt i32 %87, 7
  br i1 %191, label %192, label %469

192:                                              ; preds = %190
  %193 = load i8, ptr %86, align 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %469

195:                                              ; preds = %192
  %196 = getelementptr i8, ptr %2, i32 16
  %197 = add i32 %3, -16
  %198 = load ptr, ptr %9, align 4
  %199 = getelementptr inbounds %struct.nvkm_client, ptr %198, i32 0, i32 3
  %200 = load i32, ptr %199, align 8
  %201 = icmp ugt i32 %200, 4
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.nvkm_client, ptr %198, i32 0, i32 1
  %204 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %205 = load i32, ptr %204, align 8
  %206 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %203, i32 noundef %205, i32 noundef %207, i32 noundef 0) #10
  br label %209

209:                                              ; preds = %202, %195
  %210 = icmp ugt i32 %197, 96
  br i1 %210, label %469, label %211

211:                                              ; preds = %209
  %212 = load ptr, ptr %178, align 4
  %213 = getelementptr inbounds %struct.nvkm_ior_func, ptr %212, i32 0, i32 9
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %469, label %216

216:                                              ; preds = %211
  %217 = icmp eq i32 %197, 0
  br i1 %217, label %237, label %218

218:                                              ; preds = %216
  %219 = load i8, ptr %196, align 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %237, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 3, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 6
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.nvkm_ior_func, ptr %212, i32 0, i32 8, i32 6
  %227 = load ptr, ptr %226, align 4
  tail call void %227(ptr noundef %178, i32 noundef %82, i1 noundef zeroext true) #9
  %228 = load ptr, ptr %178, align 4
  %229 = getelementptr inbounds %struct.nvkm_ior_func, ptr %228, i32 0, i32 9
  %230 = load ptr, ptr %229, align 4
  br label %231

231:                                              ; preds = %225, %221
  %232 = phi ptr [ %230, %225 ], [ %214, %221 ]
  tail call void %232(ptr noundef %178, i32 noundef %82, i1 noundef zeroext true) #9
  %233 = load ptr, ptr %178, align 4
  %234 = getelementptr inbounds %struct.nvkm_ior_func, ptr %233, i32 0, i32 9, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = trunc i32 %197 to i8
  tail call void %235(ptr noundef %178, i32 noundef %82, ptr noundef %196, i8 noundef zeroext %236) #9
  br label %469

237:                                              ; preds = %218, %216
  %238 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 3, i32 3
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 6
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.nvkm_ior_func, ptr %212, i32 0, i32 8, i32 6
  %243 = load ptr, ptr %242, align 4
  tail call void %243(ptr noundef %178, i32 noundef %82, i1 noundef zeroext false) #9
  %244 = load ptr, ptr %178, align 4
  %245 = getelementptr inbounds %struct.nvkm_ior_func, ptr %244, i32 0, i32 9
  %246 = load ptr, ptr %245, align 4
  br label %247

247:                                              ; preds = %241, %237
  %248 = phi ptr [ %246, %241 ], [ %214, %237 ]
  tail call void %248(ptr noundef %178, i32 noundef %82, i1 noundef zeroext false) #9
  br label %469

249:                                              ; preds = %119
  %250 = load ptr, ptr %9, align 4
  %251 = getelementptr inbounds %struct.nvkm_client, ptr %250, i32 0, i32 3
  %252 = load i32, ptr %251, align 8
  %253 = icmp ugt i32 %252, 4
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.nvkm_client, ptr %250, i32 0, i32 1
  %256 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %257 = load i32, ptr %256, align 8
  %258 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %259 = load i32, ptr %258, align 4
  %260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %255, i32 noundef %257, i32 noundef %259, i32 noundef %87) #10
  br label %261

261:                                              ; preds = %254, %249
  %262 = icmp ugt i32 %87, 7
  br i1 %262, label %263, label %469

263:                                              ; preds = %261
  %264 = load i8, ptr %86, align 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %469

266:                                              ; preds = %263
  %267 = getelementptr i8, ptr %2, i32 16
  %268 = add i32 %3, -16
  %269 = load ptr, ptr %9, align 4
  %270 = getelementptr inbounds %struct.nvkm_client, ptr %269, i32 0, i32 3
  %271 = load i32, ptr %270, align 8
  %272 = icmp ugt i32 %271, 4
  br i1 %272, label %273, label %292

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.nvkm_client, ptr %269, i32 0, i32 1
  %275 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %276 = load i32, ptr %275, align 8
  %277 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr i8, ptr %2, i32 9
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = getelementptr i8, ptr %2, i32 10
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i32
  %285 = getelementptr i8, ptr %2, i32 11
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = getelementptr i8, ptr %2, i32 14
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i32
  %291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %274, i32 noundef %276, i32 noundef %278, i32 noundef 0, i32 noundef %281, i32 noundef %284, i32 noundef %287, i32 noundef %290) #10
  br label %292

292:                                              ; preds = %273, %266
  %293 = getelementptr i8, ptr %2, i32 10
  %294 = load i8, ptr %293, align 1
  %295 = icmp ugt i8 %294, 31
  br i1 %295, label %469, label %296

296:                                              ; preds = %292
  %297 = getelementptr i8, ptr %2, i32 11
  %298 = load i8, ptr %297, align 1
  %299 = icmp slt i8 %298, 0
  br i1 %299, label %469, label %300

300:                                              ; preds = %296
  %301 = getelementptr i8, ptr %2, i32 12
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = getelementptr i8, ptr %2, i32 13
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i32
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp ugt i32 %307, %268
  br i1 %308, label %469, label %309

309:                                              ; preds = %300
  %310 = icmp ult i32 %307, %268
  br i1 %310, label %469, label %311

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 9
  %313 = load ptr, ptr %312, align 4
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.nvkm_ior_func, ptr %314, i32 0, i32 7
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %469, label %318

318:                                              ; preds = %311
  %319 = getelementptr i8, ptr %267, i32 %303
  %320 = getelementptr i8, ptr %2, i32 9
  %321 = load i8, ptr %320, align 1
  %322 = icmp ne i8 %321, 0
  tail call void %316(ptr noundef %313, i32 noundef %82, i1 noundef zeroext %322, i8 noundef zeroext %294, i8 noundef zeroext %298, ptr noundef %267, i8 noundef zeroext %302, ptr noundef %319, i8 noundef zeroext %305) #9
  %323 = load ptr, ptr %312, align 4
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.nvkm_ior_func, ptr %324, i32 0, i32 7, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %469, label %328

328:                                              ; preds = %318
  %329 = getelementptr i8, ptr %2, i32 14
  %330 = load i8, ptr %329, align 1
  tail call void %326(ptr noundef %323, i8 noundef zeroext %330) #9
  br label %469

331:                                              ; preds = %119
  %332 = load ptr, ptr %9, align 4
  %333 = getelementptr inbounds %struct.nvkm_client, ptr %332, i32 0, i32 3
  %334 = load i32, ptr %333, align 8
  %335 = icmp ugt i32 %334, 4
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.nvkm_client, ptr %332, i32 0, i32 1
  %338 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %339 = load i32, ptr %338, align 8
  %340 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %341 = load i32, ptr %340, align 4
  %342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %337, i32 noundef %339, i32 noundef %341, i32 noundef %87) #10
  br label %343

343:                                              ; preds = %336, %331
  %344 = icmp ugt i32 %87, 7
  br i1 %344, label %345, label %469

345:                                              ; preds = %343
  %346 = load i8, ptr %86, align 2
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %469

348:                                              ; preds = %345
  %349 = icmp eq i32 %87, 8
  br i1 %349, label %350, label %469

350:                                              ; preds = %348
  %351 = load ptr, ptr %9, align 4
  %352 = getelementptr inbounds %struct.nvkm_client, ptr %351, i32 0, i32 3
  %353 = load i32, ptr %352, align 8
  %354 = icmp ugt i32 %353, 4
  br i1 %354, label %355, label %365

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.nvkm_client, ptr %351, i32 0, i32 1
  %357 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %358 = load i32, ptr %357, align 8
  %359 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr i8, ptr %2, i32 10
  %362 = load i16, ptr %361, align 2
  %363 = zext i16 %362 to i32
  %364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %356, i32 noundef %358, i32 noundef %360, i32 noundef 0, i32 noundef %363) #10
  br label %365

365:                                              ; preds = %355, %350
  %366 = getelementptr i8, ptr %2, i32 10
  %367 = load i16, ptr %366, align 2
  %368 = zext i16 %367 to i32
  %369 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 9, i32 2
  store i32 %368, ptr %369, align 4
  br label %469

370:                                              ; preds = %119
  %371 = load ptr, ptr %9, align 4
  %372 = getelementptr inbounds %struct.nvkm_client, ptr %371, i32 0, i32 3
  %373 = load i32, ptr %372, align 8
  %374 = icmp ugt i32 %373, 4
  br i1 %374, label %375, label %382

375:                                              ; preds = %370
  %376 = getelementptr inbounds %struct.nvkm_client, ptr %371, i32 0, i32 1
  %377 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %378 = load i32, ptr %377, align 8
  %379 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %380 = load i32, ptr %379, align 4
  %381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %376, i32 noundef %378, i32 noundef %380, i32 noundef %87) #10
  br label %382

382:                                              ; preds = %375, %370
  %383 = icmp ugt i32 %87, 7
  br i1 %383, label %384, label %469

384:                                              ; preds = %382
  %385 = load i8, ptr %86, align 1
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %387, label %469

387:                                              ; preds = %384
  %388 = icmp eq i32 %87, 8
  br i1 %388, label %389, label %469

389:                                              ; preds = %387
  %390 = load ptr, ptr %9, align 4
  %391 = getelementptr inbounds %struct.nvkm_client, ptr %390, i32 0, i32 3
  %392 = load i32, ptr %391, align 8
  %393 = icmp ugt i32 %392, 4
  br i1 %393, label %394, label %404

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.nvkm_client, ptr %390, i32 0, i32 1
  %396 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %397 = load i32, ptr %396, align 8
  %398 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %399 = load i32, ptr %398, align 4
  %400 = getelementptr i8, ptr %2, i32 9
  %401 = load i8, ptr %400, align 1
  %402 = zext i8 %401 to i32
  %403 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %395, i32 noundef %397, i32 noundef %399, i32 noundef 0, i32 noundef %402) #10
  br label %404

404:                                              ; preds = %394, %389
  %405 = getelementptr i8, ptr %2, i32 9
  %406 = load i8, ptr %405, align 1
  %407 = icmp ne i8 %406, 0
  %408 = getelementptr inbounds %struct.nvkm_dp, ptr %115, i32 0, i32 8, i32 1
  %409 = zext i1 %407 to i8
  store i8 %409, ptr %408, align 4
  br label %469

410:                                              ; preds = %119
  %411 = load ptr, ptr %9, align 4
  %412 = getelementptr inbounds %struct.nvkm_client, ptr %411, i32 0, i32 3
  %413 = load i32, ptr %412, align 8
  %414 = icmp ugt i32 %413, 4
  br i1 %414, label %415, label %422

415:                                              ; preds = %410
  %416 = getelementptr inbounds %struct.nvkm_client, ptr %411, i32 0, i32 1
  %417 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %418 = load i32, ptr %417, align 8
  %419 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %420 = load i32, ptr %419, align 4
  %421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %416, i32 noundef %418, i32 noundef %420, i32 noundef %87) #10
  br label %422

422:                                              ; preds = %415, %410
  %423 = icmp ugt i32 %87, 7
  br i1 %423, label %424, label %469

424:                                              ; preds = %422
  %425 = load i8, ptr %86, align 2
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %469

427:                                              ; preds = %424
  %428 = icmp eq i32 %87, 8
  br i1 %428, label %429, label %469

429:                                              ; preds = %427
  %430 = load ptr, ptr %9, align 4
  %431 = getelementptr inbounds %struct.nvkm_client, ptr %430, i32 0, i32 3
  %432 = load i32, ptr %431, align 8
  %433 = icmp ugt i32 %432, 4
  br i1 %433, label %434, label %453

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.nvkm_client, ptr %430, i32 0, i32 1
  %436 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %437 = load i32, ptr %436, align 8
  %438 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %439 = load i32, ptr %438, align 4
  %440 = getelementptr i8, ptr %2, i32 10
  %441 = load i8, ptr %440, align 2
  %442 = zext i8 %441 to i32
  %443 = getelementptr i8, ptr %2, i32 11
  %444 = load i8, ptr %443, align 1
  %445 = zext i8 %444 to i32
  %446 = getelementptr i8, ptr %2, i32 12
  %447 = load i16, ptr %446, align 2
  %448 = zext i16 %447 to i32
  %449 = getelementptr i8, ptr %2, i32 14
  %450 = load i16, ptr %449, align 2
  %451 = zext i16 %450 to i32
  %452 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %435, i32 noundef %437, i32 noundef %439, i32 noundef 0, i32 noundef %442, i32 noundef %445, i32 noundef %448, i32 noundef %451) #10
  br label %453

453:                                              ; preds = %434, %429
  %454 = getelementptr inbounds %struct.nvkm_outp, ptr %115, i32 0, i32 9
  %455 = load ptr, ptr %454, align 4
  %456 = load ptr, ptr %455, align 4
  %457 = getelementptr inbounds %struct.nvkm_ior_func, ptr %456, i32 0, i32 8, i32 5
  %458 = load ptr, ptr %457, align 4
  %459 = icmp eq ptr %458, null
  br i1 %459, label %469, label %460

460:                                              ; preds = %453
  %461 = getelementptr i8, ptr %2, i32 10
  %462 = load i8, ptr %461, align 2
  %463 = getelementptr i8, ptr %2, i32 11
  %464 = load i8, ptr %463, align 1
  %465 = getelementptr i8, ptr %2, i32 12
  %466 = load i16, ptr %465, align 2
  %467 = getelementptr i8, ptr %2, i32 14
  %468 = load i16, ptr %467, align 2
  tail call void %458(ptr noundef %455, i32 noundef %82, i8 noundef zeroext %462, i8 noundef zeroext %464, i16 noundef zeroext %466, i16 noundef zeroext %468) #9
  br label %469

469:                                              ; preds = %460, %453, %427, %424, %422, %404, %387, %384, %382, %365, %348, %345, %343, %328, %318, %311, %309, %300, %296, %292, %263, %261, %247, %231, %211, %209, %192, %190, %173, %164, %161, %157, %155, %152, %150, %149, %135, %129, %127, %124, %122, %119, %117, %111, %108, %94, %81, %23, %21, %4
  %470 = phi i32 [ %118, %117 ], [ 0, %149 ], [ -22, %4 ], [ -6, %81 ], [ -6, %111 ], [ 0, %135 ], [ %133, %129 ], [ 0, %173 ], [ -22, %157 ], [ %162, %161 ], [ %171, %164 ], [ -7, %209 ], [ -19, %211 ], [ 0, %247 ], [ 0, %231 ], [ -22, %296 ], [ -22, %292 ], [ -22, %300 ], [ -7, %309 ], [ -19, %311 ], [ 0, %328 ], [ 0, %318 ], [ 0, %365 ], [ 0, %404 ], [ 0, %460 ], [ -19, %453 ], [ -22, %119 ], [ -38, %21 ], [ -38, %122 ], [ -38, %124 ], [ -7, %127 ], [ -38, %150 ], [ -38, %152 ], [ -7, %155 ], [ -38, %192 ], [ -38, %190 ], [ -38, %263 ], [ -38, %261 ], [ -38, %343 ], [ -38, %345 ], [ -7, %348 ], [ -38, %382 ], [ -38, %384 ], [ -7, %387 ], [ -38, %422 ], [ -38, %424 ], [ -7, %427 ], [ -6, %94 ], [ -38, %23 ], [ -6, %108 ]
  ret i32 %470
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_disp_ntfy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nv50_disp_root_child_get_(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.nv50_disp_root_func, ptr %5, i32 0, i32 1, i32 %1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.nv50_disp_root_func, ptr %5, i32 0, i32 1, i32 %1
  %11 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %11, ptr noundef align 4 dereferenceable(20) %10, i32 20, i1 false)
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.nv50_disp_root_func, ptr %12, i32 0, i32 1
  %14 = getelementptr %struct.nv50_disp_user, ptr %13, i32 %1
  %15 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  store ptr @nv50_disp_root_child_new_, ptr %2, align 8
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ 0, %9 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_head_mthd_scanoutpos(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_outp_acquire(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_root_child_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nv50_disp_user, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %8, ptr noundef %3) #9
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_curs_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_oimm_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_base_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_ovly_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i16 0, i16 17}
