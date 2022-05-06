; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_dl.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_dl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_dl_body_pool = type { i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_dl_body = type { %struct.list_head, %struct.list_head, %struct.refcount_struct, ptr, ptr, i32, i32, i32, i32 }
%struct.vsp1_dl_entry = type { i32, i32 }
%struct.vsp1_dl_list = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.list_head, ptr, ptr, i8, %struct.list_head, i32 }
%struct.vsp1_dl_manager = type { i32, i8, ptr, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_dl_cmd_pool = type { i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, ptr }
%struct.vsp1_dl_ext_cmd = type { ptr, %struct.list_head, i8, i32, ptr, i32, i32, ptr, i32 }
%struct.vsp1_dl_header = type { i32, [8 x %struct.vsp1_dl_header_list], i32, i32 }
%struct.vsp1_dl_header_list = type { i32, i32 }
%struct.vsp1_dl_ext_header = type { i32, i16, i16, i32, i32, i32 }
%struct.vsp1_pre_ext_dl_body = type { i32, i32, i32, i32 }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@vsp1_dl_body_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [38 x i8] c"drivers/media/platform/vsp1/vsp1_dl.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DLB size exceeded (max %u)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_body_pool_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 6
  store ptr %0, ptr %9, align 4
  %10 = shl i32 %2, 3
  %11 = add i32 %10, %3
  %12 = mul i32 %11, %1
  %13 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 44) #10
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 3
  store ptr null, ptr %17, align 4
  br label %53

18:                                               ; preds = %8
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #11
  %21 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @dma_alloc_attrs(ptr noundef %25, i32 noundef %12, ptr noundef nonnull %6, i32 noundef 3264, i32 noundef 4) #10
  %27 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %30) #10
  br label %53

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 5
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 4
  store volatile ptr %33, ptr %33, align 8
  %34 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %6, i32 0, i32 4, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %36, %31
  %37 = phi i32 [ %51, %36 ], [ 0, %31 ]
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr %struct.vsp1_dl_body, ptr %38, i32 %37, i32 3
  store ptr %6, ptr %39, align 4
  %40 = getelementptr %struct.vsp1_dl_body, ptr %38, i32 %37, i32 8
  store i32 %2, ptr %40, align 4
  %41 = load i32, ptr %6, align 8
  %42 = mul i32 %37, %11
  %43 = add i32 %41, %42
  %44 = getelementptr %struct.vsp1_dl_body, ptr %38, i32 %37, i32 5
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %27, align 8
  %46 = getelementptr i8, ptr %45, i32 %42
  %47 = getelementptr %struct.vsp1_dl_body, ptr %38, i32 %37, i32 4
  store ptr %46, ptr %47, align 4
  %48 = getelementptr %struct.vsp1_dl_body, ptr %38, i32 %37, i32 1
  %49 = load ptr, ptr %34, align 4
  store ptr %48, ptr %34, align 4
  store ptr %33, ptr %48, align 4
  %50 = getelementptr %struct.vsp1_dl_body, ptr %38, i32 %37, i32 1, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %48, ptr %49, align 4
  %51 = add nuw i32 %37, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %54, label %36

53:                                               ; preds = %29, %18, %16
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %54

54:                                               ; preds = %53, %36, %31, %4
  %55 = phi ptr [ null, %4 ], [ %6, %31 ], [ null, %53 ], [ %6, %36 ]
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dl_body_pool_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %5, i32 noundef %14, i32 noundef 4) #10
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_body_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %0, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %5, i32 -8
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr i8, ptr %5, i32 8
  store volatile i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ null, %1 ], [ %8, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dl_body_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !11
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %25, label %10, !prof !12

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %25

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %12 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 7
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %14, i32 0, i32 5
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %18, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %17, ptr %20, align 4
  store ptr %19, ptr %17, align 4
  %22 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %17, ptr %21, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %23, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %16) #10
  br label %25

25:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dl_body_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp uge i32 %5, %7
  %9 = load i1, ptr @vsp1_dl_body_write.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %3
  store i1 true, ptr @vsp1_dl_body_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %7) #10
  br label %13

