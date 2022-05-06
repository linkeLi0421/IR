; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/client.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/client.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_client_notify = type { ptr, %struct.nvkm_notify, i8, i8, %union.anon.1 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { %struct.nvif_notify_rep_v0 }
%struct.nvif_notify_rep_v0 = type { i8, [6 x i8], i8, i64, [0 x i8] }
%struct.nvif_notify_req_v0 = type { i8, i8, [5 x i8], i8, i64, [0 x i8] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvif_client_devlist_v0 = type { i8, i8, [6 x i8], [0 x i64] }
%struct.nvif_client_v0 = type { i8, [7 x i8], i64, [32 x i8] }

@.str = private unnamed_addr constant [52 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: notify new size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: notify new vers %d reply %d route %02x token %llx\0A\00", align 1
@nvkm_client = internal constant %struct.nvkm_object_func { ptr @nvkm_client_dtor, ptr null, ptr @nvkm_client_fini, ptr @nvkm_client_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_client_child_get }, align 4
@nvkm_uclient_sclass = internal unnamed_addr constant %struct.nvkm_sclass { i32 0, i32 0, i32 0, ptr null, ptr @nvkm_uclient_new }, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CLIENT\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@__const.nvkm_client_fini.name = private unnamed_addr constant [2 x ptr] [ptr @.str.4, ptr @.str.5], align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"\016nouveau: %s:%08x:%08x: %s notify\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: client devlist size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: client devlist vers %d count %d\0A\00", align 1
@nvkm_udevice_sclass = external dso_local local_unnamed_addr constant %struct.nvkm_sclass, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_put(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 32
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr %struct.nvkm_client, ptr %0, i32 0, i32 4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_client_notify, ptr %6, i32 0, i32 1
  tail call void @nvkm_notify_put(ptr noundef %9) #9
  br label %10

10:                                               ; preds = %8, %4, %2
  %11 = phi i32 [ 0, %8 ], [ -2, %4 ], [ -2, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 32
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr %struct.nvkm_client, ptr %0, i32 0, i32 4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_client_notify, ptr %6, i32 0, i32 1
  tail call void @nvkm_notify_get(ptr noundef %9) #9
  br label %10

10:                                               ; preds = %8, %4, %2
  %11 = phi i32 [ 0, %8 ], [ -2, %4 ], [ -2, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_del(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 32
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = getelementptr %struct.nvkm_client, ptr %0, i32 0, i32 4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_client_notify, ptr %6, i32 0, i32 1
  tail call void @nvkm_notify_fini(ptr noundef %9) #9
  %10 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %10) #9
  store ptr null, ptr %5, align 4
  br label %11

11:                                               ; preds = %8, %4, %2
  %12 = phi i32 [ 0, %8 ], [ -2, %4 ], [ -2, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_notify_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %12, %4
  %8 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %9 = getelementptr %struct.nvkm_client, ptr %6, i32 0, i32 4, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %79, label %7

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 80) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %79, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.nvkm_client, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.nvkm_client, ptr %20, i32 0, i32 1
  %26 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %3) #11
  br label %31

31:                                               ; preds = %24, %19
  %32 = icmp ugt i32 %3, 15
  br i1 %32, label %33, label %77

33:                                               ; preds = %31
  %34 = load i8, ptr %2, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %2, i32 16
  %38 = add i32 %3, -16
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.nvkm_client, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 8
  %42 = icmp ugt i32 %41, 4
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.nvkm_client, ptr %39, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %2, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %2, i32 0, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %2, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef 0, i32 noundef %51, i32 noundef %54, i64 noundef %56) #11
  %58 = load i8, ptr %2, align 8
  br label %59

59:                                               ; preds = %43, %36
  %60 = phi i8 [ 0, %36 ], [ %58, %43 ]
  %61 = getelementptr inbounds %struct.nvkm_client_notify, ptr %17, i32 0, i32 2
  store i8 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nvkm_client_notify, ptr %17, i32 0, i32 3
  store i8 16, ptr %62, align 1
  %63 = getelementptr inbounds %struct.nvkm_client_notify, ptr %17, i32 0, i32 4
  store i8 %60, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %2, i32 0, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.nvkm_client_notify, ptr %17, i32 0, i32 4, i32 0, i32 2
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %2, i32 0, i32 4
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_client_notify, ptr %17, i32 0, i32 4, i32 0, i32 3
  store i64 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %2, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.nvkm_client_notify, ptr %17, i32 0, i32 1
  %74 = tail call i32 @nvkm_notify_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @nvkm_client_notify, i1 noundef zeroext false, ptr noundef %37, i32 noundef %38, i32 noundef %72, ptr noundef %73) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  store ptr %17, ptr %9, align 4
  store ptr %6, ptr %17, align 8
  br label %79

77:                                               ; preds = %59, %33, %31
  %78 = phi i32 [ %74, %59 ], [ -38, %33 ], [ -38, %31 ]
  tail call void @kfree(ptr noundef nonnull %17) #9
  br label %79

79:                                               ; preds = %77, %76, %15, %12
  %80 = phi i32 [ %8, %76 ], [ %78, %77 ], [ -12, %15 ], [ -28, %12 ]
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_notify(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 60
  %7 = getelementptr i8, ptr %0, i32 57
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 %5(ptr noundef %6, i32 noundef %9, ptr noundef %11, i32 noundef %13) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_client_search(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @nvkm_object_search(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @nvkm_client) #9
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_client_new(ptr noundef %0, i64 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.nvkm_oclass, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) @nvkm_uclient_sclass, i32 20, i1 false)
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %7, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nvkm_oclass, ptr %7, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(13) %9, i8 0, i64 13, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 272) #10
  store ptr %12, ptr %5, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.nvkm_oclass, ptr %7, i32 0, i32 8
  store ptr %12, ptr %15, align 8
  call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_client, ptr noundef nonnull %7, ptr noundef nonnull %12) #9
  %16 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %0)
  %18 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 2
  store i64 %1, ptr %18, align 8
  %19 = call i32 @nvkm_dbgopt(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %20 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 5
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 7
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 8
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 8, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 9
  store i32 0, ptr %25, align 8
  br label %26

26:                                               ; preds = %14, %6
  %27 = phi i32 [ 0, %14 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_client_dtor(ptr noundef returned %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = getelementptr %struct.nvkm_client, ptr %0, i32 0, i32 4, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_client_notify, ptr %5, i32 0, i32 1
  tail call void @nvkm_notify_fini(ptr noundef %8) #9
  %9 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %9) #9
  store ptr null, ptr %4, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = add nuw nsw i32 %3, 1
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %2

13:                                               ; preds = %10
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = zext i1 %1 to i32
  %15 = getelementptr [2 x ptr], ptr @__const.nvkm_client_fini.name, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %16) #11
  br label %18

18:                                               ; preds = %8, %2
  br label %19

19:                                               ; preds = %26, %18
  %20 = phi i32 [ %27, %26 ], [ 0, %18 ]
  %21 = getelementptr %struct.nvkm_client, ptr %0, i32 0, i32 4, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.nvkm_client_notify, ptr %22, i32 0, i32 1
  tail call void @nvkm_notify_put(ptr noundef %25) #9
  br label %26

26:                                               ; preds = %24, %19
  %27 = add nuw nsw i32 %20, 1
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %19

29:                                               ; preds = %26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %3) #11
  br label %19

19:                                               ; preds = %12, %6
  %20 = icmp ugt i32 %3, 7
  br i1 %20, label %21, label %52

21:                                               ; preds = %19
  %22 = load i8, ptr %2, align 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = add i32 %3, -8
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvif_client_devlist_v0, ptr %2, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 0, i32 noundef %38) #11
  br label %40

