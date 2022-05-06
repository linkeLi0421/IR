; ModuleID = '/llk/IR/sound/soc/codecs/ts3a227e.c_pt.bc'
source_filename = "../sound/soc/codecs/ts3a227e.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ts3a227e_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22ts3a227e_enable_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_ts3a227e_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ts3a227e = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__kstrtab_ts3a227e_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ts3a227e_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_ts3a227e_enable_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ts3a227e_enable_jack_detect to i32), ptr @__kstrtab_ts3a227e_enable_jack_detect, ptr @__kstrtabns_ts3a227e_enable_jack_detect }, section "___ksymtab_gpl+ts3a227e_enable_jack_detect", align 4
@ts3a227e_i2c_ids = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ts3a227e\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@ts3a227e_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ts3a227e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [33 x i8] c"description=ASoC ts3a227e driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [40 x i8] c"author=Dylan Reid <dgreid@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ts3a227e_driver = internal global %struct.i2c_driver { i32 0, ptr @ts3a227e_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ts3a227e_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ts3a227e_pm, ptr null, ptr null }, ptr @ts3a227e_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"ts3a227e\00", align 1
@ts3a227e_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ts3a227e_suspend, ptr @ts3a227e_resume, ptr @ts3a227e_suspend, ptr @ts3a227e_resume, ptr @ts3a227e_suspend, ptr @ts3a227e_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ts3a227e_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @ts3a227e_writeable_reg, ptr @ts3a227e_readable_reg, ptr @ts3a227e_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ts3a227e_reg_defaults, i32 16, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"TS3A227E\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot request irq %d (%d)\0A\00", align 1
@ts3a227e_soc_driver = internal global %struct.snd_soc_component_driver zeroinitializer, align 4
@ts3a227e_reg_defaults = internal constant [16 x %struct.reg_default] [%struct.reg_default { i32 0, i32 16 }, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 8 }, %struct.reg_default { i32 4, i32 35 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 14 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 12 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 32 }, %struct.reg_default { i32 14, i32 64 }, %struct.reg_default { i32 15, i32 104 }], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ti,micbias\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to clear interrupt ret=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to clear key interrupt ret=%d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_ts3a227e_enable_jack_detect], section "llvm.metadata"

@__mod_i2c__ts3a227e_i2c_ids_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @ts3a227e_i2c_ids
@__mod_of__ts3a227e_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ts3a227e_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ts3a227e_enable_jack_detect(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_jack, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @snd_jack_set_key(ptr noundef %8, i32 noundef 16384, i32 noundef 164) #6
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 @snd_jack_set_key(ptr noundef %10, i32 noundef 8192, i32 noundef 582) #6
  %12 = load ptr, ptr %7, align 4
  %13 = tail call i32 @snd_jack_set_key(ptr noundef %12, i32 noundef 4096, i32 noundef 115) #6
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @snd_jack_set_key(ptr noundef %14, i32 noundef 2048, i32 noundef 114) #6
  %16 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 2
  store ptr %1, ptr %16, align 4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 3
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 4
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = or i32 %21, 2
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 14
  %30 = and i32 %29, 16384
  %31 = or i32 %30, %26
  %32 = shl i32 %28, 12
  %33 = and i32 %32, 8192
  %34 = or i32 %31, %33
  %35 = shl i32 %28, 10
  %36 = and i32 %35, 4096
  %37 = or i32 %34, %36
  %38 = shl i32 %28, 8
  %39 = and i32 %38, 2048
  %40 = or i32 %37, %39
  tail call void @snd_soc_jack_report(ptr noundef nonnull %1, i32 noundef %40, i32 noundef 30723) #6
  br label %41

41:                                               ; preds = %18, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ts3a227e_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ts3a227e_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts3a227e_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 24, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %9, align 8
  store ptr %5, ptr %6, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @ts3a227e_regmap_config, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = ptrtoint ptr %13 to i32
  br label %84

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %19 = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load ptr, ptr %14, align 4
  %23 = load i32, ptr %3, align 4
  %24 = shl i32 %23, 3
  %25 = and i32 %24, 56
  %26 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 6, i32 noundef 56, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %27

27:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %28 = load i32, ptr %10, align 4
  %29 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %28, ptr noundef null, ptr noundef nonnull @ts3a227e_interrupt, i32 noundef 8200, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %32, i32 noundef %29) #7
  br label %84

33:                                               ; preds = %27
  %34 = call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @ts3a227e_soc_driver, ptr noundef null, i32 noundef 0) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %33
  %37 = load ptr, ptr %14, align 4
  %38 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 3, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = load ptr, ptr %14, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef 11, ptr noundef nonnull %4) #6
  %41 = load i32, ptr %4, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = lshr exact i32 %42, 3
  %45 = trunc i32 %44 to i8
  %46 = and i32 %41, 6
  %47 = icmp ne i32 %46, 0
  %48 = and i1 %43, %47
  %49 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 3
  store i8 %45, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 4
  %51 = load i8, ptr %50, align 1, !range !8
  %52 = zext i1 %48 to i8
  %53 = icmp eq i8 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %36
  store i8 %52, ptr %50, align 1
  %55 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 5
  store i32 0, ptr %55, align 4
  br i1 %48, label %56, label %59

