; ModuleID = '/llk/IR/drivers/video/fbdev/core/sysfillrect.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/sysfillrect.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_fillrect\22\09\09\09\09\09"
module asm "__kstrtabns_sys_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [55 x i8] c"\013cfb_fillrect(): unknown rop, defaulting to ROP_COPY\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\013sys_fillrect(): unknown rop, defaulting to ROP_COPY\0A\00", align 1
@__kstrtab_sys_fillrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_fillrect = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_fillrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_fillrect to i32), ptr @__kstrtab_sys_fillrect, ptr @__kstrtabns_sys_fillrect }, section "___ksymtab+sys_fillrect", align 4
@__UNIQUE_ID_author259 = internal constant [53 x i8] c"sysfillrect.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [60 x i8] c"sysfillrect.description=Generic fill rectangle (sys-to-sys)\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [54 x i8] c"sysfillrect.file=drivers/video/fbdev/core/sysfillrect\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [24 x i8] c"sysfillrect.license=GPL\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"drivers/video/fbdev/core/fb_draw.h\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"pixel_to_pat(): unsupported pixelformat %d\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__ksymtab_sys_fillrect], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sys_fillrect(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %122

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %21 [
    i32 2, label %15
    i32 4, label %15
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %17, i32 %19
  br label %23

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ]
  %25 = load i32, ptr %24, align 4
  switch i32 %8, label %40 [
    i32 1, label %26
    i32 2, label %28
    i32 4, label %30
    i32 8, label %32
    i32 12, label %34
    i32 16, label %36
    i32 24, label %38
    i32 32, label %41
  ]

26:                                               ; preds = %23
  %27 = sub i32 0, %25
  br label %41

28:                                               ; preds = %23
  %29 = mul i32 %25, 1431655765
  br label %41

30:                                               ; preds = %23
  %31 = mul i32 %25, 286331153
  br label %41

32:                                               ; preds = %23
  %33 = mul i32 %25, 16843009
  br label %41

34:                                               ; preds = %23
  %35 = mul i32 %25, 16781313
  br label %41

36:                                               ; preds = %23
  %37 = mul i32 %25, 65537
  br label %41

38:                                               ; preds = %23
  %39 = mul i32 %25, 16777217
  br label %41

40:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %8) #4
  br label %41

41:                                               ; preds = %40, %38, %36, %34, %32, %30, %28, %26, %23
  %42 = phi i32 [ 0, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %23 ]
  %43 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = and i32 %45, -4
  %47 = inttoptr i32 %46 to ptr
  %48 = shl i32 %45, 3
  %49 = and i32 %48, 24
  %50 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %51, 3
  %55 = mul i32 %54, %53
  %56 = load i32, ptr %1, align 4
  %57 = mul i32 %56, %8
  %58 = add i32 %49, %55
  %59 = add i32 %58, %57
  %60 = urem i32 32, %8
  %61 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fb_ops, ptr %62, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %41
  %67 = tail call i32 %64(ptr noundef %0) #4
  br label %68

68:                                               ; preds = %66, %41
  %69 = icmp eq i32 %60, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %74 [
    i32 1, label %76
    i32 0, label %73
  ]

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %70
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %76

76:                                               ; preds = %74, %73, %70
  %77 = phi ptr [ @bitfill_aligned, %74 ], [ @bitfill_aligned, %73 ], [ @bitfill_aligned_rev, %70 ]
  %78 = icmp eq i32 %6, 0
  br i1 %78, label %122, label %79

79:                                               ; preds = %76
  %80 = mul i32 %8, %4
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ %59, %79 ], [ %91, %81 ]
  %83 = phi ptr [ %47, %79 ], [ %87, %81 ]
  %84 = phi i32 [ %6, %79 ], [ %85, %81 ]
  %85 = add i32 %84, -1
  %86 = ashr i32 %82, 5
  %87 = getelementptr i32, ptr %83, i32 %86
  %88 = and i32 %82, 31
  tail call void %77(ptr noundef %0, ptr noundef %87, i32 noundef %88, i32 noundef %42, i32 noundef %80, i32 noundef 32) #4, !callees !8
  %89 = load i32, ptr %52, align 4
  %90 = shl i32 %89, 3
  %91 = add i32 %90, %88
  %92 = icmp eq i32 %85, 0
  br i1 %92, label %122, label %81

