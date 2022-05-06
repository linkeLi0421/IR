; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.122, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nvif_notify_head_rep_v0 = type { i8, [7 x i8] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.124 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.124 = type { %struct.spinlock, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.137, i8 }
%union.anon.137 = type { %struct.anon.141 }
%struct.anon.141 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.nvkm_conn = type { ptr, i32, %struct.nvbios_connE, %struct.nvkm_notify, %struct.list_head }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.135, %struct.anon.136 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.135 = type { i8, i8, i8, i8 }
%struct.anon.136 = type { i8 }
%struct.nvkm_ior_func = type { %struct.anon.131, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.133, %struct.anon.134 }
%struct.anon.131 = type { ptr, ptr }
%struct.anon.132 = type { ptr, ptr }
%struct.anon.133 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvif_notify_conn_req_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.nvkm_head_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }

@nvkm_disp = internal constant %struct.nvkm_engine_func { ptr @nvkm_disp_dtor, ptr null, ptr @nvkm_disp_oneinit, ptr null, ptr @nvkm_disp_init, ptr @nvkm_disp_fini, ptr @nvkm_disp_intr, ptr null, ptr null, %struct.anon { ptr @nvkm_disp_class_get }, %struct.anon.122 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: dcb %d type %d unknown\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: outp %02x:%04x:%04x: ctor failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: outp %02x:%04x:%04x: not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: failed to create outp %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: failed to create outp %d conn: %d\0A\00", align 1
@nvkm_disp_hpd_func = internal constant %struct.nvkm_event_func { ptr @nvkm_disp_hpd_ctor, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c\00", align 1
@nvkm_disp_vblank_func = internal constant %struct.nvkm_event_func { ptr @nvkm_disp_vblank_ctor, ptr null, ptr @nvkm_disp_vblank_init, ptr @nvkm_disp_vblank_fini }, align 4
@nvkm_disp_sclass = internal constant %struct.nvkm_device_oclass { ptr @nvkm_disp_class_new, %struct.nvkm_sclass zeroinitializer }, align 4
@nvkm_disp_class = internal constant %struct.nvkm_oproxy_func { [2 x ptr] [ptr null, ptr @nvkm_disp_class_del], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_disp_vblank(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_notify_head_rep_v0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 7
  call void @nvkm_event_send(ptr noundef %4, i32 noundef 1, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_disp_ntfy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  switch i32 %1, label %10 [
    i32 0, label %7
    i32 1, label %6
  ]

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 120, %6 ], [ 152, %3 ]
  %9 = getelementptr i8, ptr %5, i32 %8
  store ptr %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ -22, %3 ], [ 0, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_disp_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 2
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 2, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 4
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 4, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 5
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 5, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 8
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1
  %16 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_disp, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %15) #11
  ret i32 %16
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_disp_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 196) #12
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 2
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 2, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 3
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 4
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 5
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 5, i32 1
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 8
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1
  %20 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_disp, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %19) #11
  br label %21

21:                                               ; preds = %9, %5
  %22 = phi i32 [ %20, %9 ], [ -12, %5 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_disp_dtor(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call ptr %8(ptr noundef %6) #11
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ %6, %1 ]
  %14 = getelementptr i8, ptr %0, i32 152
  tail call void @nvkm_event_fini(ptr noundef %14) #11
  %15 = getelementptr i8, ptr %0, i32 120
  tail call void @nvkm_event_fini(ptr noundef %15) #11
  %16 = getelementptr i8, ptr %0, i32 112
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %23

19:                                               ; preds = %23, %12
  %20 = getelementptr i8, ptr %0, i32 104
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %32, label %36

23:                                               ; preds = %23, %12
  %24 = phi ptr [ %30, %23 ], [ %17, %12 ]
  %25 = getelementptr i8, ptr %24, i32 -72
  store ptr %25, ptr %2, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  call void @nvkm_conn_del(ptr noundef nonnull %2) #11
  %30 = load volatile ptr, ptr %16, align 4
  %31 = icmp eq ptr %30, %16
  br i1 %31, label %19, label %23

32:                                               ; preds = %36, %19
  %33 = getelementptr i8, ptr %0, i32 96
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %45, label %49

36:                                               ; preds = %36, %19
  %37 = phi ptr [ %43, %36 ], [ %21, %19 ]
  %38 = getelementptr i8, ptr %37, i32 -56
  store ptr %38, ptr %3, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  call void @nvkm_outp_del(ptr noundef nonnull %3) #11
  %43 = load volatile ptr, ptr %20, align 4
  %44 = icmp eq ptr %43, %20
  br i1 %44, label %32, label %36

45:                                               ; preds = %49, %32
  %46 = getelementptr i8, ptr %0, i32 88
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %59, label %54

49:                                               ; preds = %49, %32
  %50 = phi ptr [ %52, %49 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %51 = getelementptr i8, ptr %50, i32 -24
  store ptr %51, ptr %4, align 4
  call void @nvkm_ior_del(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %52 = load volatile ptr, ptr %33, align 4
  %53 = icmp eq ptr %52, %33
  br i1 %53, label %45, label %49

54:                                               ; preds = %54, %45
  %55 = phi ptr [ %57, %54 ], [ %47, %45 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %56 = getelementptr i8, ptr %55, i32 -12
  store ptr %56, ptr %5, align 4
  call void @nvkm_head_del(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %57 = load volatile ptr, ptr %46, align 4
  %58 = icmp eq ptr %57, %46
  br i1 %58, label %59, label %54

59:                                               ; preds = %54, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_disp_oneinit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.nvbios_connE, align 1
  %4 = alloca %struct.dcb_output, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  %12 = call zeroext i16 @dcb_outp_parse(ptr noundef %11, i8 noundef zeroext 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #11
  %13 = icmp eq i16 %12, 0
  %14 = load i8, ptr %5, align 1
  %15 = icmp ult i8 %14, 64
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %116, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 3
  %19 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %20 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %21 = getelementptr i8, ptr %0, i32 104
  %22 = getelementptr i8, ptr %0, i32 108
  %23 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 6
  br label %24

24:                                               ; preds = %102, %17
  %25 = phi i32 [ 0, %17 ], [ %109, %102 ]
  %26 = phi i8 [ 0, %17 ], [ %108, %102 ]
  br label %27

27:                                               ; preds = %42, %24
  %28 = phi i32 [ %25, %24 ], [ %43, %42 ]
  %29 = load i32, ptr %18, align 4
  switch i32 %29, label %30 [
    i32 15, label %42
    i32 14, label %116
  ]

30:                                               ; preds = %27
  store ptr null, ptr %2, align 4
  switch i32 %29, label %35 [
    i32 0, label %31
    i32 1, label %31
    i32 2, label %31
    i32 3, label %31
    i32 6, label %33
    i32 8, label %42
  ]

31:                                               ; preds = %30, %30, %30, %30
  %32 = call i32 @nvkm_outp_new(ptr noundef %7, i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %2) #11
  br label %50

33:                                               ; preds = %30
  %34 = call i32 @nvkm_dp_new(ptr noundef %7, i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %2) #11
  br label %50

35:                                               ; preds = %30
  %36 = load i32, ptr %19, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %41, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %28, i32 noundef %29) #13
  br label %42

42:                                               ; preds = %98, %95, %94, %38, %35, %30, %27
  %43 = add i32 %28, 1
  %44 = trunc i32 %43 to i8
  %45 = call zeroext i16 @dcb_outp_parse(ptr noundef %11, i8 noundef zeroext %44, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #11
  %46 = icmp eq i16 %45, 0
  %47 = load i8, ptr %5, align 1
  %48 = icmp ult i8 %47, 64
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %116, label %27

50:                                               ; preds = %33, %31
  %51 = phi i32 [ %34, %33 ], [ %32, %31 ]
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr %2, align 4
  br i1 %52, label %102, label %54

54:                                               ; preds = %50
  %55 = icmp eq ptr %53, null
  br i1 %55, label %95, label %56

56:                                               ; preds = %54
  %57 = icmp eq i32 %51, -19
  %58 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  br i1 %57, label %78, label %62

62:                                               ; preds = %56
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 4
  %70 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 3, i32 1
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 3, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.1, ptr noundef %69, i32 noundef %71, i32 noundef %74, i32 noundef %77, i32 noundef %51) #13
  br label %94

78:                                               ; preds = %56
  %79 = icmp ugt i32 %61, 3
  br i1 %79, label %80, label %94

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 4
  %86 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 3, i32 1
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  %91 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 3, i32 2
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.2, ptr noundef %85, i32 noundef %87, i32 noundef %90, i32 noundef %93) #13
  br label %94

94:                                               ; preds = %80, %78, %64, %62
  call void @nvkm_outp_del(ptr noundef nonnull %2) #11
  br label %42

95:                                               ; preds = %54
  %96 = load i32, ptr %19, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %42, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.3, ptr noundef %20, i32 noundef %28) #13
  br label %42

102:                                              ; preds = %50
  %103 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 5
  %104 = load ptr, ptr %22, align 4
  store ptr %103, ptr %22, align 4
  store ptr %21, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 5, i32 1
  store ptr %104, ptr %105, align 4
  store volatile ptr %103, ptr %104, align 4
  %106 = load i8, ptr %23, align 2
  %107 = add i8 %106, 1
  %108 = call i8 @llvm.umax.i8(i8 %26, i8 %107)
  %109 = add i32 %28, 1
  %110 = trunc i32 %109 to i8
  %111 = call zeroext i16 @dcb_outp_parse(ptr noundef %11, i8 noundef zeroext %110, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #11
  %112 = icmp eq i16 %111, 0
  %113 = load i8, ptr %5, align 1
  %114 = icmp ult i8 %113, 64
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %24

116:                                              ; preds = %102, %42, %27, %1
  %117 = phi i8 [ 0, %1 ], [ %26, %27 ], [ %26, %42 ], [ %108, %102 ]
  %118 = getelementptr i8, ptr %0, i32 104
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 -56
  store ptr %120, ptr %2, align 4
  %121 = icmp eq ptr %119, %118
  br i1 %121, label %216, label %122

122:                                              ; preds = %116
  %123 = getelementptr i8, ptr %0, i32 112
  %124 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %125 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %126 = getelementptr i8, ptr %0, i32 116
  %127 = getelementptr inbounds i8, ptr %3, i32 1
  br label %128

128:                                              ; preds = %213, %122
  %129 = phi ptr [ %119, %122 ], [ %130, %213 ]
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %129, i32 -30
  %132 = load i8, ptr %131, align 2
  %133 = call i32 @nvbios_connEp(ptr noundef %11, i8 noundef zeroext %132, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3) #11
  %134 = icmp eq i32 %133, 0
  %135 = load ptr, ptr %2, align 4
  br i1 %134, label %136, label %157

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 3, i32 4
  %138 = load i8, ptr %137, align 4
  %139 = icmp eq i8 %138, 15
  br i1 %139, label %152, label %140

140:                                              ; preds = %144, %136
  %141 = phi ptr [ %142, %144 ], [ %118, %136 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %118
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %142, i32 -32
  %146 = load i8, ptr %145, align 4
  %147 = icmp eq i8 %146, %138
  br i1 %147, label %148, label %140

148:                                              ; preds = %144
  %149 = getelementptr i8, ptr %142, i32 8
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 6
  store ptr %150, ptr %151, align 4
  br label %152

152:                                              ; preds = %148, %140, %136
  %153 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 6
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %213

156:                                              ; preds = %152
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %127, i8 0, i32 6, i1 false)
  store i8 -1, ptr %3, align 1
  br label %161

157:                                              ; preds = %128
  %158 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 3, i32 6
  %159 = load i8, ptr %158, align 2
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %157, %156
  %162 = phi i32 [ %160, %157 ], [ -1, %156 ]
  %163 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 3, i32 6
  br label %164

164:                                              ; preds = %168, %161
  %165 = phi ptr [ %123, %161 ], [ %166, %168 ]
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, %123
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = getelementptr i8, ptr %166, i32 -68
  %170 = load i32, ptr %169, align 4
  %171 = load i8, ptr %163, align 2
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %164

174:                                              ; preds = %168
  %175 = getelementptr i8, ptr %166, i32 -72
  %176 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 6
  store ptr %175, ptr %176, align 4
  br label %180

177:                                              ; preds = %164
  %178 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 6
  %179 = load ptr, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi ptr [ %179, %177 ], [ %175, %174 ]
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %213

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.nvkm_outp, ptr %135, i32 0, i32 6
  %185 = call i32 @nvkm_conn_new(ptr noundef %7, i32 noundef %162, ptr noundef nonnull %3, ptr noundef %184) #11
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %206, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %124, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %8, align 4
  %192 = getelementptr inbounds %struct.nvkm_device, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8
  %194 = load ptr, ptr %2, align 4
  %195 = getelementptr inbounds %struct.nvkm_outp, ptr %194, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.4, ptr noundef %125, i32 noundef %196, i32 noundef %185) #13
  br label %197

197:                                              ; preds = %190, %187
  %198 = load ptr, ptr %2, align 4
  %199 = getelementptr inbounds %struct.nvkm_outp, ptr %198, i32 0, i32 6
  call void @nvkm_conn_del(ptr noundef %199) #11
  %200 = load ptr, ptr %2, align 4
  %201 = getelementptr inbounds %struct.nvkm_outp, ptr %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.nvkm_outp, ptr %200, i32 0, i32 5, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = load ptr, ptr %201, align 4
  %205 = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  store ptr %203, ptr %205, align 4
  store volatile ptr %204, ptr %203, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %201, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %202, align 4
  call void @nvkm_outp_del(ptr noundef nonnull %2) #11
  br label %213

206:                                              ; preds = %183
  %207 = load ptr, ptr %2, align 4
  %208 = getelementptr inbounds %struct.nvkm_outp, ptr %207, i32 0, i32 6
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.nvkm_conn, ptr %209, i32 0, i32 4
  %211 = load ptr, ptr %126, align 4
  store ptr %210, ptr %126, align 4
  store ptr %123, ptr %210, align 4
  %212 = getelementptr inbounds %struct.nvkm_conn, ptr %209, i32 0, i32 4, i32 1
  store ptr %211, ptr %212, align 4
  store volatile ptr %210, ptr %211, align 4
  br label %213

213:                                              ; preds = %206, %197, %180, %152
  %214 = getelementptr i8, ptr %130, i32 -56
  store ptr %214, ptr %2, align 4
  %215 = icmp eq ptr %130, %118
  br i1 %215, label %216, label %128

216:                                              ; preds = %213, %116
  %217 = zext i8 %117 to i32
  %218 = getelementptr i8, ptr %0, i32 120
  %219 = call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_disp_hpd_func, i32 noundef 3, i32 noundef %217, ptr noundef %218) #11
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %278

221:                                              ; preds = %216
  %222 = load ptr, ptr %7, align 4
  %223 = getelementptr inbounds %struct.nvkm_disp_func, ptr %222, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %221
  %227 = call i32 %224(ptr noundef %7) #11
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %278

229:                                              ; preds = %226, %221
  %230 = load ptr, ptr %118, align 4
  %231 = getelementptr i8, ptr %230, i32 -56
  store ptr %231, ptr %2, align 4
  %232 = icmp eq ptr %230, %118
  br i1 %232, label %261, label %233

233:                                              ; preds = %255, %229
  %234 = phi ptr [ %259, %255 ], [ %231, %229 ]
  %235 = phi ptr [ %258, %255 ], [ %230, %229 ]
  %236 = getelementptr i8, ptr %235, i32 8
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.nvkm_conn, ptr %237, i32 0, i32 2
  %239 = load i8, ptr %238, align 4
  switch i8 %239, label %255 [
    i8 64, label %240
    i8 71, label %240
  ]

240:                                              ; preds = %233, %233
  %241 = getelementptr i8, ptr %235, i32 -27
  %242 = load i8, ptr %241, align 1
  %243 = call i8 @llvm.cttz.i8(i8 %242, i1 true), !range !9
  %244 = zext i8 %243 to i32
  %245 = icmp eq i8 %242, 0
  %246 = select i1 %245, i32 -1, i32 %244
  %247 = call ptr @nvkm_ior_find(ptr noundef %7, i32 noundef 1, i32 noundef %246) #11
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %250, !prof !10

249:                                              ; preds = %240
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 410, i32 noundef 9, ptr noundef null) #11
  br label %252

250:                                              ; preds = %240
  %251 = getelementptr inbounds %struct.nvkm_ior, ptr %247, i32 0, i32 6
  store i8 1, ptr %251, align 4
  br label %252

252:                                              ; preds = %250, %249
  %253 = load ptr, ptr %2, align 4
  %254 = getelementptr inbounds %struct.nvkm_outp, ptr %253, i32 0, i32 7
  store i8 1, ptr %254, align 4
  br label %255

255:                                              ; preds = %252, %233
  %256 = phi ptr [ %234, %233 ], [ %253, %252 ]
  %257 = getelementptr inbounds %struct.nvkm_outp, ptr %256, i32 0, i32 5
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr i8, ptr %258, i32 -56
  store ptr %259, ptr %2, align 4
  %260 = icmp eq ptr %258, %118
  br i1 %260, label %261, label %233

261:                                              ; preds = %255, %229
  %262 = getelementptr i8, ptr %0, i32 88
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, %262
  br i1 %264, label %274, label %265

265:                                              ; preds = %265, %261
  %266 = phi ptr [ %272, %265 ], [ %263, %261 ]
  %267 = phi i32 [ %271, %265 ], [ 0, %261 ]
  %268 = getelementptr i8, ptr %266, i32 -4
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, 1
  %271 = call i32 @llvm.smax.i32(i32 %267, i32 %270)
  %272 = load ptr, ptr %266, align 4
  %273 = icmp eq ptr %272, %262
  br i1 %273, label %274, label %265

274:                                              ; preds = %265, %261
  %275 = phi i32 [ 0, %261 ], [ %271, %265 ]
  %276 = getelementptr i8, ptr %0, i32 152
  %277 = call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_disp_vblank_func, i32 noundef 1, i32 noundef %275, ptr noundef %276) #11
  br label %278

278:                                              ; preds = %274, %226, %216
  %279 = phi i32 [ %277, %274 ], [ %219, %216 ], [ %227, %226 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_disp_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -72
  tail call void @nvkm_conn_init(ptr noundef %8) #11
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  %12 = getelementptr i8, ptr %0, i32 104
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %20, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %18, %15 ], [ %13, %11 ]
  %17 = getelementptr i8, ptr %16, i32 -56
  tail call void @nvkm_outp_init(ptr noundef %17) #11
  %18 = load ptr, ptr %16, align 4
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %20, label %15

20:                                               ; preds = %15, %11
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.nvkm_disp_func, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef %2) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25, %20
  %29 = getelementptr i8, ptr %0, i32 96
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %28
  %33 = phi ptr [ %38, %32 ], [ %30, %28 ]
  %34 = getelementptr i8, ptr %33, i32 -24
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_ior_func, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %34, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %38 = load ptr, ptr %33, align 4
  %39 = icmp eq ptr %38, %29
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %28, %25
  %41 = phi i32 [ %26, %25 ], [ 0, %28 ], [ 0, %32 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_disp_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp_func, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr i8, ptr %0, i32 104
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -56
  tail call void @nvkm_outp_fini(ptr noundef %15) #11
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %9
  %19 = getelementptr i8, ptr %0, i32 112
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %25, %22 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 -72
  tail call void @nvkm_conn_fini(ptr noundef %24) #11
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_disp_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp_func, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_disp_class_get(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_disp_func, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef %8) #11
  %13 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_disp_oclass, ptr %12, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %13, ptr noundef align 4 dereferenceable(20) %14, i32 20, i1 false)
  %15 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 3
  store ptr %12, ptr %15, align 4
  store ptr @nvkm_disp_sclass, ptr %2, align 4
  br label %16

