; ModuleID = '/llk/IR/drivers/base/regmap/regcache.c_pt.bc'
source_filename = "../drivers/base/regmap/regcache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_sync\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_sync_region:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_sync_region\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_sync_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_drop_region:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_drop_region\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_drop_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_cache_only:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_cache_only\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_cache_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_mark_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_cache_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_cache_bypass\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_cache_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"No cache used with register defaults set!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Register defaults are set without the number!\0A\00", align 1
@cache_types = internal unnamed_addr constant [2 x ptr] [ptr @regcache_rbtree_ops, ptr @regcache_flat_ops], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not match compress type: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to write %x = %x: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@__kstrtab_regcache_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_sync to i32), ptr @__kstrtab_regcache_sync, ptr @__kstrtabns_regcache_sync }, section "___ksymtab_gpl+regcache_sync", align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"start region\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"stop region\00", align 1
@__kstrtab_regcache_sync_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_sync_region = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_sync_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_sync_region to i32), ptr @__kstrtab_regcache_sync_region, ptr @__kstrtabns_regcache_sync_region }, section "___ksymtab_gpl+regcache_sync_region", align 4
@__kstrtab_regcache_drop_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_drop_region = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_drop_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_drop_region to i32), ptr @__kstrtab_regcache_drop_region, ptr @__kstrtabns_regcache_drop_region }, section "___ksymtab_gpl+regcache_drop_region", align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"drivers/base/regmap/regcache.c\00", align 1
@__kstrtab_regcache_cache_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_cache_only = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_cache_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_cache_only to i32), ptr @__kstrtab_regcache_cache_only, ptr @__kstrtabns_regcache_cache_only }, section "___ksymtab_gpl+regcache_cache_only", align 4
@__kstrtab_regcache_mark_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_mark_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_mark_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_mark_dirty to i32), ptr @__kstrtab_regcache_mark_dirty, ptr @__kstrtabns_regcache_mark_dirty }, section "___ksymtab_gpl+regcache_mark_dirty", align 4
@__kstrtab_regcache_cache_bypass = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_cache_bypass = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_cache_bypass = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_cache_bypass to i32), ptr @__kstrtab_regcache_cache_bypass, ptr @__kstrtabns_regcache_cache_bypass }, section "___ksymtab_gpl+regcache_cache_bypass", align 4
@regcache_rbtree_ops = external dso_local global %struct.regcache_ops, align 4
@regcache_flat_ops = external dso_local global %struct.regcache_ops, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"No cache defaults, reading back from HW\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Failed to read %d: %d\0A\00", align 1
@__tracepoint_regmap_reg_read_cache = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_regcache_sync = external dso_local global %struct.tracepoint, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Unable to sync register %#x. %d\0A\00", align 1
@__tracepoint_regcache_drop_region = external dso_local global %struct.tracepoint, align 4
@__tracepoint_regmap_cache_only = external dso_local global %struct.tracepoint, align 4
@__tracepoint_regmap_cache_bypass = external dso_local global %struct.tracepoint, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"Unable to sync registers %#x-%#x. %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_regcache_cache_bypass, ptr @__ksymtab_regcache_cache_only, ptr @__ksymtab_regcache_drop_region, ptr @__ksymtab_regcache_mark_dirty, ptr @__ksymtab_regcache_sync, ptr @__ksymtab_regcache_sync_region], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %5, label %9, label %19

9:                                                ; preds = %2
  br i1 %8, label %10, label %14

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 30
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %9
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str) #8
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  store i8 1, ptr %18, align 1
  br label %121

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 27
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %8, label %27, label %23

23:                                               ; preds = %19
  br i1 %22, label %24, label %28

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.1) #8
  br label %121

27:                                               ; preds = %19
  br i1 %22, label %34, label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %30 = load i32, ptr %29, align 4
  br label %38

31:                                               ; preds = %38
  %32 = add nuw i32 %39, 1
  %33 = icmp eq i32 %32, %21
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %27
  %35 = phi i32 [ 0, %27 ], [ %21, %31 ]
  %36 = load i32, ptr getelementptr inbounds (%struct.regcache_ops, ptr @regcache_rbtree_ops, i32 0, i32 1), align 4
  %37 = icmp eq i32 %36, %4
  br i1 %37, label %50, label %44

38:                                               ; preds = %31, %28
  %39 = phi i32 [ 0, %28 ], [ %32, %31 ]
  %40 = getelementptr %struct.reg_default, ptr %7, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = urem i32 %41, %30
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %31, label %121

44:                                               ; preds = %34
  %45 = load i32, ptr getelementptr inbounds (%struct.regcache_ops, ptr @regcache_flat_ops, i32 0, i32 1), align 4
  %46 = icmp eq i32 %45, %4
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  br label %121

