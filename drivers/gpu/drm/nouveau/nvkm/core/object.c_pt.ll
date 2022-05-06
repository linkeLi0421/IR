; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/object.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/object.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\016nouveau: %s:%08x:%08x: %s children...\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\016nouveau: %s:%08x:%08x: %s running...\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013nouveau: %s:%08x:%08x: %s failed with %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\016nouveau: %s:%08x:%08x: %s completed in %lldus\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\012nouveau: %s:%08x:%08x: failed to restart, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\016nouveau: %s:%08x:%08x: init running...\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\016nouveau: %s:%08x:%08x: init children...\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\016nouveau: %s:%08x:%08x: init completed in %lldus\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"\013nouveau: %s:%08x:%08x: init failed with %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\016nouveau: %s:%08x:%08x: destroy children...\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\016nouveau: %s:%08x:%08x: destroy running...\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"\016nouveau: %s:%08x:%08x: destroy completed in %lldus...\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/object.c\00", align 1
@nvkm_object_func = internal constant %struct.nvkm_object_func zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_object_search(ptr noundef readonly %0, i64 noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_client, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %20, %5
  %10 = phi ptr [ %22, %20 ], [ %7, %5 ]
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %20

16:                                               ; preds = %9
  %17 = icmp ult i64 %12, %1
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %15, %14 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %9

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %10, i32 -56
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi ptr [ %0, %3 ], [ %25, %24 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %33, label %32, !prof !8

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29, %26, %20, %5
  %34 = phi ptr [ inttoptr (i32 -22 to ptr), %32 ], [ %27, %26 ], [ %27, %29 ], [ inttoptr (i32 -2 to ptr), %5 ], [ inttoptr (i32 -2 to ptr), %20 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_object_remove(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = ptrtoint ptr %2 to i32
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %2, ptr noundef %9) #6
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_object_insert(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 9
  %9 = load i64, ptr %8, align 8
  br label %19

10:                                               ; preds = %19
  %11 = icmp ult i64 %9, %23
  %12 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2
  %13 = icmp ugt i64 %9, %23
  %14 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  %15 = select i1 %13, ptr %14, ptr %21
  %16 = select i1 %11, ptr %12, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %10, %7
  %20 = phi ptr [ %5, %7 ], [ %17, %10 ]
  %21 = phi ptr [ %4, %7 ], [ %16, %10 ]
  %22 = getelementptr i8, ptr %20, i32 -8
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %9, %23
  br i1 %24, label %34, label %10

25:                                               ; preds = %10, %1
  %26 = phi ptr [ null, %1 ], [ %20, %10 ]
  %27 = phi ptr [ %4, %1 ], [ %16, %10 ]
  %28 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 10
  %29 = ptrtoint ptr %26 to i32
  store i32 %29, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 10, i32 1
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 10, i32 2
  store ptr null, ptr %31, align 4
  store ptr %28, ptr %27, align 4
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 5
  tail call void @rb_insert_color(ptr noundef %28, ptr noundef %33) #6
  br label %34

34:                                               ; preds = %25, %19
  %35 = phi i1 [ true, %25 ], [ false, %19 ]
  ret i1 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_mthd(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_object_func, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -19, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_ntfy(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_map(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.nvkm_object_func, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !9

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ -19, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_unmap(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_object_func, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_rd08(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, ptr noundef %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_rd16(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, ptr noundef %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_rd32(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, ptr noundef %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_wr08(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_wr16(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_wr32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_object_func, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, i32 noundef %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -19, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_object_func, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -19, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_fini(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = select i1 %1, ptr @.str, ptr @.str.1
  %4 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_client, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 3
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %3) #7
  br label %16

16:                                               ; preds = %9, %2
  %17 = tail call i64 @ktime_get() #6
  %18 = tail call i64 @llvm.abs.i64(i64 %17, i1 false) #6
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %18, i32 0) #8, !srcloc !10
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = extractvalue { i64, i32 } %19, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %18, i64 %20, i32 %21) #8, !srcloc !11
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = icmp slt i64 %17, 0
  %25 = lshr i64 %23, 9
  %26 = sub nsw i64 0, %25
  %27 = select i1 %24, i64 %25, i64 %26
  %28 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 6
  br label %29

29:                                               ; preds = %33, %16
  %30 = phi ptr [ %28, %16 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %28
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -20
  %35 = tail call i32 @nvkm_object_fini(ptr noundef %34, i1 noundef zeroext %1)
  %36 = icmp ne i32 %35, 0
  %37 = and i1 %36, %1
  br i1 %37, label %111, label %29

38:                                               ; preds = %29
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.nvkm_client, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 8
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nvkm_client, ptr %39, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %44, i32 noundef %46, i32 noundef %48, ptr noundef nonnull %3) #7
  br label %50

50:                                               ; preds = %43, %38
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds %struct.nvkm_object_func, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = tail call i32 %53(ptr noundef %0, i1 noundef zeroext %1) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr inbounds %struct.nvkm_client, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.nvkm_client, ptr %59, i32 0, i32 1
  %65 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %64, i32 noundef %66, i32 noundef %68, ptr noundef nonnull %3, i32 noundef %56) #7
  br label %70

70:                                               ; preds = %63, %58
  br i1 %1, label %95, label %71

71:                                               ; preds = %70, %55, %50
  %72 = tail call i64 @ktime_get() #6
  %73 = tail call i64 @llvm.abs.i64(i64 %72, i1 false) #6
  %74 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %73, i32 0) #8, !srcloc !10
  %75 = extractvalue { i64, i32 } %74, 0
  %76 = extractvalue { i64, i32 } %74, 1
  %77 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %73, i64 %75, i32 %76) #8, !srcloc !11
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.nvkm_client, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 8
  %81 = icmp ugt i32 %80, 3
  br i1 %81, label %82, label %124

82:                                               ; preds = %71
  %83 = icmp slt i64 %72, 0
  %84 = extractvalue { i64, i32 } %77, 0
  %85 = lshr i64 %84, 9
  %86 = sub nsw i64 0, %85
  %87 = select i1 %83, i64 %86, i64 %85
  %88 = add nsw i64 %87, %27
  %89 = getelementptr inbounds %struct.nvkm_client, ptr %78, i32 0, i32 1
  %90 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %89, i32 noundef %91, i32 noundef %93, ptr noundef nonnull %3, i64 noundef %88) #7
  br label %124

95:                                               ; preds = %70
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr inbounds %struct.nvkm_object_func, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = tail call i32 %98(ptr noundef %0) #6
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr inbounds %struct.nvkm_client, ptr %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %107 = load i32, ptr %106, align 8
  %108 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %101) #7
  br label %111

111:                                              ; preds = %103, %100, %95, %33
  %112 = phi ptr [ %28, %95 ], [ %28, %103 ], [ %28, %100 ], [ %31, %33 ]
  %113 = phi i32 [ %56, %95 ], [ %56, %103 ], [ %56, %100 ], [ %35, %33 ]
  %114 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %28
  br i1 %116, label %124, label %117

117:                                              ; preds = %117, %111
  %118 = phi ptr [ %122, %117 ], [ %115, %111 ]
  %119 = getelementptr i8, ptr %118, i32 -20
  %120 = tail call i32 @nvkm_object_init(ptr noundef %119)
  %121 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %28
  br i1 %123, label %124, label %117

124:                                              ; preds = %117, %111, %82, %71
  %125 = phi i32 [ 0, %82 ], [ 0, %71 ], [ %113, %111 ], [ %113, %117 ]
  ret i32 %125
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %8, i32 noundef %10, i32 noundef %12) #7
  br label %14

14:                                               ; preds = %7, %1
  %15 = tail call i64 @ktime_get() #6
  %16 = tail call i64 @llvm.abs.i64(i64 %15, i1 false) #6
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #8, !srcloc !10
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = extractvalue { i64, i32 } %17, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %18, i32 %19) #8, !srcloc !11
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = icmp slt i64 %15, 0
  %23 = lshr i64 %21, 9
  %24 = sub nsw i64 0, %23
  %25 = select i1 %22, i64 %23, i64 %24
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.nvkm_object_func, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = tail call i32 %28(ptr noundef %0) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %90

33:                                               ; preds = %30, %14
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.nvkm_client, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = icmp ugt i32 %36, 3
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nvkm_client, ptr %34, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %39, i32 noundef %41, i32 noundef %43) #7
  br label %45

45:                                               ; preds = %38, %33
  %46 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 6
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ %46, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %49, i32 -20
  %53 = tail call i32 @nvkm_object_init(ptr noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %47, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %46
  br i1 %58, label %90, label %83

59:                                               ; preds = %47
  %60 = tail call i64 @ktime_get() #6
  %61 = tail call i64 @llvm.abs.i64(i64 %60, i1 false) #6
  %62 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %61, i32 0) #8, !srcloc !10
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = extractvalue { i64, i32 } %62, 1
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %61, i64 %63, i32 %64) #8, !srcloc !11
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.nvkm_client, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 8
  %69 = icmp ugt i32 %68, 3
  br i1 %69, label %70, label %110

70:                                               ; preds = %59
  %71 = icmp slt i64 %60, 0
  %72 = extractvalue { i64, i32 } %65, 0
  %73 = lshr i64 %72, 9
  %74 = sub nsw i64 0, %73
  %75 = select i1 %71, i64 %74, i64 %73
  %76 = add nsw i64 %75, %25
  %77 = getelementptr inbounds %struct.nvkm_client, ptr %66, i32 0, i32 1
  %78 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %77, i32 noundef %79, i32 noundef %81, i64 noundef %76) #7
  br label %110

83:                                               ; preds = %83, %55
  %84 = phi ptr [ %88, %83 ], [ %57, %55 ]
  %85 = getelementptr i8, ptr %84, i32 -20
  %86 = tail call i32 @nvkm_object_fini(ptr noundef %85, i1 noundef zeroext false)
  %87 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %46
  br i1 %89, label %90, label %83

90:                                               ; preds = %83, %55, %30
  %91 = phi i32 [ %31, %30 ], [ %53, %55 ], [ %53, %83 ]
  %92 = load ptr, ptr %2, align 4
  %93 = getelementptr inbounds %struct.nvkm_client, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.nvkm_client, ptr %92, i32 0, i32 1
  %98 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %99 = load i32, ptr %98, align 8
  %100 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %91) #7
  br label %103