16:                                               ; preds = %5, %3
  %17 = phi i32 [ 0, %5 ], [ 1, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_conn_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ior_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_head_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_outp_parse(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_outp_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dp_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_connEp(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_conn_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_ior_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_disp_hpd_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  %5 = load ptr, ptr %3, align 4
  %6 = icmp ugt i32 %2, 7
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 8
  br i1 %11, label %12, label %43

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 8, ptr %13, align 4
  %14 = getelementptr i8, ptr %5, i32 -16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %1, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  br label %24

21:                                               ; preds = %24
  %22 = load ptr, ptr %25, align 4
  %23 = icmp eq ptr %22, %14
  br i1 %23, label %43, label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %15, %17 ], [ %22, %21 ]
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_conn, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %20
  br i1 %30, label %31, label %21

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nvkm_conn, ptr %27, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %1, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = load i8, ptr %18, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %35, %31, %21, %12, %10, %7, %4
  %44 = phi i32 [ 0, %35 ], [ -19, %31 ], [ -38, %4 ], [ -38, %7 ], [ -7, %10 ], [ 0, %12 ], [ -6, %21 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_disp_vblank_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) #8 {
  %5 = load ptr, ptr %3, align 4
  %6 = icmp ugt i32 %2, 7
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 8
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.nvkm_event, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, %16
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %21, align 4
  %22 = load i8, ptr %14, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %12, %10, %7, %4
  %26 = phi i32 [ 0, %20 ], [ -6, %12 ], [ -38, %4 ], [ -38, %7 ], [ -7, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_disp_vblank_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -156
  %5 = tail call ptr @nvkm_head_find(ptr noundef %4, i32 noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.nvkm_head_func, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef nonnull %5) #11
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_disp_vblank_fini(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -156
  %5 = tail call ptr @nvkm_head_find(ptr noundef %4, i32 noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.nvkm_head_func, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef nonnull %5) #11
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_conn_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_conn_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_disp_class_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store ptr null, ptr %6, align 4, !annotation !8
  %12 = call i32 @nvkm_oproxy_new_(ptr noundef nonnull @nvkm_disp_class, ptr noundef %1, ptr noundef nonnull %6) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.nvkm_oproxy, ptr %15, i32 0, i32 1
  store ptr %16, ptr %4, align 4
  %17 = getelementptr i8, ptr %10, i32 184
  call void @_raw_spin_lock(ptr noundef %17) #11
  %18 = getelementptr i8, ptr %10, i32 188
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %22 = load i16, ptr %17, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %32

24:                                               ; preds = %14
  %25 = load ptr, ptr %6, align 4
  store ptr %25, ptr %18, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %26 = load i16, ptr %17, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %28 = load ptr, ptr %8, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.nvkm_oproxy, ptr %29, i32 0, i32 2
  %31 = call i32 %28(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %30) #11
  br label %32

32:                                               ; preds = %24, %21, %5
  %33 = phi i32 [ -16, %21 ], [ %31, %24 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_oproxy_new_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_disp_class_del(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_oproxy, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 184
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %3, i32 188
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i8 0, i8 9}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148948724}
!12 = !{i64 2148944548}
!13 = !{i64 2148944623, i64 2148944650, i64 2148944697, i64 2148944719, i64 2148944747, i64 2148944767}
!14 = !{i64 2148971727}