50:                                               ; preds = %44, %34
  %51 = phi i32 [ 0, %34 ], [ 1, %44 ]
  %52 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  store i32 %35, ptr %52, align 4
  %53 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 30
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 52
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 29
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 57
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 7
  %62 = sdiv i32 %61, 8
  %63 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %53, align 4
  %65 = mul i32 %62, %64
  %66 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 49
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 58
  store ptr null, ptr %67, align 4
  %68 = getelementptr [2 x ptr], ptr @cache_types, i32 0, i32 %51
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  store ptr %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.regcache_ops, ptr %69, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %121, label %74

74:                                               ; preds = %50
  %75 = getelementptr inbounds %struct.regcache_ops, ptr %69, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %121, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %69, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %121, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %6, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = shl i32 %35, 3
  %86 = tail call ptr @kmemdup(ptr noundef nonnull %82, i32 noundef %85, i32 noundef 3264) #9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %121, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  store ptr %86, ptr %89, align 4
  br label %99

90:                                               ; preds = %81
  %91 = icmp eq i32 %54, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %90
  %93 = tail call fastcc i32 @regcache_hw_init(ptr noundef %0)
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %97 = load i8, ptr %96, align 1, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %95, %90, %88
  %100 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, ptr %55, align 4
  store i32 %104, ptr %100, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = load ptr, ptr %70, align 4
  %107 = getelementptr inbounds %struct.regcache_ops, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  %111 = tail call i32 %108(ptr noundef %0) #9
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  %115 = load ptr, ptr %114, align 4
  tail call void @kfree(ptr noundef %115) #9
  %116 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 55
  %117 = load i8, ptr %116, align 2, !range !8
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %58, align 4
  tail call void @kfree(ptr noundef %120) #9
  br label %121

121:                                              ; preds = %119, %113, %110, %105, %95, %92, %84, %78, %74, %50, %47, %38, %24, %17
  %122 = phi i32 [ 0, %17 ], [ -22, %47 ], [ -22, %24 ], [ -22, %78 ], [ -22, %74 ], [ -22, %50 ], [ -12, %84 ], [ %93, %92 ], [ 0, %95 ], [ 0, %110 ], [ 0, %105 ], [ %111, %119 ], [ %111, %113 ], [ -22, %38 ]
  ret i32 %122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regcache_hw_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 52
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %125, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %23, %21 ]
  %11 = load i32, ptr %7, align 4
  %12 = mul i32 %11, %10
  %13 = tail call zeroext i1 @regmap_readable(ptr noundef %0, i32 noundef %12) #9
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i32, ptr %7, align 4
  %16 = mul i32 %15, %10
  %17 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %16) #9
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = add i32 %9, %19
  br label %21

21:                                               ; preds = %14, %8
  %22 = phi i32 [ %9, %8 ], [ %20, %14 ]
  %23 = add nuw i32 %10, 1
  %24 = load i32, ptr %3, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %8, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  store i8 1, ptr %29, align 1
  br label %125

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  store i32 %22, ptr %31, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 8) #9
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %36, !prof !10

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  store ptr null, ptr %35, align 4
  br label %125

36:                                               ; preds = %30
  %37 = extractvalue { i32, i1 } %32, 0
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #10
  %39 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %125, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 57
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.9) #8
  store i8 1, ptr %46, align 1
  %50 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 49
  %51 = load i32, ptr %50, align 4
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3264) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %122, label %54

54:                                               ; preds = %45
  %55 = load i32, ptr %50, align 4
  %56 = tail call i32 @regmap_raw_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %52, i32 noundef %55) #9
  store i8 %47, ptr %46, align 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  store ptr %52, ptr %42, align 4
  %59 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 55
  store i8 1, ptr %59, align 2
  br label %61

60:                                               ; preds = %54
  tail call void @kfree(ptr noundef nonnull %52) #9
  br label %61

61:                                               ; preds = %60, %58, %41
  %62 = load i32, ptr %3, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %125, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %66 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %67 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %68 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  br label %69

69:                                               ; preds = %117, %64
  %70 = phi i32 [ 0, %64 ], [ %118, %117 ]
  %71 = phi i32 [ 0, %64 ], [ %119, %117 ]
  %72 = load i32, ptr %65, align 4
  %73 = mul i32 %72, %71
  %74 = call zeroext i1 @regmap_readable(ptr noundef %0, i32 noundef %73) #9
  br i1 %74, label %75, label %117

75:                                               ; preds = %69
  %76 = call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %73) #9
  br i1 %76, label %117, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %42, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %103, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %66, align 4
  %82 = icmp eq ptr %81, null
  %83 = load i32, ptr %67, align 4
  br i1 %82, label %88, label %84

