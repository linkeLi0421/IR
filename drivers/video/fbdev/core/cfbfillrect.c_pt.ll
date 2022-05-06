; ModuleID = '/llk/IR/drivers/video/fbdev/core/cfbfillrect.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/cfbfillrect.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfb_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22cfb_fillrect\22\09\09\09\09\09"
module asm "__kstrtabns_cfb_fillrect:\09\09\09\09\09"
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
@__kstrtab_cfb_fillrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfb_fillrect = external dso_local constant [0 x i8], align 1
@__ksymtab_cfb_fillrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfb_fillrect to i32), ptr @__kstrtab_cfb_fillrect, ptr @__kstrtabns_cfb_fillrect }, section "___ksymtab+cfb_fillrect", align 4
@__UNIQUE_ID_author259 = internal constant [57 x i8] c"cfbfillrect.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [68 x i8] c"cfbfillrect.description=Generic software accelerated fill rectangle\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [54 x i8] c"cfbfillrect.file=drivers/video/fbdev/core/cfbfillrect\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [24 x i8] c"cfbfillrect.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"drivers/video/fbdev/core/fb_draw.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"pixel_to_pat(): unsupported pixelformat %d\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__ksymtab_cfb_fillrect], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfb_fillrect(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %8) #3
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
  %67 = tail call i32 %64(ptr noundef %0) #3
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
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
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
  tail call void %77(ptr noundef %0, ptr noundef %87, i32 noundef %88, i32 noundef %42, i32 noundef %80, i32 noundef 32, i32 noundef 0) #3, !callees !8
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
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
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
  tail call void %101(ptr noundef %0, ptr noundef %111, i32 noundef %112, i32 noundef %117, i32 noundef %94, i32 noundef %60, i32 noundef %104, i32 noundef 32) #3, !callees !9
  %118 = load i32, ptr %52, align 4
  %119 = shl i32 %118, 3
  %120 = add i32 %119, %112
  %121 = icmp eq i32 %109, 0
  br i1 %121, label %122, label %105

122:                                              ; preds = %105, %100, %81, %76, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_aligned_rev(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %7
  %10 = shl nsw i32 -1, %2
  %11 = add i32 %4, %2
  %12 = urem i32 %11, %5
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = icmp ugt i32 %11, %5
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = icmp eq i32 %12, 0
  %18 = select i1 %17, i32 -1, i32 %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %20 = and i32 %10, %3
  %21 = and i32 %20, %18
  %22 = xor i32 %19, %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %22) #3, !srcloc !11
  br label %80

23:                                               ; preds = %9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %25 = and i32 %10, %3
  %26 = xor i32 %24, %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %26) #3, !srcloc !11
  %27 = sub i32 %11, %5
  %28 = udiv i32 %27, %5
  %29 = getelementptr i32, ptr %1, i32 1
  %30 = icmp ugt i32 %28, 7
  br i1 %30, label %35, label %31

31:                                               ; preds = %35, %23
  %32 = phi i32 [ %28, %23 ], [ %62, %35 ]
  %33 = phi ptr [ %29, %23 ], [ %63, %35 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %73, label %65

35:                                               ; preds = %35, %23
  %36 = phi ptr [ %63, %35 ], [ %29, %23 ]
  %37 = phi ptr [ %59, %35 ], [ %1, %23 ]
  %38 = phi i32 [ %62, %35 ], [ %28, %23 ]
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !10
  %40 = xor i32 %39, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %40) #3, !srcloc !11
  %41 = getelementptr i32, ptr %37, i32 2
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !10
  %43 = xor i32 %42, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %43) #3, !srcloc !11
  %44 = getelementptr i32, ptr %37, i32 3
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #3, !srcloc !10
  %46 = xor i32 %45, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %46) #3, !srcloc !11
  %47 = getelementptr i32, ptr %37, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #3, !srcloc !10
  %49 = xor i32 %48, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %49) #3, !srcloc !11
  %50 = getelementptr i32, ptr %37, i32 5
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !10
  %52 = xor i32 %51, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %52) #3, !srcloc !11
  %53 = getelementptr i32, ptr %37, i32 6
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #3, !srcloc !10
  %55 = xor i32 %54, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %55) #3, !srcloc !11
  %56 = getelementptr i32, ptr %37, i32 7
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #3, !srcloc !10
  %58 = xor i32 %57, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %58) #3, !srcloc !11
  %59 = getelementptr i32, ptr %37, i32 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #3, !srcloc !10
  %61 = xor i32 %60, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %61) #3, !srcloc !11
  %62 = add i32 %38, -8
  %63 = getelementptr i32, ptr %37, i32 9
  %64 = icmp ugt i32 %62, 7
  br i1 %64, label %35, label %31