13:                                               ; preds = %12, %3
  br i1 %8, label %24, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.vsp1_dl_body, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %4, align 4
  %18 = getelementptr %struct.vsp1_dl_entry, ptr %16, i32 %17
  store i32 %1, ptr %18, align 1
  %19 = load ptr, ptr %15, align 4
  %20 = load i32, ptr %4, align 4
  %21 = getelementptr %struct.vsp1_dl_entry, ptr %19, i32 %20, i32 1
  store i32 %2, ptr %21, align 1
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %4, align 4
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_get_pre_cmd(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %9, i32 0, i32 5
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %9, i32 0, i32 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %13, i32 -4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %21

21:                                               ; preds = %15, %5
  %22 = phi ptr [ null, %5 ], [ %16, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  store ptr %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ %3, %1 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_dl_list_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr inbounds %struct.vsp1_dl_list, ptr %5, i32 0, i32 10
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vsp1_dl_list, ptr %5, i32 0, i32 10, i32 1
  store ptr %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ null, %1 ], [ %5, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dl_list_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef nonnull %0)
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %8, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %7) #10
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__vsp1_dl_list_put(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = getelementptr i8, ptr %12, i32 -48
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %13)
  %14 = load ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %7, %3
  store i8 0, ptr %4, align 4
  tail call fastcc void @vsp1_dl_list_bodies_put(ptr noundef nonnull %0)
  %17 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %18, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %22, i32 0, i32 5
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #10
  %25 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %18, i32 0, i32 1
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %26, i32 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %25, ptr %28, align 4
  store ptr %27, ptr %25, align 4
  %30 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %18, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %25, ptr %29, align 4
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %31, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %24) #10
  br label %33

33:                                               ; preds = %20, %16
  %34 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %35, i32 0, i32 3
  store i32 0, ptr %38, align 4
  %39 = load ptr, ptr %35, align 4
  %40 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %39, i32 0, i32 5
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #10
  %42 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %35, i32 0, i32 1
  %43 = load ptr, ptr %35, align 4
  %44 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %43, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %42, ptr %45, align 4
  store ptr %44, ptr %42, align 4
  %47 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %35, i32 0, i32 1, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %42, ptr %46, align 4
  %48 = load ptr, ptr %35, align 4
  %49 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %48, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %41) #10
  br label %50

50:                                               ; preds = %37, %33
  store ptr null, ptr %17, align 4
  store ptr null, ptr %34, align 4
  %51 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.vsp1_dl_body, ptr %52, i32 0, i32 7
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %55, i32 0, i32 4, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %0, ptr %57, align 4
  store ptr %56, ptr %0, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %0, ptr %58, align 4
  br label %60

60:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @vsp1_dl_list_get_body0(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_dl_list_add_body(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_dl_body, ptr %1, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #10, !srcloc !15
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !12

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 2, %2 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %12) #10
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 6, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %1, ptr %15, align 4
  store ptr %14, ptr %1, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %1, ptr %16, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_dl_list_add_chain(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 9
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.vsp1_dl_list, ptr %1, i32 0, i32 10
  %5 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 10
  %6 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 10, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr %4, ptr %6, align 4
  store ptr %5, ptr %4, align 4
  %8 = getelementptr inbounds %struct.vsp1_dl_list, ptr %1, i32 0, i32 10, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %4, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dl_list_commit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 10
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  tail call fastcc void @vsp1_dl_list_fill_header(ptr noundef %0, i1 noundef zeroext %7)
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %15, %10 ], [ %8, %2 ]
  %12 = getelementptr i8, ptr %11, i32 -48
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %5
  tail call fastcc void @vsp1_dl_list_fill_header(ptr noundef %12, i1 noundef zeroext %14)
  %15 = load ptr, ptr %11, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %2
  %18 = and i32 %1, -2
  %19 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 11
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %4, i32 0, i32 3
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #10
  %22 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %4, i32 0, i32 1
  %23 = load i8, ptr %22, align 4, !range !14
  %24 = icmp eq i8 %23, 0
  %25 = load ptr, ptr %3, align 4
  br i1 %24, label %38, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %25, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %25, align 4
  %30 = shl i32 %29, 2
  %31 = add i32 %30, 260
  %32 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vsp1_device, ptr %28, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %33) #10, !srcloc !17
  %37 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %25, i32 0, i32 5
  br label %83

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %25, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %65, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %25, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %25, align 4
  %46 = shl i32 %45, 2
  %47 = getelementptr inbounds %struct.vsp1_device, ptr %44, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %46
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load ptr, ptr %3, align 4
  br label %65

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %25, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %80, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vsp1_dl_list, ptr %57, i32 0, i32 11
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %64, !prof !12

64:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 887, i32 noundef 9, ptr noundef null) #10
  br label %77

65:                                               ; preds = %53, %38
  %66 = phi ptr [ %54, %53 ], [ %25, %38 ]
  %67 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %66, align 4
  %70 = shl i32 %69, 2
  %71 = add i32 %70, 260
  %72 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.vsp1_device, ptr %68, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #10, !srcloc !17
  br label %77

77:                                               ; preds = %65, %64
  %78 = phi ptr [ %56, %64 ], [ %39, %65 ]
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %59, %55
  %81 = phi ptr [ null, %55 ], [ %57, %59 ], [ %79, %77 ]
  %82 = phi ptr [ %56, %55 ], [ %56, %59 ], [ %78, %77 ]
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %81) #10
  br label %83

83:                                               ; preds = %80, %26
  %84 = phi ptr [ %82, %80 ], [ %37, %26 ]
  store ptr %0, ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vsp1_dl_list_fill_header(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_dl_header, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_dl_body, ptr %9, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 3
  store i32 %12, ptr %7, align 1
  %13 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %30, label %16

16:                                               ; preds = %16, %2
  %17 = phi ptr [ %28, %16 ], [ %14, %2 ]
  %18 = phi ptr [ %21, %16 ], [ %7, %2 ]
  %19 = phi i32 [ %20, %16 ], [ 0, %2 ]
  %20 = add i32 %19, 1
  %21 = getelementptr %struct.vsp1_dl_header_list, ptr %18, i32 1
  %22 = getelementptr inbounds %struct.vsp1_dl_body, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.vsp1_dl_header_list, ptr %18, i32 1, i32 1
  store i32 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.vsp1_dl_body, ptr %17, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 3
  store i32 %27, ptr %21, align 1
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %30, label %16

30:                                               ; preds = %16, %2
  %31 = phi i32 [ 0, %2 ], [ %20, %16 ]
  %32 = load ptr, ptr %5, align 4
  store i32 %31, ptr %32, align 1
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.vsp1_dl_header, ptr %33, i32 0, i32 3
  store i32 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %4, i32 0, i32 1
  %36 = load i8, ptr %35, align 4, !range !14
  %37 = icmp eq i8 %36, 0
  %38 = or i1 %37, %1
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.vsp1_dl_header, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 1
  %43 = or i32 %42, 2
  store i32 %43, ptr %41, align 1
  %44 = load i8, ptr %35, align 4, !range !14
  %45 = icmp ne i8 %44, 0
  br label %46

46:                                               ; preds = %39, %30
  %47 = phi i1 [ true, %30 ], [ %45, %39 ]
  %48 = and i1 %47, %1
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.vsp1_dl_header, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 1
  %53 = or i32 %52, 1
  store i32 %53, ptr %51, align 1
  br label %54

54:                                               ; preds = %49, %46
  br i1 %1, label %59, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 -28
  br label %64

59:                                               ; preds = %54
  %60 = load i8, ptr %35, align 4, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 4
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi ptr [ %63, %62 ], [ %58, %55 ]
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.vsp1_dl_header, ptr %67, i32 0, i32 2
  store i32 %66, ptr %68, align 1
  br label %69

69:                                               ; preds = %64, %59
  %70 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %143, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %71, i32 0, i32 2
  store i16 0, ptr %74, align 1
  %75 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %109, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %76, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %70, align 4
  %82 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %81, i32 0, i32 3
  store i32 %80, ptr %82, align 1
  %83 = load ptr, ptr %75, align 4
  %84 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %83, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = trunc i32 %85 to i16
  %87 = load ptr, ptr %70, align 4
  %88 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %87, i32 0, i32 1
  store i16 %86, ptr %88, align 1
  %89 = load ptr, ptr %70, align 4
  %90 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %89, i32 0, i32 2
  %91 = load i16, ptr %90, align 1
  %92 = or i16 %91, 512
  store i16 %92, ptr %90, align 1
  %93 = load ptr, ptr %75, align 4
  %94 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %93, i32 0, i32 2
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %93, i32 0, i32 4
  %98 = load ptr, ptr %97, align 4
  store i32 %96, ptr %98, align 1
  %99 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %93, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %97, align 4
  %102 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %101, i32 0, i32 1
  store i32 %100, ptr %102, align 1
  %103 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %93, i32 0, i32 8
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %97, align 4
  %106 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %105, i32 0, i32 2
  store i32 %104, ptr %106, align 1
  %107 = load ptr, ptr %97, align 4
  %108 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %107, i32 0, i32 3
  store i32 0, ptr %108, align 1
  br label %109

109:                                              ; preds = %78, %73
  %110 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %143, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %111, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %70, align 4
  %117 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %116, i32 0, i32 5
  store i32 %115, ptr %117, align 1
  %118 = load ptr, ptr %110, align 4
  %119 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %118, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %70, align 4
  %122 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %121, i32 0, i32 4
  store i32 %120, ptr %122, align 1
  %123 = load ptr, ptr %70, align 4
  %124 = getelementptr inbounds %struct.vsp1_dl_ext_header, ptr %123, i32 0, i32 2
  %125 = load i16, ptr %124, align 1
  %126 = or i16 %125, 256
  store i16 %126, ptr %124, align 1
  %127 = load ptr, ptr %110, align 4
  %128 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %127, i32 0, i32 2
  %129 = load i8, ptr %128, align 4
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %127, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  store i32 %130, ptr %132, align 1
  %133 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %127, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = load ptr, ptr %131, align 4
  %136 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %135, i32 0, i32 1
  store i32 %134, ptr %136, align 1
  %137 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %127, i32 0, i32 8
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %131, align 4
  %140 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %139, i32 0, i32 2
  store i32 %138, ptr %140, align 1
  %141 = load ptr, ptr %131, align 4
  %142 = getelementptr inbounds %struct.vsp1_pre_ext_dl_body, ptr %141, i32 0, i32 3
  store i32 0, ptr %142, align 1
  br label %143

143:                                              ; preds = %113, %109, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_dlm_irq_frame_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %8 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %14)
  br label %78

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  %21 = load i32, ptr %0, align 4
  %22 = shl i32 %21, 2
  %23 = getelementptr inbounds %struct.vsp1_device, ptr %20, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %19, %15
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, 28
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.vsp1_dl_list, ptr %37, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = and i32 %41, -3
  store i32 %45, ptr %40, align 4
  br label %46

