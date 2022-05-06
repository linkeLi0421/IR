; ModuleID = '/llk/IR/drivers/mfd/palmas.c_pt.bc'
source_filename = "../drivers/mfd/palmas.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_palmas_ext_control_req_config:\09\09\09\09\09"
module asm "\09.asciz \09\22palmas_ext_control_req_config\22\09\09\09\09\09"
module asm "__kstrtabns_palmas_ext_control_req_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.palmas_driver_data = type { ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.palmas_pmic_driver_data = type { i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.palmas_sleep_requestor_info = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.palmas_platform_data = type { i32, i32, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [38 x i8] c"Resource reg 0x%02x update failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"POWER_CTRL register update failed %d\0A\00", align 1
@__kstrtab_palmas_ext_control_req_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_palmas_ext_control_req_config = external dso_local constant [0 x i8], align 1
@__ksymtab_palmas_ext_control_req_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @palmas_ext_control_req_config to i32), ptr @__kstrtab_palmas_ext_control_req_config, ptr @__kstrtabns_palmas_ext_control_req_config }, section "___ksymtab_gpl+palmas_ext_control_req_config", align 4
@__initcall__kmod_palmas__252_747_palmas_i2c_init4 = internal global ptr @palmas_i2c_init, section ".initcall4.init", align 4
@palmas_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @palmas_i2c_probe, ptr @palmas_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @palmas_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_palmas_i2c_exit = internal global ptr @palmas_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [50 x i8] c"palmas.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [60 x i8] c"palmas.description=Palmas chip family multi-function driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [31 x i8] c"palmas.file=drivers/mfd/palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [19 x i8] c"palmas.license=GPL\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"palmas\00", align 1
@of_palmas_match_tbl = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps659038\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps659038_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65917\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65917_data }, %struct.of_device_id zeroinitializer], align 4
@palmas_i2c_id = internal constant [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"palmas\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"twl6035\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"twl6037\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps65913\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"can't attach client %d\0A\00", align 1
@palmas_regmap_config = internal constant [3 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 254, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 213, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 220, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to allocate regmap %d, err: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"IRQ missing: skipping irq request\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"POLARITY_CTRL update failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Muxing GPIO %x, PWM %x, LED %x\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@palmas_dev = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"ti,mux-pad1\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ti,mux-pad2\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ti,power-ctrl\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"ti,system-power-controller\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Invalid IRQ: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Irq flag is 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"ti,palmas-override-powerhold\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"ti,tps65917\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Unable to write PRIMARY_SECONDARY_PAD2 %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\013%s: Unable to write to DEV_CTRL_DEV_ON: %d\0A\00", align 1
@__func__.palmas_power_off = private unnamed_addr constant [17 x i8] c"palmas_power_off\00", align 1
@palmas_data = internal global %struct.palmas_driver_data { ptr @palmas_features, ptr @palmas_irq_chip }, align 4
@tps659038_data = internal global %struct.palmas_driver_data { ptr @tps659038_features, ptr @palmas_irq_chip }, align 4
@tps65917_data = internal global %struct.palmas_driver_data { ptr @tps659038_features, ptr @tps65917_irq_chip }, align 4
@palmas_features = internal global i32 1, align 4
@palmas_irqs = internal constant [32 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@palmas_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.2, i32 0, i32 0, ptr null, i32 0, i32 16, i32 17, i32 0, i32 0, i32 0, i32 0, ptr null, i32 5, i8 0, i8 0, i32 4, ptr @palmas_irqs, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@tps659038_features = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"tps65917\00", align 1
@tps65917_irqs = internal constant [32 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 15, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 -1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 31, %struct.regmap_irq_type zeroinitializer }], align 4
@tps65917_irq_chip = internal global { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.19, i32 0, i32 0, ptr null, i32 0, i32 16, i32 17, i32 0, i32 0, i32 0, i32 0, ptr null, i32 5, i8 0, i8 0, i32 4, ptr @tps65917_irqs, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_palmas_i2c_exit, ptr @__initcall__kmod_palmas__252_747_palmas_i2c_init4, ptr @__ksymtab_palmas_ext_control_req_config, ptr @palmas_i2c_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @palmas_ext_control_req_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %2, 7
  %8 = icmp eq i32 %7, 0
  %9 = icmp ugt i32 %1, 25
  %10 = or i1 %9, %8
  br i1 %10, label %48, label %11

11:                                               ; preds = %4
  %12 = and i32 %2, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 14
  br label %21

21:                                               ; preds = %17, %14, %11
  %22 = phi i32 [ 0, %11 ], [ 1, %14 ], [ %18, %17 ]
  %23 = phi i32 [ 6, %11 ], [ 10, %14 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %6, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.palmas_sleep_requestor_info, ptr %25, i32 %1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.palmas_sleep_requestor_info, ptr %25, i32 %1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %23
  %31 = shl nuw i32 1, %27
  %32 = add i32 %30, 212
  %33 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = select i1 %3, i32 %31, i32 0
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %32, i32 noundef %31, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str, i32 noundef %30, i32 noundef %36) #6
  br label %48

40:                                               ; preds = %21
  %41 = shl nuw nsw i32 1, %22
  %42 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 161, i32 noundef %41, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.1, i32 noundef %44) #6
  br label %48

48:                                               ; preds = %46, %40, %38, %4
  %49 = phi i32 [ %36, %38 ], [ %44, %46 ], [ 0, %4 ], [ %44, %40 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @palmas_i2c_init() #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @palmas_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @palmas_i2c_exit() #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @palmas_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %7, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %58, label %13

13:                                               ; preds = %2
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 40, i32 noundef 3520) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %297, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.palmas_platform_data, ptr %14, i32 0, i32 3
  store i32 1, ptr %21, align 4
  %22 = load i32, ptr %3, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.palmas_platform_data, ptr %14, i32 0, i32 4
  store i8 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.palmas_platform_data, ptr %14, i32 0, i32 3
  store i32 1, ptr %29, align 4
  %30 = load i32, ptr %3, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.palmas_platform_data, ptr %14, i32 0, i32 5
  store i8 %31, ptr %32, align 1
  br label %33

33:                                               ; preds = %28, %25
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %35 = icmp sgt i32 %34, -1
  %36 = load i32, ptr %3, align 4
  %37 = trunc i32 %36 to i8
  %38 = select i1 %35, i8 %37, i8 7
  %39 = getelementptr inbounds %struct.palmas_platform_data, ptr %14, i32 0, i32 2
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = call ptr @irq_get_irq_data(i32 noundef %41) #5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %47) #6
  br label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.irq_data, ptr %44, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 15
  store i32 %52, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %52) #6
  br label %53

53:                                               ; preds = %48, %46, %33
  %54 = call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %55 = icmp ne ptr %54, null
  %56 = getelementptr inbounds %struct.palmas_platform_data, ptr %14, i32 0, i32 6
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %60

58:                                               ; preds = %2
  %59 = icmp eq ptr %9, null
  br i1 %59, label %297, label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %14, %53 ], [ %9, %58 ]
  %62 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 92, i32 noundef 3520) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %297, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %62, ptr %65, align 8
  store ptr %5, ptr %62, align 4
  %66 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  %69 = call ptr @of_match_device(ptr noundef nonnull @of_palmas_match_tbl, ptr noundef %5) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %297, label %77