40:                                               ; preds = %30, %24
  %41 = getelementptr inbounds %struct.nvif_client_devlist_v0, ptr %2, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 3
  %45 = icmp eq i32 %25, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.nvif_client_devlist_v0, ptr %2, i32 0, i32 3
  %48 = tail call i32 @nvkm_device_list(ptr noundef %47, i32 noundef %43) #9
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = trunc i32 %48 to i8
  store i8 %51, ptr %41, align 1
  br label %52

52:                                               ; preds = %50, %46, %40, %21, %19, %4
  %53 = phi i32 [ -22, %4 ], [ 0, %50 ], [ %48, %46 ], [ -22, %40 ], [ -38, %21 ], [ -38, %19 ]
  ret i32 %53
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_client_child_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  switch i32 %1, label %8 [
    i32 0, label %5
    i32 1, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi ptr [ @nvkm_udevice_sclass, %4 ], [ @nvkm_uclient_sclass, %3 ]
  store ptr @nvkm_client_child_new, ptr %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %6, i32 20, i1 false)
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_child_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_uclient_new(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.nvkm_oclass, align 8
  %6 = icmp ugt i32 %2, 47
  br i1 %6, label %7, label %56

7:                                                ; preds = %4
  %8 = load i8, ptr %1, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 48
  br i1 %11, label %12, label %56

12:                                               ; preds = %10
  %13 = getelementptr %struct.nvif_client_v0, ptr %1, i32 0, i32 3, i32 31
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.nvif_client_v0, ptr %1, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_client, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %20 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %20, ptr noundef nonnull align 4 dereferenceable(20) @nvkm_uclient_sclass, i32 20, i1 false) #9
  %21 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(13) %21, i8 0, i64 13, i1 false) #9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %22, i8 0, i64 28, i1 false) #9
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 272) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  br label %56

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.nvif_client_v0, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 8
  store ptr %24, ptr %29, align 8
  call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_client, ptr noundef nonnull %5, ptr noundef nonnull %24) #9
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 1
  %31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %28) #9
  %32 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 2
  store i64 %15, ptr %32, align 8
  %33 = call i32 @nvkm_dbgopt(ptr noundef null, ptr noundef nonnull @.str.3) #9
  %34 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 3
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 5
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 7
  store ptr %19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 8
  store volatile ptr %37, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 8, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nvkm_client, ptr %24, i32 0, i32 9
  store i32 0, ptr %39, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr inbounds %struct.nvkm_object, ptr %24, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_object, ptr %24, i32 0, i32 4
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 5
  %46 = load i8, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_object, ptr %24, i32 0, i32 7
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 6
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_object, ptr %24, i32 0, i32 8
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 7
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_object, ptr %24, i32 0, i32 9
  store i64 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  store i32 %55, ptr %34, align 8
  store ptr %24, ptr %3, align 4
  br label %56

56:                                               ; preds = %27, %26, %10, %7, %4
  %57 = phi i32 [ 0, %27 ], [ -12, %26 ], [ -38, %4 ], [ -38, %7 ], [ -7, %10 ]
  ret i32 %57
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