46:                                               ; preds = %44, %39, %35
  %47 = phi i32 [ 2, %44 ], [ 0, %39 ], [ 0, %35 ]
  %48 = load ptr, ptr %16, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.vsp1_dl_list, ptr %48, i32 0, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 4
  %54 = and i32 %52, -5
  store i32 %54, ptr %51, align 4
  %55 = load ptr, ptr %36, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %55)
  %56 = load ptr, ptr %16, align 4
  store ptr %56, ptr %36, align 4
  store ptr null, ptr %16, align 4
  %57 = or i32 %47, %53
  %58 = or i32 %57, 1
  br label %59

59:                                               ; preds = %50, %46
  %60 = phi i32 [ %58, %50 ], [ %47, %46 ]
  %61 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.vsp1_dl_list, ptr %62, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %66, align 4
  %70 = shl i32 %69, 2
  %71 = add i32 %70, 260
  %72 = getelementptr inbounds %struct.vsp1_dl_list, ptr %62, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.vsp1_device, ptr %68, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #10, !srcloc !17
  %77 = load ptr, ptr %61, align 4
  store ptr %77, ptr %16, align 4
  br label %78

78:                                               ; preds = %64, %12
  %79 = phi ptr [ %61, %64 ], [ %13, %12 ]
  %80 = phi i32 [ %60, %64 ], [ 1, %12 ]
  store ptr null, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %59, %29, %19
  %82 = phi i32 [ 0, %19 ], [ 0, %29 ], [ %60, %59 ], [ %80, %78 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %83 = load i16, ptr %8, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dlm_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vsp1_device_info, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vsp1_device_info, ptr %3, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 3
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %20, %14 ]
  %16 = mul i32 %15, 36
  %17 = add i32 %16, 284
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 545) #10, !srcloc !17
  %20 = add nuw i32 %15, 1
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.vsp1_device_info, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %14, label %25