65:                                               ; preds = %65, %31
  %66 = phi ptr [ %71, %65 ], [ %33, %31 ]
  %67 = phi i32 [ %68, %65 ], [ %32, %31 ]
  %68 = add i32 %67, -1
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #3, !srcloc !10
  %70 = xor i32 %69, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %70) #3, !srcloc !11
  %71 = getelementptr i32, ptr %66, i32 1
  %72 = icmp eq i32 %68, 0
  br i1 %72, label %73, label %65

73:                                               ; preds = %65, %31
  %74 = phi ptr [ %33, %31 ], [ %71, %65 ]
  %75 = icmp eq i32 %12, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #3, !srcloc !10
  %78 = and i32 %14, %3
  %79 = xor i32 %77, %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %79) #3, !srcloc !11
  br label %80

80:                                               ; preds = %76, %73, %16, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_aligned(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %7
  %10 = shl nsw i32 -1, %2
  %11 = add i32 %4, %2
  %12 = urem i32 %11, %5
  %13 = shl nsw i32 -1, %12
  %14 = icmp ugt i32 %11, %5
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = xor i32 %13, -1
  %17 = icmp eq i32 %12, 0
  %18 = select i1 %17, i32 -1, i32 %16
  %19 = and i32 %18, %10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %21 = xor i32 %20, %3
  %22 = and i32 %19, %21
  %23 = xor i32 %22, %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %23) #3, !srcloc !11
  br label %69

24:                                               ; preds = %9
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %28 = xor i32 %27, %3
  %29 = and i32 %28, %10
  %30 = xor i32 %29, %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %30) #3, !srcloc !11
  %31 = getelementptr i32, ptr %1, i32 1
  %32 = sub i32 %11, %5
  br label %33

33:                                               ; preds = %26, %24
  %34 = phi i32 [ %32, %26 ], [ %4, %24 ]
  %35 = phi ptr [ %31, %26 ], [ %1, %24 ]
  %36 = udiv i32 %34, %5
  %37 = icmp ugt i32 %36, 7
  br i1 %37, label %42, label %38

38:                                               ; preds = %42, %33
  %39 = phi i32 [ %36, %33 ], [ %53, %42 ]
  %40 = phi ptr [ %35, %33 ], [ %52, %42 ]
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %61, label %55

42:                                               ; preds = %42, %33
  %43 = phi ptr [ %52, %42 ], [ %35, %33 ]
  %44 = phi i32 [ %53, %42 ], [ %36, %33 ]
  %45 = getelementptr i32, ptr %43, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %3) #3, !srcloc !11
  %46 = getelementptr i32, ptr %43, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %3) #3, !srcloc !11
  %47 = getelementptr i32, ptr %43, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %3) #3, !srcloc !11
  %48 = getelementptr i32, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %3) #3, !srcloc !11
  %49 = getelementptr i32, ptr %43, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %3) #3, !srcloc !11
  %50 = getelementptr i32, ptr %43, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %3) #3, !srcloc !11
  %51 = getelementptr i32, ptr %43, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %3) #3, !srcloc !11
  %52 = getelementptr i32, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %3) #3, !srcloc !11
  %53 = add i32 %44, -8
  %54 = icmp ugt i32 %53, 7
  br i1 %54, label %42, label %38

55:                                               ; preds = %55, %38
  %56 = phi ptr [ %59, %55 ], [ %40, %38 ]
  %57 = phi i32 [ %58, %55 ], [ %39, %38 ]
  %58 = add i32 %57, -1
  %59 = getelementptr i32, ptr %56, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %3) #3, !srcloc !11
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %55

61:                                               ; preds = %55, %38
  %62 = phi ptr [ %40, %38 ], [ %59, %55 ]
  %63 = icmp eq i32 %12, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #3, !srcloc !10
  %66 = xor i32 %65, %3
  %67 = and i32 %66, %13
  %68 = xor i32 %67, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %68) #3, !srcloc !11
  br label %69

69:                                               ; preds = %64, %61, %15, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_unaligned_rev(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
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
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %21 = and i32 %11, %3
  %22 = and i32 %21, %19
  %23 = xor i32 %20, %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %23) #3, !srcloc !11
  br label %91

