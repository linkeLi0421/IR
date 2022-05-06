; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcmap.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_alloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_alloc_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_alloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_dealloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_dealloc_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_dealloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_copy_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_copy_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_copy_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_set_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_set_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_set_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_default_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_default_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_default_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_invert_cmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_invert_cmaps\22\09\09\09\09\09"
module asm "__kstrtabns_fb_invert_cmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_cmap_user = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@default_2_colors = internal constant %struct.fb_cmap { i32 0, i32 2, ptr @red2, ptr @green2, ptr @blue2, ptr null }, align 4
@default_4_colors = internal constant %struct.fb_cmap { i32 0, i32 4, ptr @red4, ptr @green4, ptr @blue4, ptr null }, align 4
@default_8_colors = internal constant %struct.fb_cmap { i32 0, i32 8, ptr @red8, ptr @green8, ptr @blue8, ptr null }, align 4
@default_16_colors = internal constant %struct.fb_cmap { i32 0, i32 16, ptr @red16, ptr @green16, ptr @blue16, ptr null }, align 4
@red2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2
@green2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2
@blue2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2
@red4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2
@green4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2
@blue4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2
@red8 = internal global [8 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -21846, i16 -21846, i16 -21846, i16 -21846], section ".data..read_mostly", align 2
@green8 = internal global [8 x i16] [i16 0, i16 0, i16 -21846, i16 -21846, i16 0, i16 0, i16 21845, i16 -21846], section ".data..read_mostly", align 2
@blue8 = internal global [8 x i16] [i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846], section ".data..read_mostly", align 2
@red16 = internal global [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -21846, i16 -21846, i16 -21846, i16 -21846, i16 21845, i16 21845, i16 21845, i16 21845, i16 -1, i16 -1, i16 -1, i16 -1], section ".data..read_mostly", align 2
@green16 = internal global [16 x i16] [i16 0, i16 0, i16 -21846, i16 -21846, i16 0, i16 0, i16 21845, i16 -21846, i16 21845, i16 21845, i16 -1, i16 -1, i16 21845, i16 21845, i16 -1, i16 -1], section ".data..read_mostly", align 2
@blue16 = internal global [16 x i16] [i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 21845, i16 -1, i16 21845, i16 -1, i16 21845, i16 -1, i16 21845, i16 -1], section ".data..read_mostly", align 2
@__kstrtab_fb_alloc_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_alloc_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_alloc_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_alloc_cmap to i32), ptr @__kstrtab_fb_alloc_cmap, ptr @__kstrtabns_fb_alloc_cmap }, section "___ksymtab+fb_alloc_cmap", align 4
@__kstrtab_fb_dealloc_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_dealloc_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_dealloc_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_dealloc_cmap to i32), ptr @__kstrtab_fb_dealloc_cmap, ptr @__kstrtabns_fb_dealloc_cmap }, section "___ksymtab+fb_dealloc_cmap", align 4
@__kstrtab_fb_copy_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_copy_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_copy_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_copy_cmap to i32), ptr @__kstrtab_fb_copy_cmap, ptr @__kstrtabns_fb_copy_cmap }, section "___ksymtab+fb_copy_cmap", align 4
@__kstrtab_fb_set_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_set_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_set_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_set_cmap to i32), ptr @__kstrtab_fb_set_cmap, ptr @__kstrtabns_fb_set_cmap }, section "___ksymtab+fb_set_cmap", align 4
@__kstrtab_fb_default_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_default_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_default_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_default_cmap to i32), ptr @__kstrtab_fb_default_cmap, ptr @__kstrtabns_fb_default_cmap }, section "___ksymtab+fb_default_cmap", align 4
@__kstrtab_fb_invert_cmaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_invert_cmaps = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_invert_cmaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_invert_cmaps to i32), ptr @__kstrtab_fb_invert_cmaps, ptr @__kstrtabns_fb_invert_cmaps }, section "___ksymtab+fb_invert_cmaps", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_fb_alloc_cmap, ptr @__ksymtab_fb_copy_cmap, ptr @__ksymtab_fb_dealloc_cmap, ptr @__ksymtab_fb_default_cmap, ptr @__ksymtab_fb_invert_cmaps, ptr @__ksymtab_fb_set_cmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_alloc_cmap_gfp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 1
  %6 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #11
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false) #11
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %90, label %19