25:                                               ; preds = %14, %8, %1
  %26 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16781585) #10, !srcloc !17
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i8, ptr %29, i32 276
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 4) #10, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dlm_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %5)
  %6 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %7)
  %8 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @__vsp1_dl_list_put(ptr noundef %9)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  store ptr null, ptr %4, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_dlm_dl_body_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %3, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %3, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %7, i32 -8
  %11 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr i8, ptr %7, i32 8
  store volatile i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi ptr [ null, %1 ], [ %10, %9 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_dlm_create(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %151, label %7

7:                                                ; preds = %3
  store i32 %1, ptr %5, align 4
  %8 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_device_info, ptr %9, i32 0, i32 10
  %11 = load i8, ptr %10, align 4, !range !14
  %12 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 1
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 4
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 4, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vsp1_device_info, ptr %9, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 80, i32 96
  %22 = add i32 %2, 1
  %23 = tail call ptr @vsp1_dl_body_pool_create(ptr noundef %0, i32 noundef %22, i32 noundef 256, i32 noundef %21)
  %24 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 8
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %151, label %26

26:                                               ; preds = %7
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %84, label %28

28:                                               ; preds = %79, %26
  %29 = phi i32 [ %82, %79 ], [ 0, %26 ]
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 60) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 6
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 6, i32 1
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 1
  store ptr %5, ptr %36, align 8
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %37, i32 0, i32 5
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #10
  %40 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %37, i32 0, i32 4
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #10
  %44 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 5
  store ptr null, ptr %44, align 8
  br label %54

45:                                               ; preds = %33
  %46 = getelementptr i8, ptr %41, i32 -8
  %47 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %41, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = getelementptr i8, ptr %41, i32 8
  store volatile i32 1, ptr %51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #10
  %52 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 5
  store ptr %46, ptr %52, align 8
  %53 = icmp eq ptr %46, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45, %43
  tail call void @kfree(ptr noundef nonnull %31) #10
  br label %55

55:                                               ; preds = %54, %28
  tail call void @vsp1_dlm_destroy(ptr noundef nonnull %5)
  br label %151

56:                                               ; preds = %45
  %57 = getelementptr i8, ptr %41, i32 32
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 3
  %60 = getelementptr i8, ptr %41, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %59
  %63 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 2
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %41, i32 20
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %59
  %67 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 4
  store i32 %66, ptr %67, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(76) %62, i8 0, i32 76, i1 false) #10
  %68 = load i32, ptr %64, align 4
  %69 = getelementptr inbounds %struct.vsp1_dl_header, ptr %62, i32 0, i32 1, i32 0, i32 1
  store i32 %68, ptr %69, align 1
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr inbounds %struct.vsp1_device_info, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %56
  %76 = load ptr, ptr %63, align 4
  %77 = getelementptr i8, ptr %76, i32 76
  %78 = getelementptr inbounds %struct.vsp1_dl_list, ptr %31, i32 0, i32 3
  store ptr %77, ptr %78, align 8
  br label %79