24:                                               ; preds = %10
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %26 = and i32 %11, %3
  %27 = xor i32 %25, %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %27) #3, !srcloc !11
  %28 = sub i32 %12, %7
  %29 = shl i32 %3, %4
  %30 = lshr i32 %3, %5
  %31 = or i32 %30, %29
  %32 = udiv i32 %28, %7
  %33 = getelementptr i32, ptr %1, i32 1
  %34 = icmp ugt i32 %32, 3
  br i1 %34, label %40, label %35

35:                                               ; preds = %40, %24
  %36 = phi i32 [ %31, %24 ], [ %67, %40 ]
  %37 = phi i32 [ %32, %24 ], [ %68, %40 ]
  %38 = phi ptr [ %33, %24 ], [ %69, %40 ]
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %83, label %71

40:                                               ; preds = %40, %24
  %41 = phi ptr [ %69, %40 ], [ %33, %24 ]
  %42 = phi ptr [ %59, %40 ], [ %1, %24 ]
  %43 = phi i32 [ %68, %40 ], [ %32, %24 ]
  %44 = phi i32 [ %67, %40 ], [ %31, %24 ]
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !10
  %46 = xor i32 %45, %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %46) #3, !srcloc !11
  %47 = getelementptr i32, ptr %42, i32 2
  %48 = shl i32 %44, %4
  %49 = lshr i32 %44, %5
  %50 = or i32 %48, %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #3, !srcloc !10
  %52 = xor i32 %51, %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %52) #3, !srcloc !11
  %53 = getelementptr i32, ptr %42, i32 3
  %54 = shl i32 %50, %4
  %55 = lshr i32 %50, %5
  %56 = or i32 %54, %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #3, !srcloc !10
  %58 = xor i32 %57, %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %58) #3, !srcloc !11
  %59 = getelementptr i32, ptr %42, i32 4
  %60 = shl i32 %56, %4
  %61 = lshr i32 %56, %5
  %62 = or i32 %60, %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #3, !srcloc !10
  %64 = xor i32 %63, %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %64) #3, !srcloc !11
  %65 = shl i32 %62, %4
  %66 = lshr i32 %62, %5
  %67 = or i32 %65, %66
  %68 = add i32 %43, -4
  %69 = getelementptr i32, ptr %42, i32 5
  %70 = icmp ugt i32 %68, 3
  br i1 %70, label %40, label %35

71:                                               ; preds = %71, %35
  %72 = phi ptr [ %78, %71 ], [ %38, %35 ]
  %73 = phi i32 [ %75, %71 ], [ %37, %35 ]
  %74 = phi i32 [ %81, %71 ], [ %36, %35 ]
  %75 = add i32 %73, -1
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #3, !srcloc !10
  %77 = xor i32 %76, %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %77) #3, !srcloc !11
  %78 = getelementptr i32, ptr %72, i32 1
  %79 = shl i32 %74, %4
  %80 = lshr i32 %74, %5
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %75, 0
  br i1 %82, label %83, label %71

83:                                               ; preds = %71, %35
  %84 = phi i32 [ %36, %35 ], [ %81, %71 ]
  %85 = phi ptr [ %38, %35 ], [ %78, %71 ]
  %86 = icmp eq i32 %13, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #3, !srcloc !10
  %89 = and i32 %84, %15
  %90 = xor i32 %88, %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %90) #3, !srcloc !11
  br label %91

91:                                               ; preds = %87, %83, %17, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bitfill_unaligned(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
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
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %22 = xor i32 %21, %3
  %23 = and i32 %20, %22
  %24 = xor i32 %23, %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %24) #3, !srcloc !11
  br label %84

25:                                               ; preds = %10
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !10
  %27 = xor i32 %26, %3
  %28 = and i32 %27, %11
  %29 = xor i32 %28, %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %29) #3, !srcloc !11
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %46) #3, !srcloc !11
  %48 = shl i32 %46, %4
  %49 = lshr i32 %46, %5
  %50 = or i32 %48, %49
  %51 = getelementptr i32, ptr %44, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %50) #3, !srcloc !11
  %52 = shl i32 %50, %4
  %53 = lshr i32 %50, %5
  %54 = or i32 %52, %53
  %55 = getelementptr i32, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %54) #3, !srcloc !11
  %56 = shl i32 %54, %4
  %57 = lshr i32 %54, %5
  %58 = or i32 %56, %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %58) #3, !srcloc !11
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %68) #3, !srcloc !11
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
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #3, !srcloc !10
  %81 = xor i32 %80, %76
  %82 = and i32 %81, %14
  %83 = xor i32 %82, %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %83) #3, !srcloc !11
  br label %84

84:                                               ; preds = %79, %75, %16, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!10 = !{i64 3564744}
!11 = !{i64 3564326}