56:                                               ; preds = %54
  %57 = load ptr, ptr %14, align 4
  %58 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 5, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %59

59:                                               ; preds = %56, %54, %36
  %60 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %59
  %64 = load i8, ptr %49, align 4, !range !8
  %65 = zext i8 %64 to i32
  %66 = load i8, ptr %50, align 1, !range !8
  %67 = icmp eq i8 %66, 0
  %68 = or i32 %65, 2
  %69 = select i1 %67, i32 %65, i32 %68
  %70 = getelementptr inbounds %struct.ts3a227e, ptr %6, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = shl i32 %71, 14
  %73 = and i32 %72, 16384
  %74 = or i32 %73, %69
  %75 = shl i32 %71, 12
  %76 = and i32 %75, 8192
  %77 = or i32 %74, %76
  %78 = shl i32 %71, 10
  %79 = and i32 %78, 4096
  %80 = or i32 %77, %79
  %81 = shl i32 %71, 8
  %82 = and i32 %81, 2048
  %83 = or i32 %80, %82
  call void @snd_soc_jack_report(ptr noundef nonnull %61, i32 noundef %83, i32 noundef 30723) #6
  br label %84

84:                                               ; preds = %63, %59, %33, %31, %16, %2
  %85 = phi i32 [ %17, %16 ], [ %29, %31 ], [ -12, %2 ], [ %34, %33 ], [ 0, %59 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts3a227e_interrupt(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = load ptr, ptr %1, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %9) #7
  br label %116

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = call i32 @regmap_read(ptr noundef %7, i32 noundef 11, ptr noundef nonnull %5) #6
  %18 = load i32, ptr %5, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  %21 = lshr exact i32 %19, 3
  %22 = trunc i32 %21 to i8
  %23 = and i32 %18, 6
  %24 = icmp ne i32 %23, 0
  %25 = and i1 %20, %24
  %26 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 3
  store i8 %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 4
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = zext i1 %25 to i8
  %30 = icmp eq i8 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %16
  store i8 %29, ptr %27, align 1
  %32 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 5
  store i32 0, ptr %32, align 4
  br i1 %25, label %33, label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr %6, align 4
  %35 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 5, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %36

36:                                               ; preds = %33, %31, %16, %12
  %37 = call i32 @regmap_read(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %4) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 4
  %41 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 5
  %42 = and i32 %40, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %45

44:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %37) #7
  br label %116

45:                                               ; preds = %39
  %46 = load i32, ptr %41, align 4
  %47 = or i32 %46, 1
  store i32 %47, ptr %41, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = and i32 %40, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %41, align 4
  %53 = and i32 %52, -2
  store i32 %53, ptr %41, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = and i32 %40, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %41, align 4
  %59 = or i32 %58, 2
  store i32 %59, ptr %41, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = and i32 %40, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %41, align 4
  %65 = and i32 %64, -3
  store i32 %65, ptr %41, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = and i32 %40, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %41, align 4
  %71 = or i32 %70, 4
  store i32 %71, ptr %41, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = and i32 %40, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %41, align 4
  %77 = and i32 %76, -5
  store i32 %77, ptr %41, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = and i32 %40, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %41, align 4
  %83 = or i32 %82, 8
  store i32 %83, ptr %41, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = and i32 %40, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %41, align 4
  %89 = and i32 %88, -9
  store i32 %89, ptr %41, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %116, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 3
  %96 = load i8, ptr %95, align 4, !range !8
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 4
  %99 = load i8, ptr %98, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  %101 = or i32 %97, 2
  %102 = select i1 %100, i32 %97, i32 %101
  %103 = load i32, ptr %41, align 4
  %104 = shl i32 %103, 14
  %105 = and i32 %104, 16384
  %106 = or i32 %105, %102
  %107 = shl i32 %103, 12
  %108 = and i32 %107, 8192
  %109 = or i32 %106, %108
  %110 = shl i32 %103, 10
  %111 = and i32 %110, 4096
  %112 = or i32 %109, %111
  %113 = shl i32 %103, 8
  %114 = and i32 %113, 2048
  %115 = or i32 %112, %114
  call void @snd_soc_jack_report(ptr noundef nonnull %92, i32 noundef %115, i32 noundef 30723) #6
  br label %116

116:                                              ; preds = %94, %90, %44, %11
  %117 = phi i32 [ 0, %11 ], [ 0, %44 ], [ 1, %90 ], [ 1, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ts3a227e_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -3
  %4 = icmp ult i32 %3, 13
  %5 = trunc i32 %3 to i13
  %6 = lshr i13 -961, %5
  %7 = and i13 %6, 1
  %8 = icmp ne i13 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ts3a227e_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp ult i32 %1, 16
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ts3a227e_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 12
  %5 = trunc i32 %3 to i12
  %6 = lshr i12 -233, %5
  %7 = and i12 %6, 1
  %8 = icmp ne i12 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts3a227e_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ts3a227e, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ts3a227e_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ts3a227e, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  tail call void @enable_irq(i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