103:                                              ; preds = %96, %90
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr inbounds %struct.nvkm_object_func, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = tail call i32 %106(ptr noundef %0, i1 noundef zeroext false) #6
  br label %110

110:                                              ; preds = %108, %103, %70, %59
  %111 = phi i32 [ 0, %70 ], [ 0, %59 ], [ %91, %108 ], [ %91, %103 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_object_dtor(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %8, i32 noundef %10, i32 noundef %12) #7
  br label %14

14:                                               ; preds = %7, %1
  %15 = tail call i64 @ktime_get() #6
  %16 = tail call i64 @llvm.abs.i64(i64 %15, i1 false) #6
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #8, !srcloc !10
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = extractvalue { i64, i32 } %17, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %18, i32 %19) #8, !srcloc !11
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = icmp slt i64 %15, 0
  %23 = lshr i64 %21, 9
  %24 = sub nsw i64 0, %23
  %25 = select i1 %22, i64 %23, i64 %24
  %26 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %55, label %29

29:                                               ; preds = %53, %14
  %30 = phi ptr [ %32, %53 ], [ %27, %14 ]
  %31 = getelementptr i8, ptr %30, i32 -20
  %32 = load ptr, ptr %30, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %31, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 284, i32 noundef 9, ptr noundef null) #6
  br label %53

