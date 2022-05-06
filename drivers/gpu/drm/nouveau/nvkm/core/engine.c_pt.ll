; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/engine.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/engine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.135, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.135 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.95, %struct.anon.96, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.95 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.96 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@nvkm_engine = dso_local constant %struct.nvkm_subdev_func { ptr @nvkm_engine_dtor, ptr @nvkm_engine_preinit, ptr null, ptr @nvkm_engine_info, ptr @nvkm_engine_init, ptr @nvkm_engine_fini, ptr @nvkm_engine_intr }, align 4
@nvkm_engine_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&engine->use.mutex\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: init skipped, engine has no users\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: one-time init running...\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: one-time init failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: one-time init completed in %lldus\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_engine_chsw_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_engine_func, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i1 %4(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i1 [ %7, %6 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_engine_unref(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_engine, ptr %2, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %2, i32 0, i32 3, i32 1
  %7 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %5, ptr noundef %6) #5
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %2, i32 0, i32 1
  %10 = tail call i32 @nvkm_subdev_fini(ptr noundef %9, i1 noundef zeroext false) #5
  %11 = getelementptr inbounds %struct.nvkm_engine, ptr %2, i32 0, i32 3, i32 2
  store i8 0, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %6) #5
  br label %12

12:                                               ; preds = %8, %4
  store ptr null, ptr %0, align 4
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_engine_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %17, %3
  %8 = phi i32 [ %15, %17 ], [ %5, %3 ]
  %9 = add i32 %8, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #5, !srcloc !8
  br label %10

10:                                               ; preds = %10, %7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %8, i32 %9, ptr elementtype(i32) %4) #5, !srcloc !9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %19, label %17, !prof !10

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %14, %3
  %20 = phi i32 [ 0, %3 ], [ 0, %17 ], [ %8, %14 ]
  %21 = add i32 %20, 1
  %22 = or i32 %21, %20
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24, !prof !10

24:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #5
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 3, i32 1
  tail call void @mutex_lock(ptr noundef %28) #5
  %29 = load volatile i32, ptr %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %41, %27
  %32 = phi i32 [ %39, %41 ], [ %29, %27 ]
  %33 = add i32 %32, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #5, !srcloc !8
  br label %34

34:                                               ; preds = %34, %31
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %32, i32 %33, ptr elementtype(i32) %4) #5, !srcloc !9
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  %39 = extractvalue { i32, i32 } %35, 1
  %40 = icmp eq i32 %39, %32
  br i1 %40, label %43, label %41, !prof !10

41:                                               ; preds = %38
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %31

43:                                               ; preds = %41, %38, %27
  %44 = phi i32 [ 0, %27 ], [ 0, %41 ], [ %32, %38 ]
  %45 = add i32 %44, 1
  %46 = or i32 %45, %44
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %49, label %48, !prof !10

48:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #5
  br label %49

49:                                               ; preds = %48, %43
  %50 = icmp eq i32 %44, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 3, i32 2
  store i8 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1
  %54 = tail call i32 @nvkm_subdev_init(ptr noundef %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  store i8 0, ptr %52, align 4
  tail call void @mutex_unlock(ptr noundef %28) #5
  %57 = inttoptr i32 %54 to ptr
  br label %60

58:                                               ; preds = %51
  store volatile i32 1, ptr %4, align 4
  br label %59

59:                                               ; preds = %58, %49
  tail call void @mutex_unlock(ptr noundef %28) #5
  br label %60

60:                                               ; preds = %59, %56, %25, %1
  %61 = phi ptr [ %57, %56 ], [ %0, %25 ], [ %0, %59 ], [ null, %1 ]
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_engine_tile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_engine_func, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 33
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_fb, ptr %11, i32 0, i32 5
  %13 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %12, i32 0, i32 %1
  tail call void %5(ptr noundef %0, i32 noundef %1, ptr noundef %13) #5
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_engine_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr %4(ptr noundef %2) #5
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_engine_preinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_engine_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #5
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_engine_info(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_engine_func, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @nvkm_engine_ref(ptr noundef %4)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.nvkm_engine_func, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %10, i64 noundef %1, ptr noundef %2) #5
  %17 = icmp eq ptr %10, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nvkm_engine, ptr %10, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_engine, ptr %10, i32 0, i32 3, i32 1
  %21 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %19, ptr noundef %20) #5
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_engine, ptr %10, i32 0, i32 1
  %24 = tail call i32 @nvkm_subdev_fini(ptr noundef %23, i1 noundef zeroext false) #5
  %25 = getelementptr inbounds %struct.nvkm_engine, ptr %10, i32 0, i32 3, i32 2
  store i8 0, ptr %25, align 4
  tail call void @mutex_unlock(ptr noundef %20) #5
  br label %28

26:                                               ; preds = %9
  %27 = ptrtoint ptr %10 to i32
  br label %28

