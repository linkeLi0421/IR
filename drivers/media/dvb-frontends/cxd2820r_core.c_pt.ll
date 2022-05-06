; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2820r_core.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxd2820r_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cxd2820r_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cxd2820r_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.cxd2820r_priv = type { [2 x ptr], [2 x ptr], ptr, %struct.dvb_frontend, i8, i8, i8, i8, i64, i64, i8, [3 x i8], %struct.gpio_chip, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.65], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.65 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.66 }>
%union.anon.66 = type { i64 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.67, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.cxd2820r_platform_data = type { i8, i8, i8, i8, ptr, ptr, i8 }
%struct.cxd2820r_config = type { i8, i8, i8, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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

@.str = private unnamed_addr constant [9 x i8] c"cxd2820r\00", align 1
@__kstrtab_cxd2820r_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxd2820r_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cxd2820r_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxd2820r_attach to i32), ptr @__kstrtab_cxd2820r_attach, ptr @__kstrtabns_cxd2820r_attach }, section "___ksymtab+cxd2820r_attach", align 4
@cxd2820r_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cxd2820r\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author249 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [45 x i8] c"description=Sony CXD2820R demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@cxd2820r_driver = internal global %struct.i2c_driver { i32 0, ptr @cxd2820r_probe, ptr @cxd2820r_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cxd2820r_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@cxd2820r_probe.regmap_range_cfg0 = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 16383, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 4
@cxd2820r_probe.regmap_range_cfg1 = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 511, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 4
@cxd2820r_probe.regmap_config0 = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16383, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @cxd2820r_probe.regmap_range_cfg0, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@cxd2820r_probe.regmap_config1 = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 511, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @cxd2820r_probe.regmap_range_cfg1, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"I2C registration failed\0A\00", align 1
@cxd2820r_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sony CXD2820R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr @cxd2820r_release, ptr null, ptr @cxd2820r_init, ptr @cxd2820r_sleep, ptr null, ptr null, ptr null, ptr null, ptr @cxd2820r_get_frontend_algo, ptr null, ptr @cxd2820r_get_tune_settings, ptr @cxd2820r_get_frontend, ptr @cxd2820r_read_status, ptr @cxd2820r_read_ber, ptr @cxd2820r_read_signal_strength, ptr @cxd2820r_read_snr, ptr @cxd2820r_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxd2820r_i2c_gate_ctrl, ptr null, ptr null, ptr @cxd2820r_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Sony CXD2820R successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_cxd2820r_attach], section "llvm.metadata"

@__mod_i2c__cxd2820r_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @cxd2820r_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_wr_reg_val_mask_tab(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.cxd2820r_priv, ptr %0, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.cxd2820r_priv, ptr %0, i32 0, i32 1
  br label %11

8:                                                ; preds = %31
  %9 = add nuw i32 %12, 1
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %34, label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ 0, %5 ], [ %9, %8 ]
  %13 = getelementptr %struct.reg_val_mask, ptr %1, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr %7, ptr %6
  %18 = load ptr, ptr %17, align 4
  %19 = and i32 %14, 65535
  %20 = getelementptr %struct.reg_val_mask, ptr %1, i32 %12, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.reg_val_mask, ptr %1, i32 %12, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %19, i32 noundef %22) #14
  br label %31

28:                                               ; preds = %11
  %29 = zext i8 %24 to i32
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %19, i32 noundef %29, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #14
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %8, label %34

34:                                               ; preds = %31, %8, %3
  %35 = phi i32 [ 0, %3 ], [ %32, %31 ], [ 0, %8 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_gpio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 11
  %6 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %1, ptr noundef dereferenceable(3) %5, i32 3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 64, i32 128
  %13 = getelementptr i8, ptr %1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 16, i32 32
  %18 = or i32 %12, %17
  %19 = getelementptr i8, ptr %1, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 4, i32 8
  %24 = or i32 %18, %23
  %25 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 137, i32 noundef 252, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %8
  %30 = shl i8 %20, 4
  %31 = and i8 %30, 32
  %32 = shl i8 %14, 3
  %33 = and i8 %32, 16
  %34 = shl i8 %9, 2
  %35 = and i8 %34, 8
  %36 = lshr i8 %9, 2
  %37 = and i8 %36, 1
  %38 = or i8 %35, %37
  %39 = or i8 %33, %38
  %40 = lshr i8 %14, 1
  %41 = and i8 %40, 2
  %42 = or i8 %39, %41
  %43 = or i8 %31, %42
  %44 = and i8 %20, 4
  %45 = or i8 %43, %44
  %46 = load ptr, ptr %25, align 8
  %47 = zext i8 %45 to i32
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 142, i32 noundef 63, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %5, ptr noundef align 1 dereferenceable(3) %1, i32 3, i1 false)
  br label %51

