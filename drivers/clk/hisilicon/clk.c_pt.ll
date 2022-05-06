; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_init\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_mux\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_phase\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_divider\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_gate\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hisi_clk_register_gate_sep:\09\09\09\09\09"
module asm "\09.asciz \09\22hisi_clk_register_gate_sep\22\09\09\09\09\09"
module asm "__kstrtabns_hisi_clk_register_gate_sep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hisi_clock_data = type { %struct.clk_onecell_data, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_phase_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, i8 }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hi6220_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i32, ptr }

@__kstrtab_hisi_clk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_alloc to i32), ptr @__kstrtab_hisi_clk_alloc, ptr @__kstrtabns_hisi_clk_alloc }, section "___ksymtab_gpl+hisi_clk_alloc", align 4
@.str = private unnamed_addr constant [37 x i8] c"\013%s: failed to map clock registers\0A\00", align 1
@__func__.hisi_clk_init = private unnamed_addr constant [14 x i8] c"hisi_clk_init\00", align 1
@__kstrtab_hisi_clk_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_init to i32), ptr @__kstrtab_hisi_clk_init, ptr @__kstrtabns_hisi_clk_init }, section "___ksymtab_gpl+hisi_clk_init", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013%s: failed to register clock %s\0A\00", align 1
@__func__.hisi_clk_register_fixed_rate = private unnamed_addr constant [29 x i8] c"hisi_clk_register_fixed_rate\00", align 1
@__kstrtab_hisi_clk_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_fixed_rate to i32), ptr @__kstrtab_hisi_clk_register_fixed_rate, ptr @__kstrtabns_hisi_clk_register_fixed_rate }, section "___ksymtab_gpl+hisi_clk_register_fixed_rate", align 4
@__func__.hisi_clk_register_fixed_factor = private unnamed_addr constant [31 x i8] c"hisi_clk_register_fixed_factor\00", align 1
@__kstrtab_hisi_clk_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_fixed_factor to i32), ptr @__kstrtab_hisi_clk_register_fixed_factor, ptr @__kstrtabns_hisi_clk_register_fixed_factor }, section "___ksymtab_gpl+hisi_clk_register_fixed_factor", align 4
@hisi_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@__func__.hisi_clk_register_mux = private unnamed_addr constant [22 x i8] c"hisi_clk_register_mux\00", align 1
@__kstrtab_hisi_clk_register_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_mux to i32), ptr @__kstrtab_hisi_clk_register_mux, ptr @__kstrtabns_hisi_clk_register_mux }, section "___ksymtab_gpl+hisi_clk_register_mux", align 4
@__func__.hisi_clk_register_phase = private unnamed_addr constant [24 x i8] c"hisi_clk_register_phase\00", align 1
@__kstrtab_hisi_clk_register_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_phase to i32), ptr @__kstrtab_hisi_clk_register_phase, ptr @__kstrtabns_hisi_clk_register_phase }, section "___ksymtab_gpl+hisi_clk_register_phase", align 4
@__func__.hisi_clk_register_divider = private unnamed_addr constant [26 x i8] c"hisi_clk_register_divider\00", align 1
@__kstrtab_hisi_clk_register_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_divider to i32), ptr @__kstrtab_hisi_clk_register_divider, ptr @__kstrtabns_hisi_clk_register_divider }, section "___ksymtab_gpl+hisi_clk_register_divider", align 4
@__func__.hisi_clk_register_gate = private unnamed_addr constant [23 x i8] c"hisi_clk_register_gate\00", align 1
@__kstrtab_hisi_clk_register_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_gate to i32), ptr @__kstrtab_hisi_clk_register_gate, ptr @__kstrtabns_hisi_clk_register_gate }, section "___ksymtab_gpl+hisi_clk_register_gate", align 4
@__func__.hisi_clk_register_gate_sep = private unnamed_addr constant [27 x i8] c"hisi_clk_register_gate_sep\00", align 1
@__kstrtab_hisi_clk_register_gate_sep = external dso_local constant [0 x i8], align 1
@__kstrtabns_hisi_clk_register_gate_sep = external dso_local constant [0 x i8], align 1
@__ksymtab_hisi_clk_register_gate_sep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hisi_clk_register_gate_sep to i32), ptr @__kstrtab_hisi_clk_register_gate_sep, ptr @__kstrtabns_hisi_clk_register_gate_sep }, section "___ksymtab_gpl+hisi_clk_register_gate_sep", align 4
@__func__.hi6220_clk_register_divider = private unnamed_addr constant [28 x i8] c"hi6220_clk_register_divider\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_hisi_clk_alloc, ptr @__ksymtab_hisi_clk_init, ptr @__ksymtab_hisi_clk_register_divider, ptr @__ksymtab_hisi_clk_register_fixed_factor, ptr @__ksymtab_hisi_clk_register_fixed_rate, ptr @__ksymtab_hisi_clk_register_gate, ptr @__ksymtab_hisi_clk_register_gate_sep, ptr @__ksymtab_hisi_clk_register_mux, ptr @__ksymtab_hisi_clk_register_phase], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3264) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 1, %10
  %14 = add i32 %13, %12
  %15 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %10, i32 noundef %14) #7
  %16 = getelementptr inbounds %struct.hisi_clock_data, ptr %4, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #7
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %27, label %21, !prof !8