19:                                               ; preds = %9
  %20 = or i32 %3, 8448
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %20) #12
  store ptr %21, ptr %10, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %80, label %23

23:                                               ; preds = %19
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %20) #12
  store ptr %24, ptr %12, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %20) #12
  store ptr %27, ptr %14, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %20) #12
  store ptr %32, ptr %16, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %80, label %35

34:                                               ; preds = %29
  store ptr null, ptr %16, align 4
  br label %35

35:                                               ; preds = %34, %31, %4
  store i32 0, ptr %0, align 4
  store i32 %1, ptr %6, align 4
  %36 = icmp slt i32 %1, 3
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = icmp ult i32 %1, 5
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %1, 9
  %41 = select i1 %40, ptr @default_8_colors, ptr @default_16_colors
  br label %42

42:                                               ; preds = %39, %37, %35
  %43 = phi ptr [ @default_2_colors, %35 ], [ @default_4_colors, %37 ], [ %41, %39 ]
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fb_cmap, ptr %43, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = icmp ult i32 %44, %1
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %80

50:                                               ; preds = %42
  %51 = sub i32 %1, %44
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %46) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %50
  %55 = shl i32 %52, 1
  %56 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i16, ptr %57, i32 %44
  %59 = getelementptr inbounds %struct.fb_cmap, ptr %43, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %58, ptr align 2 %60, i32 %55, i1 false) #11
  %61 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i16, ptr %62, i32 %44
  %64 = getelementptr inbounds %struct.fb_cmap, ptr %43, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %63, ptr align 2 %65, i32 %55, i1 false) #11
  %66 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i16, ptr %67, i32 %44
  %69 = getelementptr inbounds %struct.fb_cmap, ptr %43, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %68, ptr align 2 %70, i32 %55, i1 false) #11
  %71 = getelementptr inbounds %struct.fb_cmap, ptr %43, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %54
  %75 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = getelementptr i16, ptr %76, i32 %44
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %79, ptr nonnull align 2 %72, i32 %55, i1 false) #11
  br label %90

80:                                               ; preds = %50, %42, %31, %26, %23, %19
  %81 = phi i32 [ -12, %31 ], [ -12, %26 ], [ -12, %19 ], [ -12, %23 ], [ -22, %42 ], [ -22, %50 ]
  %82 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  tail call void @kfree(ptr noundef %83) #11
  %84 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  tail call void @kfree(ptr noundef %85) #11
  %86 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  tail call void @kfree(ptr noundef %87) #11
  %88 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  tail call void @kfree(ptr noundef %89) #11
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false) #11
  br label %90

90:                                               ; preds = %80, %78, %74, %54, %9
  %91 = phi i32 [ %81, %80 ], [ 0, %9 ], [ 0, %78 ], [ 0, %74 ], [ 0, %54 ]
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_dealloc_cmap(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_copy_cmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr %0, align 4
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %4)
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 %3)
  %7 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %5
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fb_cmap, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %6
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = sub i32 %12, %6
  %16 = sub i32 %8, %5
  %17 = tail call i32 @llvm.umin.i32(i32 %15, i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %14
  %20 = shl i32 %17, 1
  %21 = getelementptr inbounds %struct.fb_cmap, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i16, ptr %22, i32 %6
  %24 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i16, ptr %25, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %23, ptr align 2 %26, i32 %20, i1 false)
  %27 = getelementptr inbounds %struct.fb_cmap, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i16, ptr %28, i32 %6
  %30 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i16, ptr %31, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %29, ptr align 2 %32, i32 %20, i1 false)
  %33 = getelementptr inbounds %struct.fb_cmap, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i16, ptr %34, i32 %6
  %36 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i16, ptr %37, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %35, ptr align 2 %38, i32 %20, i1 false)
  %39 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.fb_cmap, ptr %1, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr i16, ptr %44, i32 %6
  %48 = getelementptr i16, ptr %40, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %47, ptr align 2 %48, i32 %20, i1 false)
  br label %49