71:                                               ; preds = %110, %94
  %72 = phi i32 [ 1, %94 ], [ 2, %110 ]
  %73 = phi ptr [ %99, %94 ], [ %115, %110 ]
  %74 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.3, i32 noundef %72) #6
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %286

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.of_device_id, ptr %69, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %84 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %85 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1
  store ptr %0, ptr %85, align 4
  %86 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @palmas_regmap_config, ptr noundef null, ptr noundef null) #5
  %87 = getelementptr %struct.palmas, ptr %62, i32 0, i32 2, i32 0
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %94

89:                                               ; preds = %117, %101, %77
  %90 = phi ptr [ %86, %77 ], [ %107, %101 ], [ %123, %117 ]
  %91 = phi i32 [ 0, %77 ], [ 1, %101 ], [ 2, %117 ]
  %92 = ptrtoint ptr %90 to i32
  %93 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.4, i32 noundef %91, i32 noundef %92) #6
  br label %286

94:                                               ; preds = %77
  %95 = load ptr, ptr %83, align 8
  %96 = load i16, ptr %84, align 2
  %97 = add i16 %96, 1
  %98 = call ptr @i2c_new_dummy_device(ptr noundef %95, i16 noundef zeroext %97) #5
  %99 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1, i32 1
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %71, label %101

