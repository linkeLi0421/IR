; ModuleID = '/llk/IR/sound/soc/soc-ac97.c_pt.bc'
source_filename = "../sound/soc/soc-ac97.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_alloc_ac97_component:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_alloc_ac97_component\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_alloc_ac97_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_new_ac97_component:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_new_ac97_component\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_new_ac97_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_free_ac97_component:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_free_ac97_component\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_free_ac97_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_ac97_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_ac97_ops\22\09\09\09\09\09"
module asm "__kstrtabns_soc_ac97_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_set_ac97_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_set_ac97_ops\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_set_ac97_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_set_ac97_ops_of_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_set_ac97_ops_of_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_set_ac97_ops_of_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.70, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.70 = type { ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.68, i8, i8, %struct.device, ptr, [2 x ptr] }
%union.anon.68 = type { i32, [28 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_ac97_gpio_priv = type { %struct.gpio_chip, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@soc_ac97_bus = internal global %struct.snd_ac97_bus zeroinitializer, align 4
@ac97_bus_type = external dso_local global %struct.bus_type, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d-%d:%s\00", align 1
@__kstrtab_snd_soc_alloc_ac97_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_alloc_ac97_component = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_alloc_ac97_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_alloc_ac97_component to i32), ptr @__kstrtab_snd_soc_alloc_ac97_component, ptr @__kstrtabns_snd_soc_alloc_ac97_component }, section "___ksymtab+snd_soc_alloc_ac97_component", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to reset AC97 device: %d\0A\00", align 1
@__kstrtab_snd_soc_new_ac97_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_new_ac97_component = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_new_ac97_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_new_ac97_component to i32), ptr @__kstrtab_snd_soc_new_ac97_component, ptr @__kstrtabns_snd_soc_new_ac97_component }, section "___ksymtab_gpl+snd_soc_new_ac97_component", align 4
@__kstrtab_snd_soc_free_ac97_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_free_ac97_component = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_free_ac97_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_free_ac97_component to i32), ptr @__kstrtab_snd_soc_free_ac97_component, ptr @__kstrtabns_snd_soc_free_ac97_component }, section "___ksymtab_gpl+snd_soc_free_ac97_component", align 4
@soc_ac97_ops = dso_local global ptr null, align 4
@__kstrtab_soc_ac97_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_ac97_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_ac97_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_ac97_ops to i32), ptr @__kstrtab_soc_ac97_ops, ptr @__kstrtabns_soc_ac97_ops }, section "___ksymtab_gpl+soc_ac97_ops", align 4
@__kstrtab_snd_soc_set_ac97_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_set_ac97_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_set_ac97_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_set_ac97_ops to i32), ptr @__kstrtab_snd_soc_set_ac97_ops, ptr @__kstrtabns_snd_soc_set_ac97_ops }, section "___ksymtab_gpl+snd_soc_set_ac97_ops", align 4
@snd_ac97_rst_cfg.0 = internal unnamed_addr global ptr null, align 4
@snd_ac97_rst_cfg.1 = internal unnamed_addr global ptr null, align 4
@snd_ac97_rst_cfg.2 = internal unnamed_addr global ptr null, align 4
@snd_ac97_rst_cfg.3 = internal unnamed_addr global ptr null, align 4
@snd_ac97_rst_cfg.4 = internal unnamed_addr global i32 0, align 4
@snd_ac97_rst_cfg.5 = internal unnamed_addr global i32 0, align 4
@snd_ac97_rst_cfg.6 = internal unnamed_addr global i32 0, align 4
@__kstrtab_snd_soc_set_ac97_ops_of_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_set_ac97_ops_of_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_set_ac97_ops_of_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_set_ac97_ops_of_reset to i32), ptr @__kstrtab_snd_soc_set_ac97_ops_of_reset, ptr @__kstrtabns_snd_soc_set_ac97_ops_of_reset }, section "___ksymtab_gpl+snd_soc_set_ac97_ops_of_reset", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_soc_ac97_gpio_chip = internal unnamed_addr constant %struct.gpio_chip { ptr @.str.3, ptr null, ptr null, ptr null, ptr @__this_module, ptr @snd_soc_ac97_gpio_request, ptr null, ptr null, ptr @snd_soc_ac97_gpio_direction_in, ptr @snd_soc_ac97_gpio_direction_out, ptr @snd_soc_ac97_gpio_get, ptr null, ptr @snd_soc_ac97_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to add GPIOs: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"snd_soc_ac97\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to get pinctrl\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ac97-reset\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Can't find pinctrl state ac97-reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ac97-warm-reset\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Can't find pinctrl state ac97-warm-reset\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ac97-running\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Can't find pinctrl state ac97-running\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ac97-gpios\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Can't find ac97-sync gpio\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"AC97 link sync\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed requesting ac97-sync gpio\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Can't find ac97-sdata gpio %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"AC97 link sdata\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Failed requesting ac97-sdata gpio\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Can't find ac97-reset gpio\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"AC97 link reset\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Failed requesting ac97-reset gpio\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_snd_soc_alloc_ac97_component, ptr @__ksymtab_snd_soc_free_ac97_component, ptr @__ksymtab_snd_soc_new_ac97_component, ptr @__ksymtab_snd_soc_set_ac97_ops, ptr @__ksymtab_snd_soc_set_ac97_ops_of_reset, ptr @__ksymtab_soc_ac97_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_soc_alloc_ac97_component(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 928) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 3
  store ptr @soc_ac97_bus, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 11
  store i16 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 27
  %9 = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 27, i32 5
  store ptr @ac97_bus_type, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 27, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 27, i32 33
  store ptr @soc_ac97_device_release, ptr %15, align 4
  %16 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 8
  %19 = load ptr, ptr %0, align 4
  %20 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %18, i32 noundef 0, ptr noundef %19) #8
  tail call void @device_initialize(ptr noundef %8) #8
  br label %21