49:                                               ; preds = %46, %42, %19, %14, %10, %2
  %50 = phi i32 [ -22, %10 ], [ -22, %2 ], [ -22, %14 ], [ 0, %46 ], [ 0, %42 ], [ 0, %19 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @fb_default_cmap(i32 noundef %0) #3 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 5
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %0, 9
  %7 = select i1 %6, ptr @default_8_colors, ptr @default_16_colors
  br label %8

8:                                                ; preds = %5, %3, %1
  %9 = phi ptr [ @default_2_colors, %1 ], [ @default_4_colors, %3 ], [ %7, %5 ]
  ret ptr %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_alloc_cmap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @fb_alloc_cmap_gfp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 2592)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_cmap_to_user(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr %0, align 4
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %4)
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 %3)
  %7 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %5
  br i1 %9, label %10, label %112

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fb_cmap_user, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %6
  br i1 %13, label %14, label %112

14:                                               ; preds = %10
  %15 = sub i32 %12, %6
  %16 = sub i32 %8, %5
  %17 = tail call i32 @llvm.umin.i32(i32 %15, i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %112, label %19

19:                                               ; preds = %14
  %20 = shl i32 %17, 1
  %21 = getelementptr inbounds %struct.fb_cmap_user, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i16, ptr %22, i32 %6
  %24 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i16, ptr %25, i32 %5
  %27 = icmp slt i32 %20, 0
  %28 = load i1, ptr @check_copy_size.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %32

32:                                               ; preds = %31, %19
  br i1 %27, label %112, label %33, !prof !8

33:                                               ; preds = %32
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %20, i32 -1090519040) #13, !srcloc !9
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #11
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #14, !srcloc !10
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %43 = tail call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef %26, i32 noundef %20) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i32 [ %43, %37 ], [ %20, %33 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.fb_cmap_user, ptr %1, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i16, ptr %49, i32 %6
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %50, i32 %20, i32 -1090519040) #13, !srcloc !9
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i16, ptr %56, i32 %5
  %58 = tail call ptr @llvm.thread.pointer() #11
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %59) #14, !srcloc !10
  %61 = and i32 %60, -13
  %62 = or i32 %61, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %63 = tail call i32 @arm_copy_to_user(ptr noundef %50, ptr noundef %57, i32 noundef %20) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %64

64:                                               ; preds = %54, %47
  %65 = phi i32 [ %63, %54 ], [ %20, %47 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.fb_cmap_user, ptr %1, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i16, ptr %69, i32 %6
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %70, i32 %20, i32 -1090519040) #13, !srcloc !9
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i16, ptr %76, i32 %5
  %78 = tail call ptr @llvm.thread.pointer() #11
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %79) #14, !srcloc !10
  %81 = and i32 %80, -13
  %82 = or i32 %81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %83 = tail call i32 @arm_copy_to_user(ptr noundef %70, ptr noundef %77, i32 noundef %20) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %84

84:                                               ; preds = %74, %67
  %85 = phi i32 [ %83, %74 ], [ %20, %67 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.fb_cmap_user, ptr %1, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = getelementptr i16, ptr %93, i32 %6
  %97 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %96, i32 %20, i32 -1090519040) #13, !srcloc !9
  %98 = extractvalue { i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = getelementptr i16, ptr %89, i32 %5
  %102 = tail call ptr @llvm.thread.pointer() #11
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 3
  %104 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %103) #14, !srcloc !10
  %105 = and i32 %104, -13
  %106 = or i32 %105, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %107 = tail call i32 @arm_copy_to_user(ptr noundef %96, ptr noundef %101, i32 noundef %20) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #11, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %108

