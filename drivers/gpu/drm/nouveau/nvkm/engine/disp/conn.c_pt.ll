; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/conn.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_conn = type { ptr, i32, %struct.nvbios_connE, %struct.nvkm_notify, %struct.list_head }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_gpio_ntfy_req = type { i8, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.124 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpio = type { ptr, %struct.nvkm_subdev, %struct.nvkm_event }
%struct.nvif_notify_conn_rep_v0 = type { i8, i8, [6 x i8] }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_conn_ctor.hpd = internal unnamed_addr constant [7 x i8] c"\07\08QR^_`", align 1
@.str = private unnamed_addr constant [78 x i8] c"%s: conn %02x:%02x%02x: type %02x loc %d hpd %02x dp %x di %x sr %x lcdid %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: conn %02x:%02x%02x: hpd %02x unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%s: conn %02x:%02x%02x: func %02x lookup failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: conn %02x:%02x%02x: func %02x failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: conn %02x:%02x%02x: func %02x (HPD)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: conn %02x:%02x%02x: HPD: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_conn_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_conn, ptr %0, i32 0, i32 3
  tail call void @nvkm_notify_put(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_conn_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_conn, ptr %0, i32 0, i32 3
  tail call void @nvkm_notify_get(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_conn_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_conn, ptr %2, i32 0, i32 3
  tail call void @nvkm_notify_fini(ptr noundef %5) #8
  %6 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %6) #8
  store ptr null, ptr %0, align 4
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_conn_new(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dcb_gpio_func, align 1
  %6 = alloca %struct.nvkm_gpio_ntfy_req, align 1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 80) #9
  store ptr %8, ptr %3, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %145, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6)
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %5, i8 0, i32 5, i1 false) #8, !annotation !8
  store ptr %0, ptr %8, align 8
  %15 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 1
  store i32 %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(7) %16, ptr noundef align 1 dereferenceable(7) %2, i32 7, i1 false) #8
  %17 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %20, label %49

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 4
  %24 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 2, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, ptr %16, align 8
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr %2, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 6
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %23, i32 noundef %1, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48) #10
  br label %49

49:                                               ; preds = %20, %10
  %50 = getelementptr inbounds %struct.nvbios_connE, ptr %2, i32 0, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = tail call i8 @llvm.cttz.i8(i8 %51, i1 true) #8, !range !9
  %53 = icmp eq i8 %51, 0
  %54 = add nuw nsw i8 %52, 1
  %55 = select i1 %53, i8 0, i8 %54
  store i8 %55, ptr %50, align 1
  br i1 %53, label %144, label %56

56:                                               ; preds = %49
  %57 = add nsw i8 %55, -1
  store i8 %57, ptr %50, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ugt i8 %57, 6
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_disp, ptr %61, i32 0, i32 1, i32 1, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %144, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.nvkm_disp, ptr %61, i32 0, i32 1, i32 1, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nvkm_disp, ptr %61, i32 0, i32 1, i32 1, i32 4
  %71 = load i32, ptr %15, align 4
  %72 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 2, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %16, align 8
  %76 = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.1, ptr noundef %70, i32 noundef %71, i32 noundef %74, i32 noundef %76, i32 noundef %58) #10
  br label %144

77:                                               ; preds = %56
  %78 = getelementptr [7 x i8], ptr @nvkm_conn_ctor.hpd, i32 0, i32 %58
  %79 = load i8, ptr %78, align 1
  store i8 %79, ptr %50, align 1
  %80 = call i32 @nvkm_gpio_find(ptr noundef %14, i32 noundef 0, i8 noundef zeroext %79, i8 noundef zeroext -1, ptr noundef nonnull %5) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %8, align 8
  %84 = getelementptr inbounds %struct.nvkm_disp, ptr %83, i32 0, i32 1, i32 1, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %144, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.nvkm_disp, ptr %83, i32 0, i32 1, i32 1, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_disp, ptr %83, i32 0, i32 1, i32 1, i32 4
  %93 = load i32, ptr %15, align 4
  %94 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 2, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, ptr %16, align 8
  %98 = zext i8 %97 to i32
  %99 = load i8, ptr %50, align 1
  %100 = zext i8 %99 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.2, ptr noundef %92, i32 noundef %93, i32 noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef %80) #10
  br label %144