51:                                               ; preds = %50, %29, %8, %2
  %52 = phi i32 [ 0, %50 ], [ 0, %2 ], [ %27, %8 ], [ %48, %29 ]
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cxd2820r_attach(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.i2c_board_info, align 4
  %6 = alloca %struct.cxd2820r_platform_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.cxd2820r_config, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.cxd2820r_config, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.cxd2820r_config, ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 2
  store i8 %14, ptr %15, align 2
  %16 = getelementptr inbounds %struct.cxd2820r_config, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 3
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 4
  store ptr %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 6
  store i8 1, ptr %20, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false)
  %21 = call i32 @strscpy(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 20) #14
  %22 = load i8, ptr %0, align 1
  %23 = zext i8 %22 to i16
  %24 = getelementptr inbounds %struct.i2c_board_info, ptr %5, i32 0, i32 2
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_board_info, ptr %5, i32 0, i32 4
  store ptr %6, ptr %25, align 4
  %26 = call ptr @i2c_new_client_device(ptr noundef %1, ptr noundef nonnull %5) #14
  %27 = icmp eq ptr %26, null
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %29 = or i1 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = call ptr %36(ptr noundef nonnull %26) #14
  br label %38

38:                                               ; preds = %34, %30, %3
  %39 = phi ptr [ %37, %34 ], [ null, %30 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  ret ptr %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cxd2820r_driver) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @cxd2820r_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1400) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %92, label %10

10:                                               ; preds = %2
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 3, i32 3
  store ptr %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 2
  store ptr %13, ptr %14, align 8
  %15 = load i8, ptr %6, align 4
  %16 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 4
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 1
  %18 = load i8, ptr %17, align 1, !range !9
  %19 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 5
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 2
  %21 = load i8, ptr %20, align 2, !range !9
  %22 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 6
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 3
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 7
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @cxd2820r_probe.regmap_config0, ptr noundef null, ptr noundef null) #14
  %30 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 1
  store ptr %29, ptr %30, align 8
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = ptrtoint ptr %29 to i32
  br label %90

34:                                               ; preds = %10
  %35 = call i32 @regmap_read(ptr noundef %29, i32 noundef 253, ptr noundef nonnull %3) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %34
  %38 = load i32, ptr %3, align 4
  %39 = icmp eq i32 %38, 225
  br i1 %39, label %40, label %87

40:                                               ; preds = %37
  %41 = load ptr, ptr %12, align 8
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = or i16 %43, 2
  %45 = call ptr @i2c_new_dummy_device(ptr noundef %41, i16 noundef zeroext %44) #14
  %46 = getelementptr [2 x ptr], ptr %8, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = ptrtoint ptr %45 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #16
  br label %87

50:                                               ; preds = %40
  %51 = call ptr @__regmap_init_i2c(ptr noundef %45, ptr noundef nonnull @cxd2820r_probe.regmap_config1, ptr noundef null, ptr noundef null) #14
  %52 = getelementptr %struct.cxd2820r_priv, ptr %8, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = ptrtoint ptr %51 to i32
  br label %84

56:                                               ; preds = %50
  %57 = icmp eq ptr %28, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12
  store ptr @.str, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 2
  store ptr %4, ptr %60, align 4
  %61 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 4
  store ptr @__this_module, ptr %61, align 4
  %62 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 9
  store ptr @cxd2820r_gpio_direction_output, ptr %62, align 8
  %63 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 12
  store ptr @cxd2820r_gpio_set, ptr %63, align 4
  %64 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 10
  store ptr @cxd2820r_gpio_get, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 19
  store i32 -1, ptr %65, align 8
  %66 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 20
  store i16 3, ptr %66, align 4
  %67 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 12, i32 23
  store i8 1, ptr %67, align 4
  %68 = call i32 @gpiochip_add_data_with_key(ptr noundef %59, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load i32, ptr %65, align 8
  store i32 %71, ptr %28, align 4
  br label %72

72:                                               ; preds = %70, %56
  %73 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %73, ptr noundef nonnull align 4 dereferenceable(544) @cxd2820r_ops, i32 544, i1 false)
  %74 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 6
  %75 = load i8, ptr %74, align 4, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 3, i32 1, i32 3
  store ptr null, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %80, align 8
  %81 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %6, i32 0, i32 5
  store ptr @cxd2820r_get_dvb_frontend, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2) #16
  br label %92