108:                                              ; preds = %100, %95
  %109 = phi i32 [ %107, %100 ], [ %20, %95 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %91, %87
  br label %112

112:                                              ; preds = %111, %108, %84, %64, %44, %32, %14, %10, %2
  %113 = phi i32 [ 0, %111 ], [ -22, %10 ], [ -22, %2 ], [ -22, %14 ], [ -14, %44 ], [ -14, %64 ], [ -14, %84 ], [ -14, %108 ], [ -14, %32 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_set_cmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %0, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %110, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_ops, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.fb_ops, ptr %15, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %18, label %22, label %23

22:                                               ; preds = %13
  br i1 %21, label %110, label %63

23:                                               ; preds = %13
  br i1 %21, label %24, label %63

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %58, %24
  %29 = phi i32 [ %52, %58 ], [ 65535, %24 ]
  %30 = phi ptr [ %51, %58 ], [ %10, %24 ]
  %31 = phi ptr [ %42, %58 ], [ %8, %24 ]
  %32 = phi ptr [ %39, %58 ], [ %6, %24 ]
  %33 = phi ptr [ %36, %58 ], [ %4, %24 ]
  %34 = phi i32 [ %59, %58 ], [ %11, %24 ]
  %35 = phi i32 [ %60, %58 ], [ 0, %24 ]
  %36 = getelementptr i16, ptr %33, i32 1
  %37 = load i16, ptr %33, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i16, ptr %32, i32 1
  %40 = load i16, ptr %32, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i16, ptr %31, i32 1
  %43 = load i16, ptr %31, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq ptr %30, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %28
  %47 = getelementptr i16, ptr %30, i32 1
  %48 = load i16, ptr %30, align 2
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %46, %28
  %51 = phi ptr [ %47, %46 ], [ null, %28 ]
  %52 = phi i32 [ %49, %46 ], [ %29, %28 ]
  %53 = load ptr, ptr %14, align 4
  %54 = getelementptr inbounds %struct.fb_ops, ptr %53, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(i32 noundef %34, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %52, ptr noundef %1) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = add i32 %34, 1
  %60 = add nuw i32 %35, 1
  %61 = load i32, ptr %25, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %28, label %66

63:                                               ; preds = %23, %22
  %64 = tail call i32 %20(ptr noundef %0, ptr noundef %1) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %63, %58, %50, %24
  %67 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %0, align 4
  %70 = tail call i32 @llvm.usub.sat.i32(i32 %68, i32 %69) #11
  %71 = tail call i32 @llvm.usub.sat.i32(i32 %69, i32 %68) #11
  %72 = getelementptr inbounds %struct.fb_cmap, ptr %0, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, %70
  br i1 %74, label %75, label %110

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, %71
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = sub i32 %77, %71
  %81 = sub i32 %73, %70
  %82 = tail call i32 @llvm.umin.i32(i32 %80, i32 %81) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %79
  %85 = shl i32 %82, 1
  %86 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i16, ptr %87, i32 %71
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr i16, ptr %89, i32 %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %88, ptr align 2 %90, i32 %85, i1 false) #11
  %91 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i16, ptr %92, i32 %71
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr i16, ptr %94, i32 %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %93, ptr align 2 %95, i32 %85, i1 false) #11
  %96 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i16, ptr %97, i32 %71
  %99 = load ptr, ptr %7, align 4
  %100 = getelementptr i16, ptr %99, i32 %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %98, ptr align 2 %100, i32 %85, i1 false) #11
  %101 = load ptr, ptr %9, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %84
  %104 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr i16, ptr %105, i32 %71
  %109 = getelementptr i16, ptr %101, i32 %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %108, ptr align 2 %109, i32 %85, i1 false) #11
  br label %110