21:                                               ; preds = %5, %1
  %22 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @soc_ac97_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -440
  tail call void @kfree(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_soc_new_ac97_component(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 928) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 3
  store ptr @soc_ac97_bus, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 11
  store i16 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 27
  %11 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 27, i32 5
  store ptr @ac97_bus_type, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 27, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 27, i32 33
  store ptr @soc_ac97_device_release, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %20, i32 noundef 0, ptr noundef %21) #8
  tail call void @device_initialize(ptr noundef %10) #8
  %23 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %54, label %24

24:                                               ; preds = %7
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @snd_ac97_reset(ptr noundef nonnull %5, i1 noundef zeroext false, i32 noundef %1, i32 noundef %2) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef %27) #9
  br label %51

32:                                               ; preds = %26, %24
  %33 = tail call i32 @device_add(ptr noundef %10) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 312, i32 noundef 3520) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 28
  store ptr %38, ptr %41, align 8
  %42 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %38, i32 0, i32 2
  store ptr %0, ptr %42, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(304) %38, ptr noundef nonnull align 4 dereferenceable(304) @snd_soc_ac97_gpio_chip, i32 304, i1 false) #8
  %43 = getelementptr inbounds %struct.gpio_chip, ptr %38, i32 0, i32 20
  store i16 16, ptr %43, align 4
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr inbounds %struct.gpio_chip, ptr %38, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.gpio_chip, ptr %38, i32 0, i32 19
  store i32 -1, ptr %46, align 4
  %47 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %38, ptr noundef nonnull %38, ptr noundef null, ptr noundef null) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.2, i32 noundef %47) #9
  br label %51

51:                                               ; preds = %49, %35, %32, %29
  %52 = phi i32 [ %27, %29 ], [ %33, %32 ], [ %47, %49 ], [ -12, %35 ]
  tail call void @put_device(ptr noundef %10) #8
  %53 = inttoptr i32 %52 to ptr
  br label %54