82:                                               ; preds = %58
  %83 = load ptr, ptr %52, align 4
  call void @regmap_exit(ptr noundef %83) #14
  br label %84

84:                                               ; preds = %82, %54
  %85 = phi i32 [ %55, %54 ], [ %68, %82 ]
  %86 = load ptr, ptr %46, align 4
  call void @i2c_unregister_device(ptr noundef %86) #14
  br label %87

87:                                               ; preds = %84, %48, %37, %34
  %88 = phi i32 [ %35, %34 ], [ %49, %48 ], [ %85, %84 ], [ -19, %37 ]
  %89 = load ptr, ptr %30, align 8
  call void @regmap_exit(ptr noundef %89) #14
  br label %90

90:                                               ; preds = %87, %32
  %91 = phi i32 [ %33, %32 ], [ %88, %87 ]
  call void @kfree(ptr noundef nonnull %8) #14
  br label %92

92:                                               ; preds = %90, %79, %2
  %93 = phi i32 [ 0, %79 ], [ %91, %90 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @gpiochip_remove(ptr noundef %4) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 1
  %10 = getelementptr %struct.cxd2820r_priv, ptr %3, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @regmap_exit(ptr noundef %11) #14
  %12 = getelementptr [2 x ptr], ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #14
  %14 = load ptr, ptr %9, align 8
  tail call void @regmap_exit(ptr noundef %14) #14
  tail call void @kfree(ptr noundef %3) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [3 x i8], align 1
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef align 1 dereferenceable(3) %6, i32 3, i1 false)
  %7 = trunc i32 %2 to i8
  %8 = shl i8 %7, 2
  %9 = or i8 %8, 1
  %10 = getelementptr [3 x i8], ptr %4, i32 0, i32 %1
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 3
  %12 = call i32 @cxd2820r_gpio(ptr noundef %11, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #14
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cxd2820r_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [3 x i8], align 1
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef align 1 dereferenceable(3) %6, i32 3, i1 false)
  %7 = trunc i32 %2 to i8
  %8 = shl i8 %7, 2
  %9 = or i8 %8, 1
  %10 = getelementptr [3 x i8], ptr %4, i32 0, i32 %1
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 3
  %12 = call i32 @cxd2820r_gpio(ptr noundef %11, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %4 = getelementptr %struct.cxd2820r_priv, ptr %3, i32 0, i32 11, i32 %1
  %5 = load i8, ptr %4, align 1
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @cxd2820r_get_dvb_frontend(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 3
  ret ptr %4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cxd2820r_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  tail call void @i2c_unregister_device(ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cxd2820r_init(ptr nocapture noundef readnone %0) #9 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_sleep(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %10 [
    i32 3, label %4
    i32 16, label %6
    i32 1, label %8
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @cxd2820r_sleep_t(ptr noundef %0) #14
  br label %10

6:                                                ; preds = %1
  %7 = tail call i32 @cxd2820r_sleep_t2(ptr noundef %0) #14
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @cxd2820r_sleep_c(ptr noundef %0) #14
  br label %10

10:                                               ; preds = %8, %6, %4, %1
  %11 = phi i32 [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cxd2820r_get_frontend_algo(ptr nocapture noundef readnone %0) #9 {
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_get_tune_settings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %11 [
    i32 3, label %5
    i32 16, label %7
    i32 1, label %9
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @cxd2820r_get_tune_settings_t(ptr noundef %0, ptr noundef %1) #14
  br label %11

7:                                                ; preds = %2
  %8 = tail call i32 @cxd2820r_get_tune_settings_t2(ptr noundef %0, ptr noundef %1) #14
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @cxd2820r_get_tune_settings_c(ptr noundef %0, ptr noundef %1) #14
  br label %11

11:                                               ; preds = %9, %7, %5, %2
  %12 = phi i32 [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_get_frontend(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %17 [
    i32 3, label %11
    i32 16, label %13
    i32 1, label %15
  ]

11:                                               ; preds = %8
  %12 = tail call i32 @cxd2820r_get_frontend_t(ptr noundef %0, ptr noundef %1) #14
  br label %17

13:                                               ; preds = %8
  %14 = tail call i32 @cxd2820r_get_frontend_t2(ptr noundef %0, ptr noundef %1) #14
  br label %17

15:                                               ; preds = %8
  %16 = tail call i32 @cxd2820r_get_frontend_c(ptr noundef %0, ptr noundef %1) #14
  br label %17

17:                                               ; preds = %15, %13, %11, %8, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ -22, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_status(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %11 [
    i32 3, label %5
    i32 16, label %7
    i32 1, label %9
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @cxd2820r_read_status_t(ptr noundef %0, ptr noundef %1) #14
  br label %11

7:                                                ; preds = %2
  %8 = tail call i32 @cxd2820r_read_status_t2(ptr noundef %0, ptr noundef %1) #14
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @cxd2820r_read_status_c(ptr noundef %0, ptr noundef %1) #14
  br label %11

11:                                               ; preds = %9, %7, %5, %2
  %12 = phi i32 [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cxd2820r_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 9
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 8
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %6, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %1, align 4
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %7, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cxd2820r_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = trunc i64 %8 to i16
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i16 [ %9, %6 ], [ 0, %2 ]
  store i16 %11, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i64 @div_s64_rem(i64 noundef %9, i32 noundef 100, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i16 [ %11, %7 ], [ 0, %2 ]
  store i16 %13, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxd2820r_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #12 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne i32 %1, 0
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 219, i32 noundef 1, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2820r_search(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 14
  %6 = load i8, ptr %5, align 8, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %20 [
    i32 3, label %11
    i32 16, label %14
  ]

11:                                               ; preds = %8
  %12 = tail call i32 @cxd2820r_sleep_t(ptr noundef %0) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %73

14:                                               ; preds = %8
  %15 = tail call i32 @cxd2820r_sleep_t2(ptr noundef %0) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 16, %11 ], [ 3, %14 ]
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %8, %1
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %73 [
    i32 3, label %23
    i32 16, label %28
    i32 1, label %33
  ]

23:                                               ; preds = %20
  %24 = tail call i32 @cxd2820r_init_t(ptr noundef %0) #14
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @cxd2820r_set_frontend_t(ptr noundef %0) #14
  br label %38

28:                                               ; preds = %20
  %29 = tail call i32 @cxd2820r_init_t(ptr noundef %0) #14
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %73, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @cxd2820r_set_frontend_t2(ptr noundef %0) #14
  br label %38

33:                                               ; preds = %20
  %34 = tail call i32 @cxd2820r_init_c(ptr noundef %0) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @cxd2820r_set_frontend_c(ptr noundef %0) #14
  br label %38

38:                                               ; preds = %36, %31, %26
  %39 = phi i32 [ %37, %36 ], [ %32, %31 ], [ %27, %26 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.cxd2820r_priv, ptr %4, i32 0, i32 13
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %69 [
    i32 3, label %45
    i32 1, label %45
    i32 16, label %44
  ]

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %41, %41
  %46 = phi i32 [ 20, %41 ], [ 20, %41 ], [ 40, %44 ]
  br label %47

47:                                               ; preds = %59, %45
  %48 = phi i32 [ %63, %59 ], [ %46, %45 ]
  call void @msleep(i32 noundef 50) #14
  %49 = load i32, ptr %21, align 4
  switch i32 %49, label %73 [
    i32 3, label %50
    i32 16, label %52
    i32 1, label %54
  ]

50:                                               ; preds = %47
  %51 = call i32 @cxd2820r_read_status_t(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %56

52:                                               ; preds = %47
  %53 = call i32 @cxd2820r_read_status_t2(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %56

54:                                               ; preds = %47
  %55 = call i32 @cxd2820r_read_status_c(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %56

56:                                               ; preds = %54, %52, %50
  %57 = phi i32 [ %55, %54 ], [ %53, %52 ], [ %51, %50 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, ptr %2, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  %63 = add nsw i32 %48, -1
  %64 = icmp sgt i32 %48, 1
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %47, label %66

66:                                               ; preds = %59
  %67 = and i32 %60, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %41
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i8 [ 1, %69 ], [ 0, %66 ]
  %72 = phi i32 [ 16, %69 ], [ 1, %66 ]
  store i8 %71, ptr %5, align 8
  br label %73

73:                                               ; preds = %70, %56, %47, %38, %33, %28, %23, %20, %14, %11
  %74 = phi i32 [ -2147483648, %38 ], [ -2147483648, %14 ], [ -2147483648, %11 ], [ -2147483648, %33 ], [ -2147483648, %28 ], [ -2147483648, %23 ], [ -2147483648, %20 ], [ %72, %70 ], [ -2147483648, %56 ], [ -2147483648, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_sleep_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_sleep_t2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_sleep_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_tune_settings_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_tune_settings_t2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_tune_settings_c(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_frontend_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_frontend_t2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_frontend_c(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_read_status_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_read_status_t2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_read_status_c(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_init_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_set_frontend_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_set_frontend_t2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_init_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_set_frontend_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