84:                                               ; preds = %80
  %85 = mul i32 %83, %71
  %86 = getelementptr i8, ptr %78, i32 %85
  %87 = call i32 %81(ptr noundef %86) #9
  br label %101

88:                                               ; preds = %80
  switch i32 %83, label %100 [
    i32 1, label %89
    i32 2, label %93
    i32 4, label %97
  ]

89:                                               ; preds = %88
  %90 = getelementptr i8, ptr %78, i32 %71
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  br label %101

93:                                               ; preds = %88
  %94 = getelementptr i16, ptr %78, i32 %71
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  br label %101

97:                                               ; preds = %88
  %98 = getelementptr i32, ptr %78, i32 %71
  %99 = load i32, ptr %98, align 4
  br label %101

100:                                              ; preds = %88
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

101:                                              ; preds = %97, %93, %89, %84
  %102 = phi i32 [ %87, %84 ], [ %99, %97 ], [ %96, %93 ], [ %92, %89 ]
  store i32 %102, ptr %2, align 4
  br label %110

103:                                              ; preds = %77
  %104 = load i8, ptr %68, align 1, !range !8
  store i8 1, ptr %68, align 1
  %105 = call i32 @regmap_read(ptr noundef %0, i32 noundef %73, ptr noundef nonnull %2) #9
  store i8 %104, ptr %68, align 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.10, i32 noundef %73, i32 noundef %105) #8
  br label %122

110:                                              ; preds = %103, %101
  %111 = load ptr, ptr %39, align 4
  %112 = getelementptr %struct.reg_default, ptr %111, i32 %70
  store i32 %73, ptr %112, align 4
  %113 = load i32, ptr %2, align 4
  %114 = load ptr, ptr %39, align 4
  %115 = getelementptr %struct.reg_default, ptr %114, i32 %70, i32 1
  store i32 %113, ptr %115, align 4
  %116 = add i32 %70, 1
  br label %117

117:                                              ; preds = %110, %75, %69
  %118 = phi i32 [ %70, %75 ], [ %116, %110 ], [ %70, %69 ]
  %119 = add nuw i32 %71, 1
  %120 = load i32, ptr %3, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %69, label %125

122:                                              ; preds = %107, %45
  %123 = phi i32 [ %105, %107 ], [ -12, %45 ]
  %124 = load ptr, ptr %39, align 4
  call void @kfree(ptr noundef %124) #9
  br label %125

125:                                              ; preds = %122, %117, %61, %36, %34, %28, %1
  %126 = phi i32 [ %123, %122 ], [ 0, %28 ], [ -22, %1 ], [ -12, %36 ], [ -12, %34 ], [ 0, %61 ], [ 0, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regcache_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 55
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 57
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #9
  br label %19

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.regcache_ops, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %22(ptr noundef %0) #9
  br label %26

26:                                               ; preds = %24, %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %1) #9
  br i1 %13, label %37, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.regcache_ops, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read_cache, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #9
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %36 = tail call i32 @__traceiter_regmap_reg_read_cache(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %21) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %37

37:                                               ; preds = %35, %24, %20, %14, %12, %3
  %38 = phi i32 [ -38, %3 ], [ %18, %14 ], [ -22, %12 ], [ 0, %20 ], [ 0, %24 ], [ 0, %35 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_volatile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 270, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %1) #9
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.regcache_ops, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  br label %19