21:                                               ; preds = %18
  %22 = extractvalue { i32, i1 } %19, 0
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %22, i32 noundef 3264) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  store ptr %23, ptr %4, align 4
  %26 = getelementptr inbounds %struct.clk_onecell_data, ptr %4, i32 0, i32 1
  store i32 %1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %21, %18, %9, %6, %2
  %28 = phi ptr [ %4, %25 ], [ null, %2 ], [ null, %6 ], [ null, %9 ], [ null, %21 ], [ null, %18 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hisi_clk_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.hisi_clk_init) #8
  br label %23

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hisi_clock_data, ptr %9, i32 0, i32 1
  store ptr %3, ptr %12, align 8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #7
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %22, label %15, !prof !8

15:                                               ; preds = %11
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  store ptr %17, ptr %9, align 8
  %20 = getelementptr inbounds %struct.clk_onecell_data, ptr %9, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %9) #7
  br label %23

22:                                               ; preds = %15, %11
  tail call void @kfree(ptr noundef nonnull %9) #7
  br label %23

23:                                               ; preds = %22, %19, %7, %5
  %24 = phi ptr [ %9, %19 ], [ null, %7 ], [ null, %22 ], [ null, %5 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hisi_clk_register_fixed_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %21, %3
  %6 = phi i32 [ %26, %21 ], [ 0, %3 ]
  %7 = getelementptr %struct.hisi_fixed_rate_clock, ptr %0, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.hisi_fixed_rate_clock, ptr %0, i32 %6, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.hisi_fixed_rate_clock, ptr %0, i32 %6, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.hisi_fixed_rate_clock, ptr %0, i32 %6, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef %14) #7
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_fixed_rate, ptr noundef %18) #8
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %37, label %28

21:                                               ; preds = %5
  %22 = getelementptr %struct.hisi_fixed_rate_clock, ptr %0, i32 %6
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr %22, align 4
  %25 = getelementptr ptr, ptr %23, i32 %24
  store ptr %15, ptr %25, align 4
  %26 = add nuw nsw i32 %6, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %39, label %5

28:                                               ; preds = %28, %17
  %29 = phi i32 [ %30, %28 ], [ %6, %17 ]
  %30 = add nsw i32 %29, -1
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr %struct.hisi_fixed_rate_clock, ptr %0, i32 %30
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr ptr, ptr %31, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call void @clk_unregister_fixed_rate(ptr noundef %35) #7
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %17
  %38 = ptrtoint ptr %15 to i32
  br label %39

39:                                               ; preds = %37, %21, %3
  %40 = phi i32 [ %38, %37 ], [ 0, %3 ], [ 0, %21 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hisi_clk_register_fixed_factor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %23, %3
  %6 = phi i32 [ %28, %23 ], [ 0, %3 ]
  %7 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %6, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %6, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %6, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %6, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #7
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_fixed_factor, ptr noundef %20) #8
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %39, label %30

23:                                               ; preds = %5
  %24 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %6
  %25 = load ptr, ptr %2, align 4
  %26 = load i32, ptr %24, align 4
  %27 = getelementptr ptr, ptr %25, i32 %26
  store ptr %17, ptr %27, align 4
  %28 = add nuw nsw i32 %6, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %41, label %5

30:                                               ; preds = %30, %19
  %31 = phi i32 [ %32, %30 ], [ %6, %19 ]
  %32 = add nsw i32 %31, -1
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr %struct.hisi_fixed_factor_clock, ptr %0, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr ptr, ptr %33, i32 %35
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_unregister_fixed_factor(ptr noundef %37) #7
  %38 = icmp eq i32 %32, 0
  br i1 %38, label %39, label %30