79:                                               ; preds = %75, %56
  %80 = load ptr, ptr %16, align 4
  store ptr %31, ptr %16, align 4
  store ptr %15, ptr %31, align 8
  %81 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %80, ptr %81, align 4
  store volatile ptr %31, ptr %80, align 4
  %82 = add nuw i32 %29, 1
  %83 = icmp eq i32 %82, %2
  br i1 %83, label %84, label %28

84:                                               ; preds = %79, %26
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr inbounds %struct.vsp1_device_info, ptr %85, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1024
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %151, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %92 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3520, i32 noundef 32) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %147, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 6
  store ptr %0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 5
  store i32 0, ptr %96, align 8
  %97 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 4
  store volatile ptr %97, ptr %97, align 8
  %98 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 4, i32 1
  store ptr %97, ptr %98, align 4
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 40) #10
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %101, label %103, !prof !8

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 3
  store ptr null, ptr %102, align 4
  br label %146

103:                                              ; preds = %94
  %104 = extractvalue { i32, i1 } %99, 0
  %105 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %104, i32 noundef 3520) #11
  %106 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 3
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  br i1 %107, label %146, label %108

108:                                              ; preds = %103
  %109 = mul i32 %2, 176
  %110 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 1
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = tail call ptr @dma_alloc_attrs(ptr noundef %112, i32 noundef %109, ptr noundef nonnull %92, i32 noundef 3264, i32 noundef 4) #10
  %114 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %92, i32 0, i32 2
  store ptr %113, ptr %114, align 8
  %115 = icmp eq ptr %113, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  br i1 %27, label %117, label %121

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 9
  store ptr %92, ptr %118, align 4
  br label %151

119:                                              ; preds = %108
  %120 = load ptr, ptr %106, align 4
  tail call void @kfree(ptr noundef %120) #10
  br label %146

121:                                              ; preds = %121, %116
  %122 = phi i32 [ %144, %121 ], [ 0, %116 ]
  %123 = load ptr, ptr %106, align 4
  %124 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122
  %125 = mul i32 %122, 176
  %126 = add i32 %125, 16
  store ptr %92, ptr %124, align 4
  %127 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 2
  store i8 3, ptr %127, align 4
  %128 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 5
  store i32 1, ptr %128, align 4
  %129 = load ptr, ptr %114, align 8
  %130 = getelementptr i8, ptr %129, i32 %125
  %131 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 4
  store ptr %130, ptr %131, align 4
  %132 = load i32, ptr %92, align 8
  %133 = add i32 %132, %125
  %134 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 6
  store i32 %133, ptr %134, align 4
  %135 = load ptr, ptr %114, align 8
  %136 = getelementptr i8, ptr %135, i32 %126
  %137 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 7
  store ptr %136, ptr %137, align 4
  %138 = load i32, ptr %92, align 8
  %139 = add i32 %138, %126
  %140 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 8
  store i32 %139, ptr %140, align 4
  %141 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 1
  %142 = load ptr, ptr %98, align 4
  store ptr %141, ptr %98, align 4
  store ptr %97, ptr %141, align 4
  %143 = getelementptr %struct.vsp1_dl_ext_cmd, ptr %123, i32 %122, i32 1, i32 1
  store ptr %142, ptr %143, align 4
  store volatile ptr %141, ptr %142, align 4
  %144 = add nuw i32 %122, 1
  %145 = icmp eq i32 %144, %2
  br i1 %145, label %149, label %121

146:                                              ; preds = %119, %103, %101
  tail call void @kfree(ptr noundef nonnull %92) #10
  br label %147

147:                                              ; preds = %146, %90
  %148 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 9
  store ptr null, ptr %148, align 4
  tail call void @vsp1_dlm_destroy(ptr noundef nonnull %5)
  br label %151

149:                                              ; preds = %121
  %150 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %5, i32 0, i32 9
  store ptr %92, ptr %150, align 4
  br label %151