19:                                               ; preds = %14, %12, %3
  %20 = phi i32 [ %18, %14 ], [ 0, %3 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #9, !srcloc !17
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = load ptr, ptr %2, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = tail call ptr @llvm.thread.pointer() #9
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %29 = tail call i32 @__traceiter_regcache_sync(ptr noundef null, ptr noundef %0, ptr noundef %14, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %30

30:                                               ; preds = %28, %17, %6
  %31 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 1, ptr %35, align 4
  store i8 1, ptr %11, align 1
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 62
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 61
  br label %41

41:                                               ; preds = %58, %39
  %42 = phi i32 [ 0, %39 ], [ %59, %58 ]
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr %struct.reg_sequence, ptr %43, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.reg_sequence, ptr %43, i32 %42, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @_regmap_write(ptr noundef %0, i32 noundef %45, i32 noundef %47) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %40, align 4
  %54 = getelementptr %struct.reg_sequence, ptr %53, i32 %42
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.reg_sequence, ptr %53, i32 %42, i32 1
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.4, i32 noundef %55, i32 noundef %57, i32 noundef %48) #8
  br label %77

58:                                               ; preds = %41
  %59 = add nuw i32 %42, 1
  %60 = load i32, ptr %36, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %41, label %62

62:                                               ; preds = %58, %34
  store i8 0, ptr %11, align 1
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr inbounds %struct.regcache_ops, ptr %63, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %68 = load i32, ptr %67, align 4
  br i1 %66, label %71, label %69

69:                                               ; preds = %62
  %70 = tail call i32 %65(ptr noundef %0, i32 noundef 0, i32 noundef %68) #9
  br label %73

71:                                               ; preds = %62
  %72 = tail call fastcc i32 @regcache_default_sync(ptr noundef %0, i32 noundef 0, i32 noundef %68)
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8 0, ptr %31, align 4
  br label %77

77:                                               ; preds = %76, %73, %50, %30
  %78 = phi i32 [ %48, %50 ], [ 0, %76 ], [ %74, %73 ], [ 0, %30 ]
  %79 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 0, ptr %79, align 4
  store i8 %12, ptr %11, align 1
  %80 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 60
  store i8 0, ptr %80, align 1
  %81 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %9, align 4
  tail call void %82(ptr noundef %83) #9
  %84 = tail call i32 @regmap_async_complete(ptr noundef %0) #9
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = tail call ptr @llvm.thread.pointer() #9
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %99 = tail call i32 @__traceiter_regcache_sync(ptr noundef null, ptr noundef %0, ptr noundef %14, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %100

100:                                              ; preds = %98, %87, %77
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regcache_default_sync(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.reg_default, align 8
  %5 = alloca i32, align 4
  %6 = icmp ugt i32 %1, %2
  br i1 %6, label %88, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 60
  %11 = getelementptr inbounds %struct.reg_default, ptr %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  br label %16

16:                                               ; preds = %84, %7
  %17 = phi i32 [ %1, %7 ], [ %86, %84 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %17) #9
  br i1 %18, label %84, label %19

19:                                               ; preds = %16
  %20 = call zeroext i1 @regmap_writeable(ptr noundef %0, i32 noundef %17) #9
  br i1 %20, label %21, label %84

21:                                               ; preds = %19
  %22 = load i32, ptr %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %82, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %24
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

28:                                               ; preds = %24
  %29 = call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %17) #9
  br i1 %29, label %82, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.regcache_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %5) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read_cache, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #9
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %52 = call i32 @__traceiter_regmap_reg_read_cache(ptr noundef null, ptr noundef %0, i32 noundef %17, i32 noundef %37) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %53 = load i32, ptr %5, align 4
  br label %54

54:                                               ; preds = %51, %40, %36
  %55 = phi i32 [ %37, %36 ], [ %37, %40 ], [ %53, %51 ]
  %56 = load i8, ptr %10, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i32 %17, ptr %4, align 8
  store i32 0, ptr %11, align 4
  %59 = load ptr, ptr %12, align 4
  %60 = load i32, ptr %13, align 4
  %61 = call ptr @bsearch(ptr noundef nonnull %4, ptr noundef %59, i32 noundef %60, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %75

64:                                               ; preds = %58
  %65 = load ptr, ptr %12, align 4
  %66 = ptrtoint ptr %61 to i32
  %67 = ptrtoint ptr %65 to i32
  %68 = sub i32 %66, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %69 = icmp sgt i32 %68, -8
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = ashr exact i32 %68, 3
  %72 = getelementptr %struct.reg_default, ptr %65, i32 %71, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %55
  br i1 %74, label %84, label %75

75:                                               ; preds = %70, %64, %63, %54
  store i8 1, ptr %14, align 1
  %76 = load i32, ptr %5, align 4
  %77 = call i32 @_regmap_write(ptr noundef %0, i32 noundef %17, i32 noundef %76) #9
  store i8 0, ptr %14, align 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.12, i32 noundef %17, i32 noundef %77) #8
  br label %82

82:                                               ; preds = %79, %30, %28, %21
  %83 = phi i32 [ %77, %79 ], [ -38, %21 ], [ %34, %30 ], [ -22, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %88

84:                                               ; preds = %75, %70, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %85 = load i32, ptr %15, align 4
  %86 = add i32 %85, %17
  %87 = icmp ugt i32 %86, %2
  br i1 %87, label %88, label %16

88:                                               ; preds = %84, %82, %3
  %89 = phi i32 [ %83, %82 ], [ 0, %3 ], [ 0, %84 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_async_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_sync_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = load ptr, ptr %4, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %8
  %20 = tail call ptr @llvm.thread.pointer() #9
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %31 = tail call i32 @__traceiter_regcache_sync(ptr noundef null, ptr noundef %0, ptr noundef %16, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %32

32:                                               ; preds = %30, %19, %8
  %33 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  %34 = load i8, ptr %33, align 4, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 1, ptr %37, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.regcache_ops, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = tail call i32 %40(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  br label %46

44:                                               ; preds = %36
  %45 = tail call fastcc i32 @regcache_default_sync(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %46

46:                                               ; preds = %44, %42, %32
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], [ 0, %32 ]
  store i8 %14, ptr %13, align 1
  %48 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 60
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %11, align 4
  tail call void %51(ptr noundef %52) #9
  %53 = tail call i32 @regmap_async_complete(ptr noundef %0) #9
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %46
  %57 = tail call ptr @llvm.thread.pointer() #9
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %68 = tail call i32 @__traceiter_regcache_sync(ptr noundef null, ptr noundef %0, ptr noundef %16, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %69

69:                                               ; preds = %67, %56, %46
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_drop_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regcache_ops, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15) #9
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_drop_region, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = tail call ptr @llvm.thread.pointer() #9
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %30 = tail call i32 @__traceiter_regcache_drop_region(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %31

31:                                               ; preds = %29, %18, %11
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.regcache_ops, ptr %32, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %14, align 4
  tail call void %37(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %31, %7, %3
  %40 = phi i32 [ %35, %31 ], [ -22, %7 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regcache_cache_only(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %4(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp ne i8 %8, 0
  %10 = and i1 %9, %1
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 498, i32 noundef 9, ptr noundef null) #9
  br label %12

12:                                               ; preds = %11, %2
  %13 = zext i1 %1 to i8
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  store i8 %13, ptr %14, align 4
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_only, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = tail call ptr @llvm.thread.pointer() #9
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %29 = tail call i32 @__traceiter_regmap_cache_only(ptr noundef null, ptr noundef %0, i1 noundef zeroext %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  br label %30

30:                                               ; preds = %28, %17, %12
  %31 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  tail call void %32(ptr noundef %33) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regcache_mark_dirty(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void %3(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 60
  store i8 1, ptr %7, align 1
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  tail call void %9(ptr noundef %10) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regcache_cache_bypass(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %4(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp ne i8 %8, 0
  %10 = and i1 %9, %1
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 541, i32 noundef 9, ptr noundef null) #9
  br label %12

12:                                               ; preds = %11, %2
  %13 = zext i1 %1 to i8
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  store i8 %13, ptr %14, align 1
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_bypass, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = tail call ptr @llvm.thread.pointer() #9
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %29 = tail call i32 @__traceiter_regmap_cache_bypass(ptr noundef null, ptr noundef %0, i1 noundef zeroext %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %30

30:                                               ; preds = %28, %17, %12
  %31 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  tail call void %32(ptr noundef %33) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regcache_set_val(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %11 = load i32, ptr %10, align 4
  br i1 %9, label %16, label %12

12:                                               ; preds = %6
  %13 = mul i32 %11, %2
  %14 = getelementptr i8, ptr %1, i32 %13
  %15 = tail call i32 %8(ptr noundef %14) #9
  br label %29

16:                                               ; preds = %6
  switch i32 %11, label %28 [
    i32 1, label %17
    i32 2, label %21
    i32 4, label %25
  ]

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %1, i32 %2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  br label %29

21:                                               ; preds = %16
  %22 = getelementptr i16, ptr %1, i32 %2
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  br label %29

25:                                               ; preds = %16
  %26 = getelementptr i32, ptr %1, i32 %2
  %27 = load i32, ptr %26, align 4
  br label %29

28:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

29:                                               ; preds = %25, %21, %17, %12, %4
  %30 = phi i32 [ %15, %12 ], [ %27, %25 ], [ %24, %21 ], [ %20, %17 ], [ -22, %4 ]
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %37 = load i32, ptr %36, align 4
  br i1 %35, label %41, label %38

38:                                               ; preds = %32
  %39 = mul i32 %37, %2
  %40 = getelementptr i8, ptr %1, i32 %39
  tail call void %34(ptr noundef %40, i32 noundef %3, i32 noundef 0) #9
  br label %51

41:                                               ; preds = %32
  switch i32 %37, label %50 [
    i32 1, label %42
    i32 2, label %45
    i32 4, label %48
  ]

42:                                               ; preds = %41
  %43 = trunc i32 %3 to i8
  %44 = getelementptr i8, ptr %1, i32 %2
  store i8 %43, ptr %44, align 1
  br label %51

45:                                               ; preds = %41
  %46 = trunc i32 %3 to i16
  %47 = getelementptr i16, ptr %1, i32 %2
  store i16 %46, ptr %47, align 2
  br label %51

48:                                               ; preds = %41
  %49 = getelementptr i32, ptr %1, i32 %2
  store i32 %3, ptr %49, align 4
  br label %51

50:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 589, 0\0A.popsection", ""() #9, !srcloc !27
  unreachable

51:                                               ; preds = %48, %45, %42, %38, %29
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_get_val(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %10 = load i32, ptr %9, align 4
  br i1 %8, label %15, label %11

11:                                               ; preds = %5
  %12 = mul i32 %10, %2
  %13 = getelementptr i8, ptr %1, i32 %12
  %14 = tail call i32 %7(ptr noundef %13) #9
  br label %28

15:                                               ; preds = %5
  switch i32 %10, label %27 [
    i32 1, label %16
    i32 2, label %20
    i32 4, label %24
  ]

16:                                               ; preds = %15
  %17 = getelementptr i8, ptr %1, i32 %2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br label %28

20:                                               ; preds = %15
  %21 = getelementptr i16, ptr %1, i32 %2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr i32, ptr %1, i32 %2
  %26 = load i32, ptr %25, align 4
  br label %28

27:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

28:                                               ; preds = %24, %20, %16, %11, %3
  %29 = phi i32 [ %14, %11 ], [ %26, %24 ], [ %23, %20 ], [ %19, %16 ], [ -22, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_lookup_reg(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.reg_default, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i32 %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.reg_default, ptr %3, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  %8 = load i32, ptr %7, align 4
  %9 = call ptr @bsearch(ptr noundef nonnull %3, ptr noundef %6, i32 noundef %8, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %9 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = ashr exact i32 %15, 3
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %16, %11 ], [ -2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regcache_default_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regcache_sync_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.reg_default, align 8
  %8 = alloca %struct.reg_default, align 8
  %9 = tail call zeroext i1 @regmap_can_raw_write(ptr noundef %0) #9
  br i1 %9, label %10, label %149

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 64
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %149

14:                                               ; preds = %10
  %15 = icmp ult i32 %4, %5
  br i1 %15, label %16, label %229

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %18 = icmp eq ptr %2, null
  %19 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %21 = icmp eq ptr %1, null
  %22 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %24 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 60
  %25 = getelementptr inbounds %struct.reg_default, ptr %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  %27 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  br label %28

28:                                               ; preds = %126, %16
  %29 = phi i32 [ 0, %16 ], [ %128, %126 ]
  %30 = phi i32 [ %4, %16 ], [ %129, %126 ]
  %31 = phi ptr [ null, %16 ], [ %127, %126 ]
  %32 = load i32, ptr %17, align 4
  %33 = mul i32 %32, %30
  %34 = add i32 %33, %3
  br i1 %18, label %43, label %35

35:                                               ; preds = %28
  %36 = lshr i32 %30, 5
  %37 = getelementptr i32, ptr %2, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %30, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35, %28
  %44 = call zeroext i1 @regmap_writeable(ptr noundef %0, i32 noundef %34) #9
  br i1 %44, label %61, label %45

45:                                               ; preds = %43, %35
  %46 = icmp eq ptr %31, null
  br i1 %46, label %126, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %19, align 4
  %49 = sub i32 %34, %29
  %50 = load i32, ptr %17, align 4
  %51 = udiv i32 %49, %50
  store i8 1, ptr %20, align 1
  %52 = mul i32 %51, %48
  %53 = call i32 @_regmap_raw_write(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %31, i32 noundef %52, i1 noundef zeroext false) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i8 0, ptr %20, align 1
  br label %126

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %17, align 4
  %60 = sub i32 %34, %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %60, i32 noundef %53) #8
  br label %147

61:                                               ; preds = %43
  br i1 %21, label %83, label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %22, align 4
  %64 = icmp eq ptr %63, null
  %65 = load i32, ptr %23, align 4
  br i1 %64, label %70, label %66

66:                                               ; preds = %62
  %67 = mul i32 %65, %30
  %68 = getelementptr i8, ptr %1, i32 %67
  %69 = call i32 %63(ptr noundef %68) #9
  br label %83

70:                                               ; preds = %62
  switch i32 %65, label %82 [
    i32 1, label %71
    i32 2, label %75
    i32 4, label %79
  ]

71:                                               ; preds = %70
  %72 = getelementptr i8, ptr %1, i32 %30
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  br label %83

75:                                               ; preds = %70
  %76 = getelementptr i16, ptr %1, i32 %30
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  br label %83

79:                                               ; preds = %70
  %80 = getelementptr i32, ptr %1, i32 %30
  %81 = load i32, ptr %80, align 4
  br label %83

82:                                               ; preds = %70
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

83:                                               ; preds = %79, %75, %71, %66, %61
  %84 = phi i32 [ %69, %66 ], [ %81, %79 ], [ %78, %75 ], [ %74, %71 ], [ -22, %61 ]
  %85 = load i8, ptr %24, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i32 %34, ptr %8, align 8
  store i32 0, ptr %25, align 4
  %88 = load ptr, ptr %26, align 4
  %89 = load i32, ptr %27, align 4
  %90 = call ptr @bsearch(ptr noundef nonnull %8, ptr noundef %88, i32 noundef %89, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %120

93:                                               ; preds = %87
  %94 = load ptr, ptr %26, align 4
  %95 = ptrtoint ptr %90 to i32
  %96 = ptrtoint ptr %94 to i32
  %97 = sub i32 %95, %96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %98 = icmp sgt i32 %97, -8
  br i1 %98, label %99, label %120

99:                                               ; preds = %93
  %100 = ashr exact i32 %97, 3
  %101 = getelementptr %struct.reg_default, ptr %94, i32 %100, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, %84
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = icmp eq ptr %31, null
  br i1 %105, label %126, label %106

106:                                              ; preds = %104
  %107 = load i32, ptr %19, align 4
  %108 = sub i32 %34, %29
  %109 = load i32, ptr %17, align 4
  %110 = udiv i32 %108, %109
  store i8 1, ptr %20, align 1
  %111 = mul i32 %110, %107
  %112 = call i32 @_regmap_raw_write(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %31, i32 noundef %111, i1 noundef zeroext false) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i8 0, ptr %20, align 1
  br label %126

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = load i32, ptr %17, align 4
  %119 = sub i32 %34, %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %119, i32 noundef %112) #8
  br label %147

120:                                              ; preds = %99, %93, %92, %83
  %121 = icmp eq ptr %31, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = load i32, ptr %23, align 4
  %124 = mul i32 %123, %30
  %125 = getelementptr i8, ptr %1, i32 %124
  br label %126

126:                                              ; preds = %122, %120, %114, %104, %55, %45
  %127 = phi ptr [ %125, %122 ], [ %31, %120 ], [ null, %55 ], [ null, %114 ], [ null, %45 ], [ null, %104 ]
  %128 = phi i32 [ %34, %122 ], [ %29, %120 ], [ %29, %55 ], [ %29, %114 ], [ %29, %45 ], [ %29, %104 ]
  %129 = add i32 %30, 1
  %130 = icmp eq i32 %129, %5
  br i1 %130, label %131, label %28

131:                                              ; preds = %126
  %132 = load i32, ptr %17, align 4
  %133 = add i32 %132, %34
  %134 = icmp eq ptr %127, null
  br i1 %134, label %229, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %19, align 4
  %137 = sub i32 %133, %128
  %138 = udiv i32 %137, %132
  store i8 1, ptr %20, align 1
  %139 = mul i32 %138, %136
  %140 = call i32 @_regmap_raw_write(ptr noundef %0, i32 noundef %128, ptr noundef nonnull %127, i32 noundef %139, i1 noundef zeroext false) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  %145 = load i32, ptr %17, align 4
  %146 = sub i32 %133, %145
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.13, i32 noundef %128, i32 noundef %146, i32 noundef %140) #8
  br label %147

147:                                              ; preds = %142, %135, %115, %56
  %148 = phi i32 [ %112, %115 ], [ %53, %56 ], [ %140, %142 ], [ 0, %135 ]
  store i8 0, ptr %20, align 1
  br label %229

149:                                              ; preds = %10, %6
  %150 = icmp ult i32 %4, %5
  br i1 %150, label %151, label %229

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %153 = icmp eq ptr %2, null
  %154 = icmp eq ptr %1, null
  %155 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %156 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 50
  %157 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 60
  %158 = getelementptr inbounds %struct.reg_default, ptr %7, i32 0, i32 1
  %159 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 56
  %160 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 51
  %161 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  br label %162

162:                                              ; preds = %226, %151
  %163 = phi i32 [ %4, %151 ], [ %227, %226 ]
  %164 = load i32, ptr %152, align 4
  %165 = mul i32 %164, %163
  %166 = add i32 %165, %3
  br i1 %153, label %175, label %167

167:                                              ; preds = %162
  %168 = lshr i32 %163, 5
  %169 = getelementptr i32, ptr %2, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %163, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %170, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %226, label %175

175:                                              ; preds = %167, %162
  %176 = call zeroext i1 @regmap_writeable(ptr noundef %0, i32 noundef %166) #9
  br i1 %176, label %177, label %226

177:                                              ; preds = %175
  br i1 %154, label %199, label %178

178:                                              ; preds = %177
  %179 = load ptr, ptr %155, align 4
  %180 = icmp eq ptr %179, null
  %181 = load i32, ptr %156, align 4
  br i1 %180, label %186, label %182

182:                                              ; preds = %178
  %183 = mul i32 %181, %163
  %184 = getelementptr i8, ptr %1, i32 %183
  %185 = call i32 %179(ptr noundef %184) #9
  br label %199

186:                                              ; preds = %178
  switch i32 %181, label %198 [
    i32 1, label %187
    i32 2, label %191
    i32 4, label %195
  ]

187:                                              ; preds = %186
  %188 = getelementptr i8, ptr %1, i32 %163
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  br label %199

191:                                              ; preds = %186
  %192 = getelementptr i16, ptr %1, i32 %163
  %193 = load i16, ptr %192, align 2
  %194 = zext i16 %193 to i32
  br label %199

195:                                              ; preds = %186
  %196 = getelementptr i32, ptr %1, i32 %163
  %197 = load i32, ptr %196, align 4
  br label %199

198:                                              ; preds = %186
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

199:                                              ; preds = %195, %191, %187, %182, %177
  %200 = phi i32 [ %185, %182 ], [ %197, %195 ], [ %194, %191 ], [ %190, %187 ], [ -22, %177 ]
  %201 = load i8, ptr %157, align 1, !range !8
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %220, label %203

203:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  store i32 %166, ptr %7, align 8
  store i32 0, ptr %158, align 4
  %204 = load ptr, ptr %159, align 4
  %205 = load i32, ptr %160, align 4
  %206 = call ptr @bsearch(ptr noundef nonnull %7, ptr noundef %204, i32 noundef %205, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %220

209:                                              ; preds = %203
  %210 = load ptr, ptr %159, align 4
  %211 = ptrtoint ptr %206 to i32
  %212 = ptrtoint ptr %210 to i32
  %213 = sub i32 %211, %212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %214 = icmp sgt i32 %213, -8
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = ashr exact i32 %213, 3
  %217 = getelementptr %struct.reg_default, ptr %210, i32 %216, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, %200
  br i1 %219, label %226, label %220

220:                                              ; preds = %215, %209, %208, %199
  store i8 1, ptr %161, align 1
  %221 = call i32 @_regmap_write(ptr noundef %0, i32 noundef %166, i32 noundef %200) #9
  store i8 0, ptr %161, align 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %225 = load ptr, ptr %224, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.12, i32 noundef %166, i32 noundef %221) #8
  br label %229

226:                                              ; preds = %220, %215, %175, %167
  %227 = add i32 %163, 1
  %228 = icmp eq i32 %227, %5
  br i1 %228, label %229, label %162

229:                                              ; preds = %226, %223, %149, %147, %131, %14
  %230 = phi i32 [ 0, %131 ], [ 0, %14 ], [ %148, %147 ], [ %221, %223 ], [ 0, %149 ], [ 0, %226 ]
  ret i32 %230
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_can_raw_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_readable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regmap_reg_read_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regcache_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_writeable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regcache_drop_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regmap_cache_only(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regmap_cache_bypass(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152461187, i64 2152461682, i64 2152461224, i64 2152461280, i64 2152461314, i64 2152461338, i64 2152461379, i64 2152461400, i64 2152461428, i64 2152461462}
!12 = !{i64 2152442449, i64 2152442944, i64 2152442486, i64 2152442542, i64 2152442576, i64 2152442600, i64 2152442641, i64 2152442662, i64 2152442690, i64 2152442724}
!13 = !{i64 2152444108, i64 2152444603, i64 2152444145, i64 2152444201, i64 2152444235, i64 2152444259, i64 2152444300, i64 2152444321, i64 2152444349, i64 2152444383}
!14 = !{i64 2152204517}
!15 = !{i64 2152204697}
!16 = !{i64 2152445166, i64 2152445661, i64 2152445203, i64 2152445259, i64 2152445293, i64 2152445317, i64 2152445358, i64 2152445379, i64 2152445407, i64 2152445441}
!17 = !{i64 2152447480, i64 2152447975, i64 2152447517, i64 2152447573, i64 2152447607, i64 2152447631, i64 2152447672, i64 2152447693, i64 2152447721, i64 2152447755}
!18 = !{i64 2152297034}
!19 = !{i64 2152297206}
!20 = !{i64 2152450957, i64 2152451452, i64 2152450994, i64 2152451050, i64 2152451084, i64 2152451108, i64 2152451149, i64 2152451170, i64 2152451198, i64 2152451232}
!21 = !{i64 2152421908}
!22 = !{i64 2152422086}
!23 = !{i64 2152313160}
!24 = !{i64 2152313324}
!25 = !{i64 2152329454}
!26 = !{i64 2152329622}
!27 = !{i64 2152460237, i64 2152460732, i64 2152460274, i64 2152460330, i64 2152460364, i64 2152460388, i64 2152460429, i64 2152460450, i64 2152460478, i64 2152460512}