93:                                               ; preds = %68
  %94 = sub i32 %8, %60
  %95 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  switch i32 %96, label %98 [
    i32 1, label %100
    i32 0, label %97
  ]

97:                                               ; preds = %93
  br label %100

98:                                               ; preds = %93
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %100

100:                                              ; preds = %98, %97, %93
  %101 = phi ptr [ @bitfill_unaligned, %98 ], [ @bitfill_unaligned, %97 ], [ @bitfill_unaligned_rev, %93 ]
  %102 = icmp eq i32 %6, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %100
  %104 = mul i32 %8, %4
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ %59, %103 ], [ %120, %105 ]
  %107 = phi ptr [ %47, %103 ], [ %111, %105 ]
  %108 = phi i32 [ %6, %103 ], [ %109, %105 ]
  %109 = add i32 %108, -1
  %110 = sdiv i32 %106, 32
  %111 = getelementptr i32, ptr %107, i32 %110
  %112 = and i32 %106, 31
  %113 = urem i32 %112, %8
  %114 = shl i32 %42, %113
  %115 = sub i32 %8, %113
  %116 = lshr i32 %42, %115
  %117 = or i32 %116, %114
  tail call void %101(ptr noundef %0, ptr noundef %111, i32 noundef %112, i32 noundef %117, i32 noundef %94, i32 noundef %60, i32 noundef %104, i32 noundef 32) #4, !callees !9
  %118 = load i32, ptr %52, align 4
  %119 = shl i32 %118, 3
  %120 = add i32 %119, %112
  %121 = icmp eq i32 %109, 0
  br i1 %121, label %122, label %105