39:                                               ; preds = %30, %19
  %40 = ptrtoint ptr %17 to i32
  br label %41

41:                                               ; preds = %39, %23, %3
  %42 = phi i32 [ %40, %39 ], [ 0, %3 ], [ 0, %23 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_factor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hisi_clk_register_mux(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hisi_clock_data, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %44, %3
  %8 = phi i32 [ %48, %44 ], [ 0, %3 ]
  %9 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8
  %10 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 7
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %5, i32 %24
  %26 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 6
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 8
  %29 = load i8, ptr %28, align 2
  %30 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %16, ptr noundef %18, i8 noundef zeroext %20, i32 noundef %22, ptr noundef %25, i8 noundef zeroext %27, i32 noundef %14, i8 noundef zeroext %29, ptr noundef %31, ptr noundef nonnull @hisi_clk_lock) #7
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %40, label %34

34:                                               ; preds = %7
  %35 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %8, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @clk_register_clkdev(ptr noundef %32, ptr noundef nonnull %36, ptr noundef null) #7
  br label %44

40:                                               ; preds = %7
  %41 = load ptr, ptr %15, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_mux, ptr noundef %41) #8
  %43 = icmp eq i32 %8, 0
  br i1 %43, label %59, label %50

44:                                               ; preds = %38, %34
  %45 = load ptr, ptr %2, align 4
  %46 = load i32, ptr %9, align 4
  %47 = getelementptr ptr, ptr %45, i32 %46
  store ptr %32, ptr %47, align 4
  %48 = add nuw nsw i32 %8, 1
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %61, label %7

50:                                               ; preds = %50, %40
  %51 = phi i32 [ %52, %50 ], [ %8, %40 ]
  %52 = add nsw i32 %51, -1
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr %struct.hisi_mux_clock, ptr %0, i32 %52
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr ptr, ptr %53, i32 %55
  %57 = load ptr, ptr %56, align 4
  tail call void @clk_unregister_mux(ptr noundef %57) #7
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %59, label %50

59:                                               ; preds = %50, %40
  %60 = ptrtoint ptr %32 to i32
  br label %61