38:                                               ; preds = %34
  %39 = tail call ptr @nvkm_object_dtor(ptr noundef nonnull %31) #6
  %40 = getelementptr i8, ptr %30, i32 36
  %41 = load i32, ptr %40, align 8
  %42 = ptrtoint ptr %40 to i32
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %30, i32 -16
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_client, ptr %46, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %40, ptr noundef %47) #6
  br label %48

48:                                               ; preds = %44, %38
  %49 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %30, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %49, align 4
  tail call void @kfree(ptr noundef %39) #6
  br label %53

53:                                               ; preds = %48, %37, %29
  %54 = icmp eq ptr %32, %26
  br i1 %54, label %55, label %29

55:                                               ; preds = %53, %14
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.nvkm_client, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 8
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.nvkm_client, ptr %56, i32 0, i32 1
  %62 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %61, i32 noundef %63, i32 noundef %65) #7
  br label %67

67:                                               ; preds = %60, %55
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr inbounds %struct.nvkm_object_func, ptr %68, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72, !prof !9

72:                                               ; preds = %67
  %73 = tail call i32 %70(ptr noundef %0) #6
  %74 = load ptr, ptr %0, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi ptr [ %68, %67 ], [ %74, %72 ]
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call ptr %77(ptr noundef %0) #6
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %80, %79 ], [ %0, %75 ]
  %83 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  tail call void @nvkm_engine_unref(ptr noundef %83) #6
  %84 = tail call i64 @ktime_get() #6
  %85 = tail call i64 @llvm.abs.i64(i64 %84, i1 false) #6
  %86 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %85, i32 0) #8, !srcloc !10
  %87 = extractvalue { i64, i32 } %86, 0
  %88 = extractvalue { i64, i32 } %86, 1
  %89 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %85, i64 %87, i32 %88) #8, !srcloc !11
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr inbounds %struct.nvkm_client, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 8
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %107