28:                                               ; preds = %26, %22, %18, %12, %3
  %29 = phi i32 [ %27, %26 ], [ -38, %3 ], [ %16, %18 ], [ %16, %22 ], [ %16, %12 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_engine_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 80
  %8 = load i8, ptr %7, align 4, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 4
  br i1 %13, label %14, label %110

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef %17) #6
  br label %110

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.nvkm_engine_func, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 8
  %25 = load i8, ptr %24, align 4, !range !11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef %34) #6
  br label %35

35:                                               ; preds = %31, %27
  %36 = tail call i64 @ktime_get() #5
  %37 = tail call i64 @llvm.abs.i64(i64 %36, i1 false) #5
  %38 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %37, i32 0) #7, !srcloc !12
  %39 = extractvalue { i64, i32 } %38, 0
  %40 = extractvalue { i64, i32 } %38, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %37, i64 %39, i32 %40) #7, !srcloc !13
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = icmp slt i64 %36, 0
  %44 = lshr i64 %42, 9
  %45 = sub nsw i64 0, %44
  %46 = select i1 %43, i64 %44, i64 %45
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.nvkm_engine_func, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %2) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %35
  %53 = load i32, ptr %28, align 4
  %54 = icmp ugt i32 %53, 4
  br i1 %54, label %55, label %110

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.4, ptr noundef %59, i32 noundef %50) #6
  br label %110

60:                                               ; preds = %35
  store i8 1, ptr %24, align 4
  %61 = tail call i64 @ktime_get() #5
  %62 = tail call i64 @llvm.abs.i64(i64 %61, i1 false) #5
  %63 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %62, i32 0) #7, !srcloc !12
  %64 = extractvalue { i64, i32 } %63, 0
  %65 = extractvalue { i64, i32 } %63, 1
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %62, i64 %64, i32 %65) #7, !srcloc !13
  %67 = load i32, ptr %28, align 4
  %68 = icmp ugt i32 %67, 4
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = icmp slt i64 %61, 0
  %71 = extractvalue { i64, i32 } %66, 0
  %72 = lshr i64 %71, 9
  %73 = sub nsw i64 0, %72
  %74 = select i1 %70, i64 %73, i64 %72
  %75 = add nsw i64 %74, %46
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.5, ptr noundef %79, i64 noundef %75) #6
  br label %80

80:                                               ; preds = %69, %60, %23, %18
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr inbounds %struct.nvkm_engine_func, ptr %81, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = tail call i32 %83(ptr noundef %2) #5
  br label %87

87:                                               ; preds = %85, %80
  %88 = phi i32 [ %86, %85 ], [ 0, %80 ]
  %89 = getelementptr inbounds %struct.nvkm_fb, ptr %6, i32 0, i32 5, i32 1
  %90 = icmp eq ptr %6, null
  br i1 %90, label %110, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %89, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %106, %91
  %95 = phi i32 [ %107, %106 ], [ 0, %91 ]
  %96 = load ptr, ptr %2, align 4
  %97 = getelementptr inbounds %struct.nvkm_engine_func, ptr %96, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 33
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_fb, ptr %103, i32 0, i32 5
  %105 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %104, i32 0, i32 %95
  tail call void %98(ptr noundef %2, i32 noundef %95, ptr noundef %105) #5
  br label %106

106:                                              ; preds = %100, %94
  %107 = add nuw nsw i32 %95, 1
  %108 = load i32, ptr %89, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %94, label %110

110:                                              ; preds = %106, %91, %87, %55, %52, %14, %10
  %111 = phi i32 [ 0, %14 ], [ 0, %10 ], [ %50, %55 ], [ %50, %52 ], [ %88, %87 ], [ %88, %91 ], [ %88, %106 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_engine_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_engine_func, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %3, i1 noundef zeroext %1) #5
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_engine_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_engine_func, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #5
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_engine_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_engine, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %7) #5
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 3
  store volatile i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 3, i32 1
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_engine_ctor.__key) #5
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 4
  %13 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %11, ptr noundef %12, i1 noundef zeroext %4) #5
  br i1 %13, label %23, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef %12) #6
  br label %25

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 2
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %18, %14
  %26 = phi i32 [ 0, %23 ], [ -19, %18 ], [ -19, %14 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_engine_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 88) #8
  store ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_engine, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %11) #5
  store ptr %0, ptr %8, align 8
  %12 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 3
  store volatile i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 3, i32 1
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_engine_ctor.__key) #5
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 1, i32 4
  %17 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %15, ptr noundef %16, i1 noundef zeroext %4) #5
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef %16) #6
  br label %29

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 2
  store i32 0, ptr %28, align 8
  br label %29

29:                                               ; preds = %27, %22, %18, %6
  %30 = phi i32 [ -12, %6 ], [ 0, %27 ], [ -19, %22 ], [ -19, %18 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 770080, i64 2148260051, i64 2148260077, i64 2148260124, i64 2148260146, i64 2148260174, i64 2148260194}
!9 = !{i64 756143, i64 756167, i64 756188, i64 756205, i64 756222}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{i64 635319, i64 635346, i64 635368, i64 635396}
!13 = !{i64 635727, i64 635754, i64 635787, i64 635808, i64 635835, i64 635861}