110:                                              ; preds = %107, %103, %84, %79, %75, %66, %63, %22, %2
  %111 = phi i32 [ -22, %22 ], [ -22, %2 ], [ %64, %63 ], [ 0, %66 ], [ 0, %75 ], [ 0, %79 ], [ 0, %84 ], [ 0, %103 ], [ 0, %107 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_set_user_cmap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fb_cmap, align 4
  %4 = getelementptr inbounds %struct.fb_cmap_user, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = icmp slt i32 %6, 0
  %8 = icmp ult i32 %6, %5
  %9 = or i1 %7, %8
  br i1 %9, label %115, label %10

10:                                               ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %11 = getelementptr inbounds %struct.fb_cmap_user, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @fb_alloc_cmap_gfp(ptr noundef nonnull %3, i32 noundef %5, i32 noundef %14, i32 noundef 3264)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %115

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fb_cmap_user, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %6, i32 -1090519040) #13, !srcloc !13
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !14

25:                                               ; preds = %17
  %26 = tail call ptr @llvm.thread.pointer() #11
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #14, !srcloc !10
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %31 = call i32 @arm_copy_from_user(ptr noundef %19, ptr noundef %21, i32 noundef %6) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %32

32:                                               ; preds = %25, %17
  %33 = phi i32 [ %31, %25 ], [ %6, %17 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !14

35:                                               ; preds = %32
  %36 = sub i32 %6, %33
  %37 = getelementptr i8, ptr %19, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %33, i1 false) #11
  br label %106

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fb_cmap_user, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 %6, i32 -1090519040) #13, !srcloc !13
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53, !prof !14

46:                                               ; preds = %38
  %47 = tail call ptr @llvm.thread.pointer() #11
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #14, !srcloc !10
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %52 = call i32 @arm_copy_from_user(ptr noundef %40, ptr noundef %42, i32 noundef %6) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %53

53:                                               ; preds = %46, %38
  %54 = phi i32 [ %52, %46 ], [ %6, %38 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56, !prof !14

56:                                               ; preds = %53
  %57 = sub i32 %6, %54
  %58 = getelementptr i8, ptr %40, i32 %57
  call void @llvm.memset.p0.i32(ptr align 1 %58, i8 0, i32 %54, i1 false) #11
  br label %106

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.fb_cmap_user, ptr %0, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 %6, i32 -1090519040) #13, !srcloc !13
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74, !prof !14

67:                                               ; preds = %59
  %68 = tail call ptr @llvm.thread.pointer() #11
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #14, !srcloc !10
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %73 = call i32 @arm_copy_from_user(ptr noundef %61, ptr noundef %63, i32 noundef %6) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %74

74:                                               ; preds = %67, %59
  %75 = phi i32 [ %73, %67 ], [ %6, %59 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77, !prof !14

77:                                               ; preds = %74
  %78 = sub i32 %6, %75
  %79 = getelementptr i8, ptr %61, i32 %78
  call void @llvm.memset.p0.i32(ptr align 1 %79, i8 0, i32 %75, i1 false) #11
  br label %106

80:                                               ; preds = %74
  %81 = load ptr, ptr %11, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %102, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %81, i32 %6, i32 -1090519040) #13, !srcloc !13
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96, !prof !14

89:                                               ; preds = %83
  %90 = tail call ptr @llvm.thread.pointer() #11
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %92 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #14, !srcloc !10
  %93 = and i32 %92, -13
  %94 = or i32 %93, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  %95 = call i32 @arm_copy_from_user(ptr noundef %85, ptr noundef nonnull %81, i32 noundef %6) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #11, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !12
  br label %96