101:                                              ; preds = %94
  %102 = call ptr @of_node_get(ptr noundef %7) #5
  %103 = load ptr, ptr %99, align 4
  %104 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 4, i32 25
  store ptr %102, ptr %104, align 8
  %105 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = call ptr @__devm_regmap_init_i2c(ptr noundef %106, ptr noundef getelementptr inbounds ([3 x %struct.regmap_config], ptr @palmas_regmap_config, i32 0, i32 1), ptr noundef null, ptr noundef null) #5
  %108 = getelementptr %struct.palmas, ptr %62, i32 0, i32 2, i32 1
  store ptr %107, ptr %108, align 4
  %109 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %89, label %110

110:                                              ; preds = %101
  %111 = load ptr, ptr %83, align 8
  %112 = load i16, ptr %84, align 2
  %113 = add i16 %112, 2
  %114 = call ptr @i2c_new_dummy_device(ptr noundef %111, i16 noundef zeroext %113) #5
  %115 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1, i32 2
  store ptr %114, ptr %115, align 4
  %116 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %71, label %117

117:                                              ; preds = %110
  %118 = call ptr @of_node_get(ptr noundef %7) #5
  %119 = load ptr, ptr %115, align 4
  %120 = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 4, i32 25
  store ptr %118, ptr %120, align 8
  %121 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = call ptr @__devm_regmap_init_i2c(ptr noundef %122, ptr noundef getelementptr inbounds ([3 x %struct.regmap_config], ptr @palmas_regmap_config, i32 0, i32 2), ptr noundef null, ptr noundef null) #5
  %124 = getelementptr %struct.palmas, ptr %62, i32 0, i32 2, i32 2
  store ptr %123, ptr %124, align 4
  %125 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %89, label %126

126:                                              ; preds = %117
  %127 = load i32, ptr %68, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %130, ptr noundef nonnull @.str.5) #6
  br label %152

131:                                              ; preds = %126
  %132 = load i32, ptr %61, align 4
  %133 = shl i32 %132, 5
  %134 = and i32 %133, 128
  store i32 %134, ptr %4, align 4
  %135 = load ptr, ptr %87, align 4
  %136 = call i32 @regmap_update_bits_base(ptr noundef %135, i32 noundef 249, i32 noundef 128, i32 noundef %134, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.6, i32 noundef %136) #6
  br label %286

140:                                              ; preds = %131
  store i32 1, ptr %4, align 4
  %141 = load ptr, ptr %108, align 4
  %142 = call i32 @regmap_write(ptr noundef %141, i32 noundef 36, i32 noundef 1) #5
  %143 = load ptr, ptr %108, align 4
  %144 = load i32, ptr %68, align 4
  %145 = load i32, ptr %61, align 4
  %146 = or i32 %145, 8192
  %147 = getelementptr inbounds %struct.palmas_driver_data, ptr %79, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 8
  %150 = call i32 @regmap_add_irq_chip(ptr noundef %143, i32 noundef %144, i32 noundef %146, i32 noundef 0, ptr noundef %148, ptr noundef %149) #5
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %286, label %152

152:                                              ; preds = %140, %129
  %153 = getelementptr inbounds %struct.palmas_platform_data, ptr %61, i32 0, i32 3
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.palmas_platform_data, ptr %61, i32 0, i32 4
  %158 = load i8, ptr %157, align 4
  %159 = zext i8 %158 to i32
  store i32 %159, ptr %4, align 4
  %160 = load ptr, ptr %87, align 4
  %161 = call i32 @regmap_write(ptr noundef %160, i32 noundef 250, i32 noundef %159) #5
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %281