151:                                              ; preds = %149, %147, %117, %84, %55, %7, %3
  %152 = phi ptr [ null, %147 ], [ null, %3 ], [ null, %7 ], [ null, %55 ], [ %5, %149 ], [ %5, %84 ], [ %5, %117 ]
  ret ptr %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_dlm_destroy(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %40, label %7

7:                                                ; preds = %38, %3
  %8 = phi ptr [ %9, %38 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %13 = getelementptr inbounds %struct.vsp1_dl_list, ptr %8, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.vsp1_dl_body, ptr %14, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %38, label %23, !prof !12

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #10
  br label %38

24:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %25 = getelementptr inbounds %struct.vsp1_dl_body, ptr %14, i32 0, i32 7
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vsp1_dl_body, ptr %14, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %27, i32 0, i32 5
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %30 = getelementptr inbounds %struct.vsp1_dl_body, ptr %14, i32 0, i32 1
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %31, i32 0, i32 4, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr %30, ptr %33, align 4
  store ptr %32, ptr %30, align 4
  %35 = getelementptr inbounds %struct.vsp1_dl_body, ptr %14, i32 0, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %30, ptr %34, align 4
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %36, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %29) #10
  br label %38

38:                                               ; preds = %24, %23, %21, %7
  tail call fastcc void @vsp1_dl_list_bodies_put(ptr noundef %8) #10
  tail call void @kfree(ptr noundef %8) #10
  %39 = icmp eq ptr %9, %4
  br i1 %39, label %40, label %7

40:                                               ; preds = %38, %3
  %41 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %42, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vsp1_device, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %42, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %42, align 4
  tail call void @dma_free_attrs(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %46, i32 noundef %55, i32 noundef 4) #10
  br label %56

56:                                               ; preds = %48, %44
  %57 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %42, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %58) #10
  tail call void @kfree(ptr noundef nonnull %42) #10
  br label %59

59:                                               ; preds = %56, %40
  %60 = getelementptr inbounds %struct.vsp1_dl_manager, ptr %0, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %61, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %61, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.vsp1_device, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %61, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %61, align 4
  tail call void @dma_free_attrs(ptr noundef %71, i32 noundef %73, ptr noundef nonnull %65, i32 noundef %74, i32 noundef 4) #10
  br label %75

75:                                               ; preds = %67, %63
  %76 = getelementptr inbounds %struct.vsp1_dl_cmd_pool, ptr %61, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #10
  tail call void @kfree(ptr noundef nonnull %61) #10
  br label %78

78:                                               ; preds = %75, %59, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vsp1_dl_list_bodies_put(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_dl_list, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %36, label %5

5:                                                ; preds = %34, %1
  %6 = phi ptr [ %7, %34 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.vsp1_dl_body, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !11
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %34, label %19, !prof !12

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #10
  br label %34

20:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %21 = getelementptr inbounds %struct.vsp1_dl_body, ptr %6, i32 0, i32 7
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vsp1_dl_body, ptr %6, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %23, i32 0, i32 5
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #10
  %26 = getelementptr inbounds %struct.vsp1_dl_body, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %27, i32 0, i32 4, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %26, ptr %29, align 4
  store ptr %28, ptr %26, align 4
  %31 = getelementptr inbounds %struct.vsp1_dl_body, ptr %6, i32 0, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %26, ptr %30, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.vsp1_dl_body_pool, ptr %32, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %25) #10
  br label %34

34:                                               ; preds = %20, %19, %17, %5
  %35 = icmp eq ptr %7, %2
  br i1 %35, label %36, label %5

36:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148268124}
!10 = !{i64 601616, i64 2148103182, i64 2148103208, i64 2148103255, i64 2148103277, i64 2148103305, i64 2148103325}
!11 = !{i64 2148170259, i64 2148170291, i64 2148170320, i64 2148170354, i64 2148170385, i64 2148170408}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149312088}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148167902, i64 2148167934, i64 2148167963, i64 2148167997, i64 2148168028, i64 2148168051}
!16 = !{i64 2152522295}
!17 = !{i64 4981202}
!18 = !{i64 4981620}
!19 = !{i64 2152521073}
!20 = !{i64 2149238173}
!21 = !{i64 2149233997}
!22 = !{i64 2149234072, i64 2149234099, i64 2149234146, i64 2149234168, i64 2149234196, i64 2149234216}
!23 = !{i64 2149261176}