61:                                               ; preds = %59, %44, %3
  %62 = phi i32 [ %60, %59 ], [ 0, %3 ], [ 0, %44 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hisi_clk_register_phase(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.hisi_clock_data, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %18, %4
  %9 = phi i32 [ %22, %18 ], [ 0, %4 ]
  %10 = getelementptr %struct.hisi_phase_clock, ptr %1, i32 %9
  %11 = tail call ptr @clk_register_hisi_phase(ptr noundef %0, ptr noundef %10, ptr noundef %6, ptr noundef nonnull @hisi_clk_lock) #7
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr %struct.hisi_phase_clock, ptr %1, i32 %9, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_phase, ptr noundef %15) #8
  %17 = ptrtoint ptr %11 to i32
  br label %24

18:                                               ; preds = %8
  %19 = load ptr, ptr %3, align 4
  %20 = load i32, ptr %10, align 4
  %21 = getelementptr ptr, ptr %19, i32 %20
  store ptr %11, ptr %21, align 4
  %22 = add nuw nsw i32 %9, 1
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %8

24:                                               ; preds = %18, %13, %4
  %25 = phi i32 [ %17, %13 ], [ 0, %4 ], [ 0, %18 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_hisi_phase(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hisi_clk_register_divider(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hisi_clock_data, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %39, %3
  %8 = phi i32 [ %43, %39 ], [ 0, %3 ]
  %9 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8
  %10 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %5, i32 %17
  %19 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 7
  %24 = load i8, ptr %23, align 2
  %25 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, i8 noundef zeroext %24, ptr noundef %26, ptr noundef nonnull @hisi_clk_lock) #7
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load ptr, ptr %10, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_divider, ptr noundef %30) #8
  %32 = icmp eq i32 %8, 0
  br i1 %32, label %54, label %45

33:                                               ; preds = %7
  %34 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %8, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @clk_register_clkdev(ptr noundef %27, ptr noundef nonnull %35, ptr noundef null) #7
  br label %39

39:                                               ; preds = %37, %33
  %40 = load ptr, ptr %2, align 4
  %41 = load i32, ptr %9, align 4
  %42 = getelementptr ptr, ptr %40, i32 %41
  store ptr %27, ptr %42, align 4
  %43 = add nuw nsw i32 %8, 1
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %56, label %7

45:                                               ; preds = %45, %29
  %46 = phi i32 [ %47, %45 ], [ %8, %29 ]
  %47 = add nsw i32 %46, -1
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr %struct.hisi_divider_clock, ptr %0, i32 %47
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr ptr, ptr %48, i32 %50
  %52 = load ptr, ptr %51, align 4
  tail call void @clk_unregister_divider(ptr noundef %52) #7
  %53 = icmp eq i32 %47, 0
  br i1 %53, label %54, label %45

54:                                               ; preds = %45, %29
  %55 = ptrtoint ptr %27 to i32
  br label %56

56:                                               ; preds = %54, %39, %3
  %57 = phi i32 [ %55, %54 ], [ 0, %3 ], [ 0, %39 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hisi_clk_register_gate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hisi_clock_data, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %35, %3
  %8 = phi i32 [ %39, %35 ], [ 0, %3 ]
  %9 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8
  %10 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %5, i32 %17
  %19 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, ptr noundef nonnull @hisi_clk_lock) #7
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load ptr, ptr %10, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_gate, ptr noundef %26) #8
  %28 = icmp eq i32 %8, 0
  br i1 %28, label %50, label %41

29:                                               ; preds = %7
  %30 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @clk_register_clkdev(ptr noundef %23, ptr noundef nonnull %31, ptr noundef null) #7
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr %2, align 4
  %37 = load i32, ptr %9, align 4
  %38 = getelementptr ptr, ptr %36, i32 %37
  store ptr %23, ptr %38, align 4
  %39 = add nuw nsw i32 %8, 1
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %52, label %7

41:                                               ; preds = %41, %25
  %42 = phi i32 [ %43, %41 ], [ %8, %25 ]
  %43 = add nsw i32 %42, -1
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %43
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr ptr, ptr %44, i32 %46
  %48 = load ptr, ptr %47, align 4
  tail call void @clk_unregister_gate(ptr noundef %48) #7
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %50, label %41

50:                                               ; preds = %41, %25
  %51 = ptrtoint ptr %23 to i32
  br label %52

52:                                               ; preds = %50, %35, %3
  %53 = phi i32 [ %51, %50 ], [ 0, %3 ], [ 0, %35 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hisi_clk_register_gate_sep(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hisi_clock_data, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %38, %3
  %8 = phi i32 [ %39, %38 ], [ 0, %3 ]
  %9 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8
  %10 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %5, i32 %17
  %19 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = tail call ptr @hisi_register_clkgate_sep(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, ptr noundef nonnull @hisi_clk_lock) #7
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load ptr, ptr %10, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hisi_clk_register_gate_sep, ptr noundef %26) #8
  br label %38

28:                                               ; preds = %7
  %29 = getelementptr %struct.hisi_gate_clock, ptr %0, i32 %8, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @clk_register_clkdev(ptr noundef %23, ptr noundef nonnull %30, ptr noundef null) #7
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr %2, align 4
  %36 = load i32, ptr %9, align 4
  %37 = getelementptr ptr, ptr %35, i32 %36
  store ptr %23, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = add nuw nsw i32 %8, 1
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %7

41:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_register_clkgate_sep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @hi6220_clk_register_divider(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 section ".init.text" {
  %4 = getelementptr inbounds %struct.hisi_clock_data, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %40, %3
  %8 = phi i32 [ %41, %40 ], [ 0, %3 ]
  %9 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8
  %10 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %5, i32 %17
  %19 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @hi6220_register_clkdiv(ptr noundef null, ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, i32 noundef %24, ptr noundef nonnull @hisi_clk_lock) #7
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load ptr, ptr %10, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hi6220_clk_register_divider, ptr noundef %28) #8
  br label %40

30:                                               ; preds = %7
  %31 = getelementptr %struct.hi6220_divider_clock, ptr %0, i32 %8, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @clk_register_clkdev(ptr noundef %25, ptr noundef nonnull %32, ptr noundef null) #7
  br label %36

36:                                               ; preds = %34, %30
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %9, align 4
  %39 = getelementptr ptr, ptr %37, i32 %38
  store ptr %25, ptr %39, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = add nuw nsw i32 %8, 1
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %7

43:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hi6220_register_clkdiv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