54:                                               ; preds = %51, %40, %7, %3
  %55 = phi ptr [ %53, %51 ], [ %5, %7 ], [ %5, %40 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_reset(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_free_ac97_component(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 8
  tail call void @gpiochip_remove(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 27
  tail call void @device_del(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 3
  store ptr null, ptr %5, align 4
  tail call void @put_device(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_soc_set_ac97_ops(ptr noundef %0) #3 {
  %2 = load ptr, ptr @soc_ac97_ops, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = icmp ne ptr %2, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store ptr %0, ptr @soc_ac97_ops, align 4
  store ptr %0, ptr @soc_ac97_bus, align 4
  br label %9

9:                                                ; preds = %8, %4, %1
  %10 = phi i32 [ 0, %8 ], [ 0, %1 ], [ -16, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_set_ac97_ops_of_reset(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = tail call ptr @devm_pinctrl_get(ptr noundef %3) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @pinctrl_lookup_state(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %43, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @pinctrl_lookup_state(ptr noundef %4, ptr noundef nonnull @.str.7) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @pinctrl_lookup_state(ptr noundef %4, ptr noundef nonnull @.str.9) #8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %43, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @of_get_named_gpio_flags(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #9
  br label %57

21:                                               ; preds = %15
  %22 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %18, ptr noundef nonnull @.str.13) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #9
  br label %57

25:                                               ; preds = %21
  %26 = load ptr, ptr %16, align 8
  %27 = tail call i32 @of_get_named_gpio_flags(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef null) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %27) #9
  br label %57

30:                                               ; preds = %25
  %31 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %27, ptr noundef nonnull @.str.16) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %57

34:                                               ; preds = %30
  %35 = load ptr, ptr %16, align 8
  %36 = tail call i32 @of_get_named_gpio_flags(ptr noundef %35, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef null) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  br label %57

39:                                               ; preds = %34
  %40 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %36, ptr noundef nonnull @.str.19) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  br label %57

43:                                               ; preds = %12, %9, %6, %2
  %44 = phi ptr [ @.str.4, %2 ], [ @.str.6, %6 ], [ @.str.8, %9 ], [ @.str.10, %12 ]
  %45 = phi ptr [ %4, %2 ], [ %7, %6 ], [ %10, %9 ], [ %13, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %44) #9
  %46 = ptrtoint ptr %45 to i32
  br label %57

47:                                               ; preds = %39
  %48 = load ptr, ptr @soc_ac97_ops, align 4
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = icmp ne ptr %48, null
  %52 = icmp ne ptr %0, null
  %53 = and i1 %52, %51
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  store ptr %0, ptr @soc_ac97_ops, align 4
  store ptr %0, ptr @soc_ac97_bus, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %0, i32 0, i32 1
  store ptr @snd_soc_ac97_warm_reset, ptr %56, align 4
  store ptr @snd_soc_ac97_reset, ptr %0, align 4
  store ptr %4, ptr @snd_ac97_rst_cfg.0, align 4
  store ptr %7, ptr @snd_ac97_rst_cfg.1, align 4
  store ptr %10, ptr @snd_ac97_rst_cfg.2, align 4
  store ptr %13, ptr @snd_ac97_rst_cfg.3, align 4
  store i32 %27, ptr @snd_ac97_rst_cfg.4, align 4
  store i32 %18, ptr @snd_ac97_rst_cfg.5, align 4
  store i32 %36, ptr @snd_ac97_rst_cfg.6, align 4
  br label %57

57:                                               ; preds = %55, %50, %43, %42, %38, %33, %29, %24, %20
  %58 = phi i32 [ 0, %55 ], [ %46, %43 ], [ -16, %50 ], [ %40, %42 ], [ %36, %38 ], [ %31, %33 ], [ %27, %29 ], [ %22, %24 ], [ %18, %20 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_soc_ac97_warm_reset(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @snd_ac97_rst_cfg.0, align 4
  %3 = load ptr, ptr @snd_ac97_rst_cfg.2, align 4
  %4 = tail call i32 @pinctrl_select_state(ptr noundef %2, ptr noundef %3) #8
  %5 = load i32, ptr @snd_ac97_rst_cfg.5, align 4
  %6 = tail call ptr @gpio_to_desc(i32 noundef %5) #8
  %7 = tail call i32 @gpiod_direction_output_raw(ptr noundef %6, i32 noundef 1) #8
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #8
  %9 = load i32, ptr @snd_ac97_rst_cfg.5, align 4
  %10 = tail call ptr @gpio_to_desc(i32 noundef %9) #8
  %11 = tail call i32 @gpiod_direction_output_raw(ptr noundef %10, i32 noundef 0) #8
  %12 = load ptr, ptr @snd_ac97_rst_cfg.3, align 4
  %13 = tail call i32 @pinctrl_select_state(ptr noundef %2, ptr noundef %12) #8
  tail call void @msleep(i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_soc_ac97_reset(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @snd_ac97_rst_cfg.0, align 4
  %3 = load ptr, ptr @snd_ac97_rst_cfg.1, align 4
  %4 = tail call i32 @pinctrl_select_state(ptr noundef %2, ptr noundef %3) #8
  %5 = load i32, ptr @snd_ac97_rst_cfg.5, align 4
  %6 = tail call ptr @gpio_to_desc(i32 noundef %5) #8
  %7 = tail call i32 @gpiod_direction_output_raw(ptr noundef %6, i32 noundef 0) #8
  %8 = load i32, ptr @snd_ac97_rst_cfg.4, align 4
  %9 = tail call ptr @gpio_to_desc(i32 noundef %8) #8
  %10 = tail call i32 @gpiod_direction_output_raw(ptr noundef %9, i32 noundef 0) #8
  %11 = load i32, ptr @snd_ac97_rst_cfg.6, align 4
  %12 = tail call ptr @gpio_to_desc(i32 noundef %11) #8
  %13 = tail call i32 @gpiod_direction_output_raw(ptr noundef %12, i32 noundef 0) #8
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #8
  %15 = load i32, ptr @snd_ac97_rst_cfg.6, align 4
  %16 = tail call ptr @gpio_to_desc(i32 noundef %15) #8
  %17 = tail call i32 @gpiod_direction_output_raw(ptr noundef %16, i32 noundef 1) #8
  %18 = load ptr, ptr @snd_ac97_rst_cfg.3, align 4
  %19 = tail call i32 @pinctrl_select_state(ptr noundef %2, ptr noundef %18) #8
  tail call void @msleep(i32 noundef 2) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_soc_ac97_gpio_request(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp ugt i32 %1, 15
  %4 = select i1 %3, i32 -22, i32 0
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_ac97_gpio_direction_in(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = shl nuw i32 1, %1
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 76, i32 noundef %6, i32 noundef %6) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_ac97_gpio_direction_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw i32 1, %1
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = icmp ne i32 %2, 0
  %17 = zext i1 %16 to i32
  %18 = shl nuw i32 %17, %1
  %19 = or i32 %15, %18
  store i32 %19, ptr %13, align 4
  %20 = tail call i32 @snd_soc_component_write(ptr noundef %10, i32 noundef 84, i32 noundef %19) #8
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 76, i32 noundef %11, i32 noundef 0) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_ac97_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 84) #8
  %7 = lshr i32 %6, %1
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_soc_ac97_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = shl nuw i32 1, %1
  %9 = xor i32 %8, -1
  %10 = getelementptr inbounds %struct.snd_ac97_gpio_priv, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i32
  %15 = shl nuw i32 %14, %1
  %16 = or i32 %12, %15
  store i32 %16, ptr %10, align 4
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 84, i32 noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