94:                                               ; preds = %81
  %95 = icmp slt i64 %84, 0
  %96 = extractvalue { i64, i32 } %89, 0
  %97 = lshr i64 %96, 9
  %98 = sub nsw i64 0, %97
  %99 = select i1 %95, i64 %98, i64 %97
  %100 = add nsw i64 %99, %25
  %101 = getelementptr inbounds %struct.nvkm_client, ptr %90, i32 0, i32 1
  %102 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %101, i32 noundef %103, i32 noundef %105, i64 noundef %100) #7
  br label %107

107:                                              ; preds = %94, %81
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_object_del(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 284, i32 noundef 9, ptr noundef null) #6
  br label %25

8:                                                ; preds = %4
  %9 = tail call ptr @nvkm_object_dtor(ptr noundef nonnull %2)
  store ptr %9, ptr %0, align 4
  %10 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 10
  %11 = load i32, ptr %10, align 8
  %12 = ptrtoint ptr %10 to i32
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %10, ptr noundef %17) #6
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 5
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 5, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %24) #6
  store ptr null, ptr %0, align 4
  br label %25

25:                                               ; preds = %18, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_engine_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_object_ctor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 {
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @nvkm_engine_ref(ptr noundef %8) #6
  %10 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 2
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 4
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 7
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 8
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 7
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 9
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 5
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 5, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 6
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 6, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nvkm_object, ptr %2, i32 0, i32 10
  %31 = ptrtoint ptr %30 to i32
  store i32 %31, ptr %30, align 8
  %32 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_engine_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_new_(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %5
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 72) #9
  store ptr %9, ptr %4, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  store ptr %0, ptr %9, align 8
  %12 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @nvkm_engine_ref(ptr noundef %16) #6
  %18 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 7
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 8
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 7
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 9
  store i64 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 5
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 5, i32 1
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 6
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 6, i32 1
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 10
  %39 = ptrtoint ptr %38 to i32
  store i32 %39, ptr %38, align 8
  %40 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %42

42:                                               ; preds = %41, %11, %7, %5
  %43 = phi i32 [ -12, %7 ], [ -38, %5 ], [ 0, %11 ], [ 0, %41 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_new(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @nvkm_object_func, ptr %6
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 72) #9
  store ptr %12, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  store ptr %8, ptr %12, align 8
  %15 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @nvkm_engine_ref(ptr noundef %19) #6
  %21 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 2
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 4
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 5
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 7
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 6
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 8
  store i64 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 7
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 9
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 5
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 5, i32 1
  store ptr %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 6
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 6, i32 1
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nvkm_object, ptr %12, i32 0, i32 10
  %42 = ptrtoint ptr %41 to i32
  store i32 %42, ptr %41, align 8
  %43 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %45, !prof !9

44:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %45

45:                                               ; preds = %44, %14, %10, %4
  %46 = phi i32 [ -12, %10 ], [ -38, %4 ], [ 0, %14 ], [ 0, %44 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 632402, i64 632429, i64 632451, i64 632479}
!11 = !{i64 632810, i64 632837, i64 632870, i64 632891, i64 632918, i64 632944}