122:                                              ; preds = %105, %100, %81, %76, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_aligned_rev(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %79, label %8

8:                                                ; preds = %6
  %9 = shl nsw i32 -1, %2
  %10 = add i32 %4, %2
  %11 = urem i32 %10, %5
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = icmp ugt i32 %10, %5
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = icmp eq i32 %11, 0
  %17 = select i1 %16, i32 -1, i32 %13
  %18 = load i32, ptr %1, align 4
  %19 = and i32 %9, %3
  %20 = and i32 %19, %17
  %21 = xor i32 %18, %20
  store i32 %21, ptr %1, align 4
  br label %79

22:                                               ; preds = %8
  %23 = load i32, ptr %1, align 4
  %24 = and i32 %9, %3
  %25 = xor i32 %23, %24
  store i32 %25, ptr %1, align 4
  %26 = sub i32 %10, %5
  %27 = udiv i32 %26, %5
  %28 = getelementptr i32, ptr %1, i32 1
  %29 = icmp ugt i32 %27, 7
  br i1 %29, label %34, label %30

30:                                               ; preds = %34, %22
  %31 = phi i32 [ %27, %22 ], [ %61, %34 ]
  %32 = phi ptr [ %28, %22 ], [ %62, %34 ]
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %72, label %64

34:                                               ; preds = %34, %22
  %35 = phi ptr [ %62, %34 ], [ %28, %22 ]
  %36 = phi ptr [ %56, %34 ], [ %1, %22 ]
  %37 = phi i32 [ %61, %34 ], [ %27, %22 ]
  %38 = getelementptr i32, ptr %36, i32 2
  %39 = load i32, ptr %35, align 4
  %40 = xor i32 %39, %3
  store i32 %40, ptr %35, align 4
  %41 = getelementptr i32, ptr %36, i32 3
  %42 = load i32, ptr %38, align 4
  %43 = xor i32 %42, %3
  store i32 %43, ptr %38, align 4
  %44 = getelementptr i32, ptr %36, i32 4
  %45 = load i32, ptr %41, align 4
  %46 = xor i32 %45, %3
  store i32 %46, ptr %41, align 4
  %47 = getelementptr i32, ptr %36, i32 5
  %48 = load i32, ptr %44, align 4
  %49 = xor i32 %48, %3
  store i32 %49, ptr %44, align 4
  %50 = getelementptr i32, ptr %36, i32 6
  %51 = load i32, ptr %47, align 4
  %52 = xor i32 %51, %3
  store i32 %52, ptr %47, align 4
  %53 = getelementptr i32, ptr %36, i32 7
  %54 = load i32, ptr %50, align 4
  %55 = xor i32 %54, %3
  store i32 %55, ptr %50, align 4
  %56 = getelementptr i32, ptr %36, i32 8
  %57 = load i32, ptr %53, align 4
  %58 = xor i32 %57, %3
  store i32 %58, ptr %53, align 4
  %59 = load i32, ptr %56, align 4
  %60 = xor i32 %59, %3
  store i32 %60, ptr %56, align 4
  %61 = add i32 %37, -8
  %62 = getelementptr i32, ptr %36, i32 9
  %63 = icmp ugt i32 %61, 7
  br i1 %63, label %34, label %30

64:                                               ; preds = %64, %30
  %65 = phi ptr [ %68, %64 ], [ %32, %30 ]
  %66 = phi i32 [ %67, %64 ], [ %31, %30 ]
  %67 = add i32 %66, -1
  %68 = getelementptr i32, ptr %65, i32 1
  %69 = load i32, ptr %65, align 4
  %70 = xor i32 %69, %3
  store i32 %70, ptr %65, align 4
  %71 = icmp eq i32 %67, 0
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %30
  %73 = phi ptr [ %32, %30 ], [ %68, %64 ]
  %74 = icmp eq i32 %11, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %73, align 4
  %77 = and i32 %13, %3
  %78 = xor i32 %76, %77
  store i32 %78, ptr %73, align 4
  br label %79

79:                                               ; preds = %75, %72, %15, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_aligned(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %6
  %9 = shl nsw i32 -1, %2
  %10 = add i32 %4, %2
  %11 = urem i32 %10, %5
  %12 = shl nsw i32 -1, %11
  %13 = icmp ugt i32 %10, %5
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = xor i32 %12, -1
  %16 = icmp eq i32 %11, 0
  %17 = select i1 %16, i32 -1, i32 %15
  %18 = and i32 %17, %9
  %19 = load i32, ptr %1, align 4
  %20 = xor i32 %19, %3
  br label %64

21:                                               ; preds = %8
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %1, align 4
  %25 = xor i32 %24, %3
  %26 = and i32 %25, %9
  %27 = xor i32 %26, %24
  store i32 %27, ptr %1, align 4
  %28 = getelementptr i32, ptr %1, i32 1
  %29 = sub i32 %10, %5
  br label %30

30:                                               ; preds = %23, %21
  %31 = phi i32 [ %29, %23 ], [ %4, %21 ]
  %32 = phi ptr [ %28, %23 ], [ %1, %21 ]
  %33 = udiv i32 %31, %5
  %34 = icmp ugt i32 %33, 7
  br i1 %34, label %39, label %35

35:                                               ; preds = %39, %30
  %36 = phi i32 [ %33, %30 ], [ %50, %39 ]
  %37 = phi ptr [ %32, %30 ], [ %49, %39 ]
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %58, label %52

39:                                               ; preds = %39, %30
  %40 = phi ptr [ %49, %39 ], [ %32, %30 ]
  %41 = phi i32 [ %50, %39 ], [ %33, %30 ]
  %42 = getelementptr i32, ptr %40, i32 1
  store i32 %3, ptr %40, align 4
  %43 = getelementptr i32, ptr %40, i32 2
  store i32 %3, ptr %42, align 4
  %44 = getelementptr i32, ptr %40, i32 3
  store i32 %3, ptr %43, align 4
  %45 = getelementptr i32, ptr %40, i32 4
  store i32 %3, ptr %44, align 4
  %46 = getelementptr i32, ptr %40, i32 5
  store i32 %3, ptr %45, align 4
  %47 = getelementptr i32, ptr %40, i32 6
  store i32 %3, ptr %46, align 4
  %48 = getelementptr i32, ptr %40, i32 7
  store i32 %3, ptr %47, align 4
  %49 = getelementptr i32, ptr %40, i32 8
  store i32 %3, ptr %48, align 4
  %50 = add i32 %41, -8
  %51 = icmp ugt i32 %50, 7
  br i1 %51, label %39, label %35

52:                                               ; preds = %52, %35
  %53 = phi ptr [ %56, %52 ], [ %37, %35 ]
  %54 = phi i32 [ %55, %52 ], [ %36, %35 ]
  %55 = add i32 %54, -1
  %56 = getelementptr i32, ptr %53, i32 1
  store i32 %3, ptr %53, align 4
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %52

58:                                               ; preds = %52, %35
  %59 = phi ptr [ %37, %35 ], [ %56, %52 ]
  %60 = icmp eq i32 %11, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %59, align 4
  %63 = xor i32 %62, %3
  br label %64

64:                                               ; preds = %61, %14
  %65 = phi i32 [ %20, %14 ], [ %12, %61 ]
  %66 = phi i32 [ %18, %14 ], [ %63, %61 ]
  %67 = phi i32 [ %19, %14 ], [ %3, %61 ]
  %68 = phi ptr [ %1, %14 ], [ %59, %61 ]
  %69 = and i32 %66, %65
  %70 = xor i32 %69, %67
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %64, %58, %6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_unaligned_rev(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %8
  %11 = shl nsw i32 -1, %2
  %12 = add i32 %6, %2
  %13 = urem i32 %12, %7
  %14 = shl nsw i32 -1, %13
  %15 = xor i32 %14, -1
  %16 = icmp ugt i32 %12, %7
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = icmp eq i32 %13, 0
  %19 = select i1 %18, i32 -1, i32 %15
  %20 = load i32, ptr %1, align 4
  %21 = and i32 %11, %3
  %22 = and i32 %21, %19
  %23 = xor i32 %20, %22
  store i32 %23, ptr %1, align 4
  br label %91

24:                                               ; preds = %10
  %25 = load i32, ptr %1, align 4
  %26 = and i32 %11, %3
  %27 = xor i32 %25, %26
  store i32 %27, ptr %1, align 4
  %28 = sub i32 %12, %7
  %29 = shl i32 %3, %4
  %30 = lshr i32 %3, %5
  %31 = or i32 %30, %29
  %32 = udiv i32 %28, %7
  %33 = getelementptr i32, ptr %1, i32 1
  %34 = icmp ugt i32 %32, 3
  br i1 %34, label %42, label %35

35:                                               ; preds = %42, %24
  %36 = phi i32 [ %31, %24 ], [ %69, %42 ]
  %37 = phi i32 [ %32, %24 ], [ %70, %42 ]
  %38 = phi ptr [ %33, %24 ], [ %71, %42 ]
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %38, align 4
  br label %73

42:                                               ; preds = %42, %24
  %43 = phi ptr [ %71, %42 ], [ %33, %24 ]
  %44 = phi ptr [ %59, %42 ], [ %1, %24 ]
  %45 = phi i32 [ %70, %42 ], [ %32, %24 ]
  %46 = phi i32 [ %69, %42 ], [ %31, %24 ]
  %47 = getelementptr i32, ptr %44, i32 2
  %48 = load i32, ptr %43, align 4
  %49 = xor i32 %48, %46
  store i32 %49, ptr %43, align 4
  %50 = shl i32 %46, %4
  %51 = lshr i32 %46, %5
  %52 = or i32 %50, %51
  %53 = getelementptr i32, ptr %44, i32 3
  %54 = load i32, ptr %47, align 4
  %55 = xor i32 %54, %52
  store i32 %55, ptr %47, align 4
  %56 = shl i32 %52, %4
  %57 = lshr i32 %52, %5
  %58 = or i32 %56, %57
  %59 = getelementptr i32, ptr %44, i32 4
  %60 = load i32, ptr %53, align 4
  %61 = xor i32 %60, %58
  store i32 %61, ptr %53, align 4
  %62 = shl i32 %58, %4
  %63 = lshr i32 %58, %5
  %64 = or i32 %62, %63
  %65 = load i32, ptr %59, align 4
  %66 = xor i32 %65, %64
  store i32 %66, ptr %59, align 4
  %67 = shl i32 %64, %4
  %68 = lshr i32 %64, %5
  %69 = or i32 %67, %68
  %70 = add i32 %45, -4
  %71 = getelementptr i32, ptr %44, i32 5
  %72 = icmp ugt i32 %70, 3
  br i1 %72, label %42, label %35

73:                                               ; preds = %73, %40
  %74 = phi i32 [ %41, %40 ], [ %78, %73 ]
  %75 = phi i32 [ %37, %40 ], [ %77, %73 ]
  %76 = phi i32 [ %36, %40 ], [ %81, %73 ]
  %77 = add i32 %75, -1
  %78 = xor i32 %74, %76
  %79 = shl i32 %76, %4
  %80 = lshr i32 %76, %5
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %77, 0
  br i1 %82, label %83, label %73

83:                                               ; preds = %73
  store i32 %78, ptr %38, align 4
  br label %84

84:                                               ; preds = %83, %35
  %85 = phi i32 [ %81, %83 ], [ %36, %35 ]
  %86 = icmp eq i32 %13, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %38, align 4
  %89 = and i32 %85, %15
  %90 = xor i32 %88, %89
  store i32 %90, ptr %38, align 4
  br label %91

91:                                               ; preds = %87, %84, %17, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_unaligned(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %8
  %11 = shl nsw i32 -1, %2
  %12 = add i32 %6, %2
  %13 = urem i32 %12, %7
  %14 = shl nsw i32 -1, %13
  %15 = icmp ugt i32 %12, %7
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = xor i32 %14, -1
  %18 = icmp eq i32 %13, 0
  %19 = select i1 %18, i32 -1, i32 %17
  %20 = and i32 %19, %11
  %21 = load i32, ptr %1, align 4
  %22 = xor i32 %21, %3
  %23 = and i32 %20, %22
  %24 = xor i32 %23, %21
  store i32 %24, ptr %1, align 4
  br label %84

25:                                               ; preds = %10
  %26 = load i32, ptr %1, align 4
  %27 = xor i32 %26, %3
  %28 = and i32 %27, %11
  %29 = xor i32 %28, %26
  store i32 %29, ptr %1, align 4
  %30 = sub i32 %12, %7
  %31 = shl i32 %3, %4
  %32 = lshr i32 %3, %5
  %33 = or i32 %32, %31
  %34 = udiv i32 %30, %7
  %35 = getelementptr i32, ptr %1, i32 1
  %36 = icmp ugt i32 %34, 3
  br i1 %36, label %42, label %37

37:                                               ; preds = %42, %25
  %38 = phi i32 [ %33, %25 ], [ %61, %42 ]
  %39 = phi i32 [ %34, %25 ], [ %62, %42 ]
  %40 = phi ptr [ %35, %25 ], [ %63, %42 ]
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %75, label %65

42:                                               ; preds = %42, %25
  %43 = phi ptr [ %63, %42 ], [ %35, %25 ]
  %44 = phi ptr [ %55, %42 ], [ %1, %25 ]
  %45 = phi i32 [ %62, %42 ], [ %34, %25 ]
  %46 = phi i32 [ %61, %42 ], [ %33, %25 ]
  %47 = getelementptr i32, ptr %44, i32 2
  store i32 %46, ptr %43, align 4
  %48 = shl i32 %46, %4
  %49 = lshr i32 %46, %5
  %50 = or i32 %48, %49
  %51 = getelementptr i32, ptr %44, i32 3
  store i32 %50, ptr %47, align 4
  %52 = shl i32 %50, %4
  %53 = lshr i32 %50, %5
  %54 = or i32 %52, %53
  %55 = getelementptr i32, ptr %44, i32 4
  store i32 %54, ptr %51, align 4
  %56 = shl i32 %54, %4
  %57 = lshr i32 %54, %5
  %58 = or i32 %56, %57
  store i32 %58, ptr %55, align 4
  %59 = shl i32 %58, %4
  %60 = lshr i32 %58, %5
  %61 = or i32 %59, %60
  %62 = add i32 %45, -4
  %63 = getelementptr i32, ptr %44, i32 5
  %64 = icmp ugt i32 %62, 3
  br i1 %64, label %42, label %37

65:                                               ; preds = %65, %37
  %66 = phi ptr [ %70, %65 ], [ %40, %37 ]
  %67 = phi i32 [ %69, %65 ], [ %39, %37 ]
  %68 = phi i32 [ %73, %65 ], [ %38, %37 ]
  %69 = add i32 %67, -1
  %70 = getelementptr i32, ptr %66, i32 1
  store i32 %68, ptr %66, align 4
  %71 = shl i32 %68, %4
  %72 = lshr i32 %68, %5
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %69, 0
  br i1 %74, label %75, label %65

75:                                               ; preds = %65, %37
  %76 = phi i32 [ %38, %37 ], [ %73, %65 ]
  %77 = phi ptr [ %40, %37 ], [ %70, %65 ]
  %78 = icmp eq i32 %13, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %77, align 4
  %81 = xor i32 %80, %76
  %82 = and i32 %81, %14
  %83 = xor i32 %82, %76
  store i32 %83, ptr %77, align 4
  br label %84

84:                                               ; preds = %79, %75, %16, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{ptr @bitfill_aligned, ptr @bitfill_aligned_rev}
!9 = !{ptr @bitfill_unaligned, ptr @bitfill_unaligned_rev}