96:                                               ; preds = %89, %83
  %97 = phi i32 [ %95, %89 ], [ %6, %83 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99, !prof !14

99:                                               ; preds = %96
  %100 = sub i32 %6, %97
  %101 = getelementptr i8, ptr %85, i32 %100
  call void @llvm.memset.p0.i32(ptr align 1 %101, i8 0, i32 %97, i1 false) #11
  br label %106

102:                                              ; preds = %96, %80
  %103 = load i32, ptr %0, align 4
  store i32 %103, ptr %3, align 4
  %104 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 4
  call void @mutex_lock(ptr noundef %104) #11
  %105 = call i32 @fb_set_cmap(ptr noundef nonnull %3, ptr noundef %1)
  call void @mutex_unlock(ptr noundef %104) #11
  br label %106

106:                                              ; preds = %102, %99, %77, %56, %35
  %107 = phi i32 [ %105, %102 ], [ -14, %35 ], [ -14, %56 ], [ -14, %77 ], [ -14, %99 ]
  %108 = load ptr, ptr %18, align 4
  call void @kfree(ptr noundef %108) #11
  %109 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  call void @kfree(ptr noundef %110) #11
  %111 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  call void @kfree(ptr noundef %112) #11
  %113 = getelementptr inbounds %struct.fb_cmap, ptr %3, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  call void @kfree(ptr noundef %114) #11
  br label %115

115:                                              ; preds = %106, %10, %2
  %116 = phi i32 [ %107, %106 ], [ -7, %2 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %116
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_invert_cmaps() #7 {
  %1 = load i16, ptr @red2, align 2
  %2 = xor i16 %1, -1
  store i16 %2, ptr @red2, align 2
  %3 = load i16, ptr @green2, align 2
  %4 = xor i16 %3, -1
  store i16 %4, ptr @green2, align 2
  %5 = load i16, ptr @blue2, align 2
  %6 = xor i16 %5, -1
  store i16 %6, ptr @blue2, align 2
  %7 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @red2, i32 0, i32 1), align 2
  %8 = xor i16 %7, -1
  store i16 %8, ptr getelementptr inbounds ([2 x i16], ptr @red2, i32 0, i32 1), align 2
  %9 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @green2, i32 0, i32 1), align 2
  %10 = xor i16 %9, -1
  store i16 %10, ptr getelementptr inbounds ([2 x i16], ptr @green2, i32 0, i32 1), align 2
  %11 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @blue2, i32 0, i32 1), align 2
  %12 = xor i16 %11, -1
  store i16 %12, ptr getelementptr inbounds ([2 x i16], ptr @blue2, i32 0, i32 1), align 2
  %13 = load i16, ptr @red4, align 2
  %14 = xor i16 %13, -1
  store i16 %14, ptr @red4, align 2
  %15 = load i16, ptr @green4, align 2
  %16 = xor i16 %15, -1
  store i16 %16, ptr @green4, align 2
  %17 = load i16, ptr @blue4, align 2
  %18 = xor i16 %17, -1
  store i16 %18, ptr @blue4, align 2
  %19 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 1), align 2
  %20 = xor i16 %19, -1
  store i16 %20, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 1), align 2
  %21 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 1), align 2
  %22 = xor i16 %21, -1
  store i16 %22, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 1), align 2
  %23 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 1), align 2
  %24 = xor i16 %23, -1
  store i16 %24, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 1), align 2
  %25 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 2), align 2
  %26 = xor i16 %25, -1
  store i16 %26, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 2), align 2
  %27 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 2), align 2
  %28 = xor i16 %27, -1
  store i16 %28, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 2), align 2
  %29 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 2), align 2
  %30 = xor i16 %29, -1
  store i16 %30, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 2), align 2
  %31 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 3), align 2
  %32 = xor i16 %31, -1
  store i16 %32, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 3), align 2
  %33 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 3), align 2
  %34 = xor i16 %33, -1
  store i16 %34, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 3), align 2
  %35 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 3), align 2
  %36 = xor i16 %35, -1
  store i16 %36, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 3), align 2
  %37 = load i16, ptr @red8, align 2
  %38 = xor i16 %37, -1
  store i16 %38, ptr @red8, align 2
  %39 = load i16, ptr @green8, align 2
  %40 = xor i16 %39, -1
  store i16 %40, ptr @green8, align 2
  %41 = load i16, ptr @blue8, align 2
  %42 = xor i16 %41, -1
  store i16 %42, ptr @blue8, align 2
  %43 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 1), align 2
  %44 = xor i16 %43, -1
  store i16 %44, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 1), align 2
  %45 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 1), align 2
  %46 = xor i16 %45, -1
  store i16 %46, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 1), align 2
  %47 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 1), align 2
  %48 = xor i16 %47, -1
  store i16 %48, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 1), align 2
  %49 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 2), align 2
  %50 = xor i16 %49, -1
  store i16 %50, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 2), align 2
  %51 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 2), align 2
  %52 = xor i16 %51, -1
  store i16 %52, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 2), align 2
  %53 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 2), align 2
  %54 = xor i16 %53, -1
  store i16 %54, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 2), align 2
  %55 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 3), align 2
  %56 = xor i16 %55, -1
  store i16 %56, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 3), align 2
  %57 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 3), align 2
  %58 = xor i16 %57, -1
  store i16 %58, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 3), align 2
  %59 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 3), align 2
  %60 = xor i16 %59, -1
  store i16 %60, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 3), align 2
  %61 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 4), align 2
  %62 = xor i16 %61, -1
  store i16 %62, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 4), align 2
  %63 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 4), align 2
  %64 = xor i16 %63, -1
  store i16 %64, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 4), align 2
  %65 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 4), align 2
  %66 = xor i16 %65, -1
  store i16 %66, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 4), align 2
  %67 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 5), align 2
  %68 = xor i16 %67, -1
  store i16 %68, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 5), align 2
  %69 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 5), align 2
  %70 = xor i16 %69, -1
  store i16 %70, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 5), align 2
  %71 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 5), align 2
  %72 = xor i16 %71, -1
  store i16 %72, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 5), align 2
  %73 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 6), align 2
  %74 = xor i16 %73, -1
  store i16 %74, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 6), align 2
  %75 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 6), align 2
  %76 = xor i16 %75, -1
  store i16 %76, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 6), align 2
  %77 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 6), align 2
  %78 = xor i16 %77, -1
  store i16 %78, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 6), align 2
  %79 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 7), align 2
  %80 = xor i16 %79, -1
  store i16 %80, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 7), align 2
  %81 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 7), align 2
  %82 = xor i16 %81, -1
  store i16 %82, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 7), align 2
  %83 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 7), align 2
  %84 = xor i16 %83, -1
  store i16 %84, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 7), align 2
  br label %85

85:                                               ; preds = %85, %0
  %86 = phi i32 [ %96, %85 ], [ 0, %0 ]
  %87 = getelementptr [16 x i16], ptr @red16, i32 0, i32 %86
  %88 = load i16, ptr %87, align 2
  %89 = xor i16 %88, -1
  store i16 %89, ptr %87, align 2
  %90 = getelementptr [16 x i16], ptr @green16, i32 0, i32 %86
  %91 = load i16, ptr %90, align 2
  %92 = xor i16 %91, -1
  store i16 %92, ptr %90, align 2
  %93 = getelementptr [16 x i16], ptr @blue16, i32 0, i32 %86
  %94 = load i16, ptr %93, align 2
  %95 = xor i16 %94, -1
  store i16 %95, ptr %93, align 2
  %96 = add nuw nsw i32 %86, 1
  %97 = icmp eq i32 %96, 16
  br i1 %97, label %98, label %85

98:                                               ; preds = %85
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

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
!9 = !{i64 2152202656, i64 2152202681}
!10 = !{i64 4698190}
!11 = !{i64 4698387}
!12 = !{i64 2152183666}
!13 = !{i64 2152202078, i64 2152202103}
!14 = !{!"branch_weights", i32 2000, i32 1}