163:                                              ; preds = %152
  %164 = load ptr, ptr %87, align 4
  %165 = call i32 @regmap_read(ptr noundef %164, i32 noundef 250, ptr noundef nonnull %4) #5
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %281

167:                                              ; preds = %163, %156
  %168 = load i32, ptr %4, align 4
  %169 = and i32 %168, 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %173 = load i8, ptr %172, align 4
  %174 = or i8 %173, 1
  store i8 %174, ptr %172, align 4
  br label %175

175:                                              ; preds = %171, %167
  %176 = and i32 %168, 24
  switch i32 %176, label %189 [
    i32 0, label %177
    i32 16, label %181
    i32 24, label %185
  ]

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %179 = load i8, ptr %178, align 4
  %180 = or i8 %179, 2
  store i8 %180, ptr %178, align 4
  br label %189

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 15
  %183 = load i8, ptr %182, align 1
  %184 = or i8 %183, 1
  store i8 %184, ptr %182, align 1
  br label %189

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 16
  %187 = load i8, ptr %186, align 2
  %188 = or i8 %187, 1
  store i8 %188, ptr %186, align 2
  br label %189

189:                                              ; preds = %185, %181, %177, %175
  %190 = and i32 %168, 96
  switch i32 %190, label %203 [
    i32 0, label %191
    i32 64, label %195
    i32 96, label %199
  ]

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %193 = load i8, ptr %192, align 4
  %194 = or i8 %193, 4
  store i8 %194, ptr %192, align 4
  br label %203

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 15
  %197 = load i8, ptr %196, align 1
  %198 = or i8 %197, 2
  store i8 %198, ptr %196, align 1
  br label %203

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 16
  %201 = load i8, ptr %200, align 2
  %202 = or i8 %201, 2
  store i8 %202, ptr %200, align 2
  br label %203

203:                                              ; preds = %199, %195, %191, %189
  %204 = and i32 %168, 128
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %208 = load i8, ptr %207, align 4
  %209 = or i8 %208, 8
  store i8 %209, ptr %207, align 4
  br label %210

210:                                              ; preds = %206, %203
  %211 = load i32, ptr %153, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.palmas_platform_data, ptr %61, i32 0, i32 5
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  store i32 %216, ptr %4, align 4
  %217 = load ptr, ptr %87, align 4
  %218 = call i32 @regmap_write(ptr noundef %217, i32 noundef 251, i32 noundef %216) #5
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %281

220:                                              ; preds = %210
  %221 = load ptr, ptr %87, align 4
  %222 = call i32 @regmap_read(ptr noundef %221, i32 noundef 251, ptr noundef nonnull %4) #5
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %281

224:                                              ; preds = %220, %213
  %225 = load i32, ptr %4, align 4
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %230 = load i8, ptr %229, align 4
  %231 = or i8 %230, 16
  store i8 %231, ptr %229, align 4
  br label %232

232:                                              ; preds = %228, %224
  %233 = and i32 %225, 6
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %237 = load i8, ptr %236, align 4
  %238 = or i8 %237, 32
  store i8 %238, ptr %236, align 4
  br label %239

239:                                              ; preds = %235, %232
  %240 = and i32 %225, 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %244 = load i8, ptr %243, align 4
  %245 = or i8 %244, 64
  store i8 %245, ptr %243, align 4
  br label %246

246:                                              ; preds = %242, %239
  %247 = and i32 %225, 48
  %248 = icmp eq i32 %247, 0
  %249 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 14
  %250 = load i8, ptr %249, align 4
  br i1 %248, label %251, label %253

251:                                              ; preds = %246
  %252 = or i8 %250, -128
  store i8 %252, ptr %249, align 4
  br label %253