101:                                              ; preds = %77
  %102 = getelementptr inbounds %struct.nvkm_gpio, ptr %14, i32 0, i32 2
  store i8 3, ptr %6, align 1
  %103 = getelementptr inbounds %struct.nvkm_gpio_ntfy_req, ptr %6, i32 0, i32 1
  %104 = getelementptr inbounds %struct.dcb_gpio_func, ptr %5, i32 0, i32 1
  %105 = load i8, ptr %104, align 1
  store i8 %105, ptr %103, align 1
  %106 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 3
  %107 = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %102, ptr noundef nonnull @nvkm_conn_hpd, i1 noundef zeroext true, ptr noundef nonnull %6, i32 noundef 2, i32 noundef 1, ptr noundef %106) #8
  %108 = icmp eq i32 %107, 0
  %109 = load ptr, ptr %8, align 8
  %110 = getelementptr inbounds %struct.nvkm_disp, ptr %109, i32 0, i32 1, i32 1, i32 5
  %111 = load i32, ptr %110, align 4
  br i1 %108, label %128, label %112

112:                                              ; preds = %101
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.nvkm_disp, ptr %109, i32 0, i32 1, i32 1, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.nvkm_disp, ptr %109, i32 0, i32 1, i32 1, i32 4
  %120 = load i32, ptr %15, align 4
  %121 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 2, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, ptr %16, align 8
  %125 = zext i8 %124 to i32
  %126 = load i8, ptr %50, align 1
  %127 = zext i8 %126 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.3, ptr noundef %119, i32 noundef %120, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %107) #10
  br label %144

128:                                              ; preds = %101
  %129 = icmp ugt i32 %111, 3
  br i1 %129, label %130, label %144

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.nvkm_disp, ptr %109, i32 0, i32 1, i32 1, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvkm_disp, ptr %109, i32 0, i32 1, i32 1, i32 4
  %136 = load i32, ptr %15, align 4
  %137 = getelementptr inbounds %struct.nvkm_conn, ptr %8, i32 0, i32 2, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, ptr %16, align 8
  %141 = zext i8 %140 to i32
  %142 = load i8, ptr %50, align 1
  %143 = zext i8 %142 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.4, ptr noundef %135, i32 noundef %136, i32 noundef %139, i32 noundef %141, i32 noundef %143) #10
  br label %144

144:                                              ; preds = %130, %128, %114, %112, %87, %82, %65, %60, %49
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6)
  br label %145

145:                                              ; preds = %144, %4
  %146 = phi i32 [ 0, %144 ], [ -12, %4 ]
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_conn_hpd(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvif_notify_conn_rep_v0, align 8
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 4
  %20 = getelementptr i8, ptr %0, i32 -8
  %21 = getelementptr i8, ptr %0, i32 -7
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, ptr %20, align 4
  %25 = zext i8 %24 to i32
  %26 = load i8, ptr %10, align 1
  %27 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef %19, i32 noundef %12, i32 noundef %23, i32 noundef %25, i32 noundef %27) #10
  br label %28

28:                                               ; preds = %16, %1
  %29 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = tail call i32 @nvkm_gpio_get(ptr noundef %8, i32 noundef 0, i8 noundef zeroext -1, i8 noundef zeroext %31) #8
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i8 2, i8 1
  %35 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %2, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 6
  %37 = zext i8 %34 to i32
  call void @nvkm_event_send(ptr noundef %36, i32 noundef %37, i32 noundef %12, ptr noundef nonnull %2, i32 noundef 8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 9}