253:                                              ; preds = %251, %246
  %254 = phi i8 [ %252, %251 ], [ %250, %246 ]
  %255 = load ptr, ptr %62, align 4
  %256 = zext i8 %254 to i32
  %257 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 16
  %258 = load i8, ptr %257, align 2
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 15
  %261 = load i8, ptr %260, align 1
  %262 = zext i8 %261 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %255, ptr noundef nonnull @.str.7, i32 noundef %256, i32 noundef %259, i32 noundef %262) #6
  %263 = getelementptr inbounds %struct.palmas_platform_data, ptr %61, i32 0, i32 2
  %264 = load i8, ptr %263, align 4
  %265 = zext i8 %264 to i32
  store i32 %265, ptr %4, align 4
  %266 = load ptr, ptr %87, align 4
  %267 = call i32 @regmap_write(ptr noundef %266, i32 noundef 161, i32 noundef %265) #5
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %253
  br i1 %10, label %297, label %270

270:                                              ; preds = %269
  %271 = call i32 @devm_of_platform_populate(ptr noundef %5) #5
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %281, label %273

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.palmas_platform_data, ptr %61, i32 0, i32 6
  %275 = load i8, ptr %274, align 2, !range !9
  %276 = icmp eq i8 %275, 0
  %277 = load ptr, ptr @pm_power_off, align 4
  %278 = icmp ne ptr %277, null
  %279 = select i1 %276, i1 true, i1 %278
  br i1 %279, label %297, label %280

280:                                              ; preds = %273
  store ptr %62, ptr @palmas_dev, align 4
  store ptr @palmas_power_off, ptr @pm_power_off, align 4
  br label %297

281:                                              ; preds = %270, %253, %220, %213, %163, %156
  %282 = phi i32 [ %161, %156 ], [ %218, %213 ], [ %267, %253 ], [ %271, %270 ], [ %222, %220 ], [ %165, %163 ]
  %283 = load i32, ptr %68, align 4
  %284 = getelementptr inbounds %struct.palmas, ptr %62, i32 0, i32 8
  %285 = load ptr, ptr %284, align 4
  call void @regmap_del_irq_chip(i32 noundef %283, ptr noundef %285) #5
  br label %286

286:                                              ; preds = %281, %140, %138, %89, %71
  %287 = phi i32 [ %92, %89 ], [ %76, %71 ], [ %136, %138 ], [ %150, %140 ], [ %282, %281 ]
  %288 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %286
  call void @i2c_unregister_device(ptr noundef nonnull %289) #5
  br label %292

292:                                              ; preds = %291, %286
  %293 = getelementptr %struct.palmas, ptr %62, i32 0, i32 1, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  call void @i2c_unregister_device(ptr noundef nonnull %294) #5
  br label %297

297:                                              ; preds = %296, %292, %280, %273, %269, %64, %60, %58, %13
  %298 = phi i32 [ -12, %13 ], [ -22, %58 ], [ -12, %60 ], [ -61, %64 ], [ %271, %273 ], [ %271, %280 ], [ 0, %269 ], [ %287, %296 ], [ %287, %292 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_i2c_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #5
  %8 = getelementptr %struct.palmas, ptr %3, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @i2c_unregister_device(ptr noundef nonnull %9) #5
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr %struct.palmas, ptr %3, i32 0, i32 1, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @i2c_unregister_device(ptr noundef nonnull %14) #5
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr @palmas_dev, align 4
  %19 = icmp eq ptr %3, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store ptr null, ptr @pm_power_off, align 4
  store ptr null, ptr @palmas_dev, align 4
  br label %21

21:                                               ; preds = %20, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @palmas_power_off() #0 {
  %1 = load ptr, ptr @palmas_dev, align 4
  %2 = load ptr, ptr %1, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef null) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.15) #5
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 48, i32 12
  %11 = load ptr, ptr @palmas_dev, align 4
  %12 = getelementptr inbounds %struct.palmas, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 251, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr @palmas_dev, align 4
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.16, i32 noundef %14) #6
  br label %19

19:                                               ; preds = %16, %7, %0
  %20 = load ptr, ptr @palmas_dev, align 4
  %21 = getelementptr inbounds %struct.palmas, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 160, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.palmas_power_off, i32 noundef %23) #6
  br label %27

27:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
