; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-sh_mobile.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sh_mobile.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sh_mobile_dt_config = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sh_mobile_i2c_data = type { ptr, ptr, %struct.i2c_adapter, i32, i32, ptr, i8, i8, i16, i16, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, i8, i8, i8, ptr, ptr, ptr, %struct.scatterlist, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_sh_mobile__252_1010_sh_mobile_i2c_adap_init4 = internal global ptr @sh_mobile_i2c_adap_init, section ".initcall4.init", align 4
@sh_mobile_i2c_driver = internal global %struct.platform_driver { ptr @sh_mobile_i2c_probe, ptr @sh_mobile_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_mobile_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sh_mobile_i2c_adap_exit = internal global ptr @sh_mobile_i2c_adap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [66 x i8] c"i2c_sh_mobile.description=SuperH Mobile I2C Bus Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [33 x i8] c"i2c_sh_mobile.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [34 x i8] c"i2c_sh_mobile.author=Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [52 x i8] c"i2c_sh_mobile.file=drivers/i2c/busses/i2c-sh_mobile\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [29 x i8] c"i2c_sh_mobile.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [43 x i8] c"i2c_sh_mobile.alias=platform:i2c-sh_mobile\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"i2c-sh_mobile\00", align 1
@sh_mobile_i2c_dt_ids = internal constant [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fast_clock_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7740_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fast_clock_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-iic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-iic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rmobile-iic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_dt_config }, %struct.of_device_id zeroinitializer], align 4
@sh_mobile_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_i2c_suspend, ptr @sh_mobile_i2c_resume, ptr @sh_mobile_i2c_suspend, ptr @sh_mobile_i2c_resume, ptr @sh_mobile_i2c_suspend, ptr @sh_mobile_i2c_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@sh_mobile_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @sh_mobile_i2c_xfer, ptr @sh_mobile_i2c_xfer_atomic, ptr null, ptr null, ptr @sh_mobile_i2c_func, ptr null, ptr null }, align 4
@sh_mobile_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 32, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8
@sh_mobile_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&pd->wait\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"I2C adapter %d, bus speed %lu Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot request IRQ %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot request IRQ %pa\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"unrecognized bus speed %lu Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"timing values out of range: L/H=0x%x/0x%x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Transfer request timed out\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@fast_clock_dt_config = internal constant %struct.sh_mobile_dt_config { i32 2, ptr @sh_mobile_i2c_init }, align 4
@r8a7740_dt_config = internal constant %struct.sh_mobile_dt_config { i32 1, ptr @sh_mobile_i2c_r8a7740_workaround }, align 4
@v2_freq_calc_dt_config = internal constant %struct.sh_mobile_dt_config { i32 2, ptr @sh_mobile_i2c_v2_init }, align 4
@default_dt_config = internal constant %struct.sh_mobile_dt_config { i32 1, ptr @sh_mobile_i2c_init }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_sh_mobile_i2c_adap_exit, ptr @__initcall__kmod_i2c_sh_mobile__252_1010_sh_mobile_i2c_adap_init4, ptr @sh_mobile_i2c_adap_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_adap_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mobile_i2c_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_mobile_i2c_adap_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mobile_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 760, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #8
  %9 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 5
  store ptr %8, ptr %9, align 8
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  %12 = load ptr, ptr %9, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %156

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #8
  %20 = icmp eq i32 %19, -6
  br i1 %20, label %156, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %23

23:                                               ; preds = %37, %21
  %24 = phi i32 [ %19, %21 ], [ %39, %37 ]
  %25 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %156, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %22, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ %28, %27 ]
  %34 = tail call i32 @devm_request_threaded_irq(ptr noundef nonnull %4, i32 noundef %24, ptr noundef nonnull @sh_mobile_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %33, ptr noundef %5) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, i32 noundef %24) #9
  br label %156

37:                                               ; preds = %32
  %38 = add i32 %25, 1
  %39 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %38) #8
  %40 = icmp eq i32 %39, -6
  br i1 %40, label %75, label %23

41:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %42 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %48

46:                                               ; preds = %69, %41
  %47 = phi i32 [ 0, %41 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %75

48:                                               ; preds = %69, %44
  %49 = phi ptr [ %42, %44 ], [ %72, %69 ]
  %50 = phi i32 [ 0, %44 ], [ %71, %69 ]
  %51 = load i32, ptr %49, align 4
  %52 = getelementptr inbounds %struct.resource, ptr %49, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %65, %48
  %56 = phi i32 [ %66, %65 ], [ %51, %48 ]
  %57 = load ptr, ptr %45, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %57, %55 ]
  %63 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %56, ptr noundef nonnull @sh_mobile_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %62, ptr noundef %5) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = add i32 %56, 1
  %67 = load i32, ptr %52, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %55

69:                                               ; preds = %65, %48
  %70 = phi i32 [ %51, %48 ], [ %66, %65 ]
  store i32 %70, ptr %2, align 4
  %71 = add i32 %50, 1
  %72 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef %71) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %46, label %48

74:                                               ; preds = %61
  store i32 %56, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %156

75:                                               ; preds = %46, %37
  %76 = phi i32 [ %47, %46 ], [ %38, %37 ]
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %156

78:                                               ; preds = %75
  store ptr %4, ptr %5, align 8
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %79, align 8
  %80 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %81 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 18
  store ptr %80, ptr %81, align 4
  %82 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %80) #8
  %83 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = ptrtoint ptr %82 to i32
  br label %156

87:                                               ; preds = %78
  %88 = load ptr, ptr %15, align 8
  %89 = call i32 @of_property_read_variable_u32_array(ptr noundef %88, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %90 = icmp sgt i32 %89, -1
  %91 = load i32, ptr %3, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  %94 = select i1 %93, i32 %91, i32 100000
  %95 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 3
  store i32 %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 4
  store i32 1, ptr %96, align 4
  %97 = getelementptr inbounds %struct.resource, ptr %80, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr %80, align 4
  %100 = add i32 %98, 1
  %101 = sub i32 %100, %99
  %102 = icmp ugt i32 %101, 23
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 7
  %105 = load i8, ptr %104, align 1
  %106 = or i8 %105, 1
  store i8 %106, ptr %104, align 1
  br label %107

107:                                              ; preds = %103, %87
  call void @pm_runtime_enable(ptr noundef %4) #8
  %108 = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %109 = call ptr @of_device_get_match_data(ptr noundef %4) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %109, align 4
  store i32 %112, ptr %96, align 4
  %113 = getelementptr inbounds %struct.sh_mobile_dt_config, ptr %109, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 %114(ptr noundef nonnull %5) #8
  br label %118

116:                                              ; preds = %107
  %117 = call i32 @sh_mobile_i2c_init(ptr noundef nonnull %5)
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %115, %111 ], [ %117, %116 ]
  %120 = call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #8
  %121 = icmp eq i32 %119, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 21
  call void @sg_init_table(ptr noundef %123, i32 noundef 1) #8
  %124 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 22
  store i32 3, ptr %124, align 4
  %125 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 19
  store ptr inttoptr (i32 -517 to ptr), ptr %125, align 8
  %126 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 20
  store ptr inttoptr (i32 -517 to ptr), ptr %126, align 4
  %127 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2
  %128 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 9, i32 8
  store ptr %5, ptr %128, align 8
  store ptr null, ptr %127, align 8
  %129 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 2
  store ptr @sh_mobile_i2c_algorithm, ptr %129, align 8
  %130 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 17
  store ptr @sh_mobile_i2c_quirks, ptr %130, align 8
  %131 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 9, i32 1
  store ptr %4, ptr %131, align 4
  %132 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 8
  store i32 5, ptr %132, align 8
  %133 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 11
  store i32 %134, ptr %135, align 4
  %136 = load ptr, ptr %15, align 8
  %137 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 9, i32 25
  store ptr %136, ptr %137, align 8
  %138 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 2, i32 12
  %139 = load ptr, ptr %0, align 8
  %140 = call i32 @strlcpy(ptr noundef %138, ptr noundef %139, i32 noundef 48) #8
  %141 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 10
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %142, ptr noundef nonnull @.str.3, ptr noundef nonnull @sh_mobile_i2c_probe.__key) #8
  %143 = call i32 @i2c_add_numbered_adapter(ptr noundef %127) #8
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %122
  %146 = load ptr, ptr %125, align 8
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void @dma_release_channel(ptr noundef %146) #8
  store ptr inttoptr (i32 -517 to ptr), ptr %125, align 8
  br label %149

149:                                              ; preds = %148, %145
  %150 = load ptr, ptr %126, align 4
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  call void @dma_release_channel(ptr noundef %150) #8
  store ptr inttoptr (i32 -517 to ptr), ptr %126, align 4
  br label %156

153:                                              ; preds = %122
  %154 = load i32, ptr %135, align 4
  %155 = load i32, ptr %95, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %154, i32 noundef %155) #9
  br label %156

156:                                              ; preds = %153, %152, %149, %118, %85, %75, %74, %36, %23, %18, %11, %1
  %157 = phi i32 [ %13, %11 ], [ %86, %85 ], [ 0, %153 ], [ -12, %1 ], [ %119, %118 ], [ %143, %149 ], [ %143, %152 ], [ -2, %75 ], [ -2, %18 ], [ %34, %36 ], [ %63, %74 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef %6) #8
  store ptr inttoptr (i32 -517 to ptr), ptr %5, align 8
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @dma_release_channel(ptr noundef %11) #8
  store ptr inttoptr (i32 -517 to ptr), ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %15, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %5 = udiv i32 %4, 1000
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = udiv i32 %5, %7
  %9 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %12 [
    i32 100000, label %14
    i32 400000, label %11
  ]

11:                                               ; preds = %1
  br label %14

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %10) #9
  br label %51

14:                                               ; preds = %11, %1
  %15 = phi i32 [ 9, %11 ], [ 43, %1 ]
  %16 = phi i32 [ 16, %11 ], [ 50, %1 ]
  %17 = mul nuw nsw i32 %16, %8
  %18 = add nuw nsw i32 %17, 5000
  %19 = udiv i32 %18, 10000
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 8
  store i16 %20, ptr %21, align 2
  %22 = mul nuw nsw i32 %15, %8
  %23 = add nuw nsw i32 %22, 5000
  %24 = udiv i32 %23, 10000
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 9
  store i16 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 255, i32 511
  %32 = icmp ult i32 %31, %19
  %33 = icmp ult i32 %31, %24
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %14
  %36 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.8, i32 noundef %19, i32 noundef %24) #9
  br label %51

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 6
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 127
  %41 = lshr i32 %19, 1
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, -128
  %44 = or i8 %40, %43
  %45 = and i16 %25, 256
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = or i8 %44, 64
  store i8 %48, ptr %38, align 4
  br label %51

49:                                               ; preds = %37
  %50 = and i8 %44, -65
  store i8 %50, ptr %38, align 4
  br label %51

51:                                               ; preds = %49, %47, %35, %12
  %52 = phi i32 [ -22, %12 ], [ -22, %35 ], [ 0, %49 ], [ 0, %47 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 13
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %22 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = or i8 %21, %23
  %25 = or i8 %24, 32
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %25) #8, !srcloc !12
  br label %194

28:                                               ; preds = %14, %2
  %29 = and i32 %7, 12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = and i8 %6, -13
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #8, !srcloc !12
  br label %194

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  %42 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 13
  %43 = load i32, ptr %42, align 8
  br i1 %41, label %149, label %44

44:                                               ; preds = %35
  %45 = add i32 %43, -2
  switch i32 %43, label %69 [
    i32 -1, label %46
    i32 0, label %64
  ]

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #8
  %49 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %50 = load i8, ptr %49, align 4
  %51 = or i8 %50, 14
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %51) #8, !srcloc !12
  %54 = load ptr, ptr %36, align 4
  %55 = load i16, ptr %54, align 4
  %56 = trunc i16 %55 to i8
  %57 = shl i8 %56, 1
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = trunc i16 %59 to i8
  %61 = and i8 %60, 1
  %62 = or i8 %61, %57
  %63 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %62) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #8
  br label %139

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #8
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 -127) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #8
  br label %139

69:                                               ; preds = %44
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %43, %72
  br i1 %73, label %74, label %128

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 16
  %76 = load i8, ptr %75, align 1, !range !13
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #8
  %81 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 17
  %82 = load i8, ptr %81, align 2, !range !13
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %86 = load i8, ptr %85, align 4
  %87 = or i8 %86, 15
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr i8, ptr %88, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %89, i8 %87) #8, !srcloc !12
  br label %90

90:                                               ; preds = %84, %78
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 -64) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #8
  %93 = load i32, ptr %42, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %42, align 8
  br label %139

95:                                               ; preds = %74
  %96 = icmp slt i32 %45, 0
  %97 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %97) #8
  %99 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 17
  %100 = load i8, ptr %99, align 2, !range !13
  %101 = icmp eq i8 %100, 0
  br i1 %96, label %102, label %112

102:                                              ; preds = %95
  br i1 %101, label %103, label %109

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %105 = load i8, ptr %104, align 4
  %106 = or i8 %105, 15
  %107 = load ptr, ptr %3, align 4
  %108 = getelementptr i8, ptr %107, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %108, i8 %106) #8, !srcloc !12
  br label %109

109:                                              ; preds = %103, %102
  %110 = load ptr, ptr %3, align 4
  %111 = getelementptr i8, ptr %110, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %111, i8 -64) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #8
  br label %139

112:                                              ; preds = %95
  br i1 %101, label %113, label %119

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %115 = load i8, ptr %114, align 4
  %116 = or i8 %115, 15
  %117 = load ptr, ptr %3, align 4
  %118 = getelementptr i8, ptr %117, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 %116) #8, !srcloc !12
  br label %119

119:                                              ; preds = %113, %112
  %120 = load ptr, ptr %3, align 4
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %120) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr i8, ptr %122, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %123, i8 -64) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #8
  %124 = load ptr, ptr %36, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 %45
  store i8 %121, ptr %127, align 1
  br label %139

128:                                              ; preds = %69
  %129 = icmp sgt i32 %45, -1
  br i1 %129, label %130, label %139

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %131) #8
  %133 = load ptr, ptr %3, align 4
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %133) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %131, i32 noundef %132) #8
  %135 = load ptr, ptr %36, align 4
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 %45
  store i8 %134, ptr %138, align 1
  br label %139

139:                                              ; preds = %130, %128, %119, %109, %90, %64, %46
  %140 = load i32, ptr %42, align 8
  %141 = add i32 %140, 1
  store i32 %141, ptr %42, align 8
  %142 = load ptr, ptr %36, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 0, i32 2
  %144 = load i16, ptr %143, align 4
  %145 = zext i16 %144 to i32
  %146 = add nuw nsw i32 %145, 1
  %147 = icmp eq i32 %140, %146
  %148 = zext i1 %147 to i32
  br label %194

149:                                              ; preds = %35
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 2
  %151 = load i16, ptr %150, align 4
  %152 = zext i16 %151 to i32
  %153 = icmp eq i32 %43, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %155) #8
  %157 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 15
  %158 = load i8, ptr %157, align 8, !range !13
  %159 = icmp eq i8 %158, 0
  %160 = select i1 %159, i8 -108, i8 -112
  %161 = load ptr, ptr %3, align 4
  %162 = getelementptr i8, ptr %161, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %162, i8 %160) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %156) #8
  br label %194

163:                                              ; preds = %149
  %164 = icmp eq i32 %43, -1
  %165 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 10
  %166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %165) #8
  br i1 %164, label %167, label %183

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %169 = load i8, ptr %168, align 4
  %170 = or i8 %169, 14
  %171 = load ptr, ptr %3, align 4
  %172 = getelementptr i8, ptr %171, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 %170) #8, !srcloc !12
  %173 = load ptr, ptr %36, align 4
  %174 = load i16, ptr %173, align 4
  %175 = trunc i16 %174 to i8
  %176 = shl i8 %175, 1
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %173, i32 0, i32 1
  %178 = load i16, ptr %177, align 2
  %179 = trunc i16 %178 to i8
  %180 = and i8 %179, 1
  %181 = or i8 %180, %176
  %182 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %182, i8 %181) #8, !srcloc !12
  br label %191

183:                                              ; preds = %163
  %184 = load ptr, ptr %36, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %42, align 8
  %188 = getelementptr i8, ptr %186, i32 %187
  %189 = load i8, ptr %188, align 1
  %190 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %190, i8 %189) #8, !srcloc !12
  br label %191

191:                                              ; preds = %183, %167
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %165, i32 noundef %166) #8
  %192 = load i32, ptr %42, align 8
  %193 = add i32 %192, 1
  store i32 %193, ptr %42, align 8
  br label %194

194:                                              ; preds = %191, %154, %139, %31, %18
  %195 = phi i32 [ 0, %18 ], [ 0, %31 ], [ %148, %139 ], [ 1, %154 ], [ 0, %191 ]
  %196 = load i32, ptr %11, align 4
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 13
  %200 = load i32, ptr %199, align 8
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = load ptr, ptr %3, align 4
  %204 = getelementptr i8, ptr %203, i32 12
  %205 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %204) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %206 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 6
  %207 = load i8, ptr %206, align 4
  %208 = or i8 %205, %207
  %209 = or i8 %208, 16
  %210 = load ptr, ptr %3, align 4
  %211 = getelementptr i8, ptr %210, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %211, i8 %209) #8, !srcloc !12
  br label %212

212:                                              ; preds = %202, %198, %194
  %213 = and i32 %7, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = and i8 %6, -3
  %217 = load ptr, ptr %3, align 4
  %218 = getelementptr i8, ptr %217, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %218, i8 %216) #8, !srcloc !12
  br label %219

219:                                              ; preds = %215, %212
  %220 = icmp eq i32 %195, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %219
  %222 = load i32, ptr %8, align 4
  %223 = or i32 %222, 32
  store i32 %223, ptr %8, align 4
  %224 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 17
  %225 = load i8, ptr %224, align 2, !range !13
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %228, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %229

229:                                              ; preds = %227, %221, %219
  %230 = load ptr, ptr %3, align 4
  %231 = getelementptr i8, ptr %230, i32 8
  %232 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %231) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 17
  store i8 0, ptr %6, align 2
  %7 = tail call fastcc i32 @sh_mobile_xfer(ptr noundef %5, ptr noundef %1, i32 noundef %2)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_xfer_atomic(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %5, i32 0, i32 17
  store i8 1, ptr %6, align 2
  %7 = tail call fastcc i32 @sh_mobile_xfer(ptr noundef %5, ptr noundef %1, i32 noundef %2)
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_i2c_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592717
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_mobile_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %375

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 15
  %12 = add nsw i32 %2, -1
  %13 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 9
  %17 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 12
  %18 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 13
  %19 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 14
  %20 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 17
  %21 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 23
  %22 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 20
  %23 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 19
  %24 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 18
  %25 = getelementptr inbounds i8, ptr %5, i32 4
  %26 = getelementptr inbounds i8, ptr %5, i32 8
  %27 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  %28 = getelementptr inbounds i8, ptr %4, i32 4
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  %31 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 21
  %32 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 21, i32 4
  %33 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 21, i32 3
  %34 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 22
  %35 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 10
  %37 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 2, i32 7
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 11
  br label %39

39:                                               ; preds = %372, %10
  %40 = phi i32 [ 0, %10 ], [ %373, %372 ]
  %41 = load i8, ptr %11, align 8, !range !13
  %42 = icmp ne i8 %41, 0
  %43 = icmp eq i32 %40, 0
  %44 = select i1 %42, i1 true, i1 %43
  %45 = getelementptr %struct.i2c_msg, ptr %1, i32 %40
  %46 = icmp eq i32 %40, %12
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = getelementptr %struct.i2c_msg, ptr %1, i32 %40, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp slt i16 %49, 0
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i1 [ true, %39 ], [ %50, %47 ]
  %53 = zext i1 %52 to i8
  store i8 %53, ptr %11, align 8
  store i8 0, ptr %13, align 1
  br i1 %44, label %54, label %67

54:                                               ; preds = %51
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr i8, ptr %55, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 1) #8, !srcloc !12
  %57 = load ptr, ptr %14, align 4
  %58 = getelementptr i8, ptr %57, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 -127) #8, !srcloc !12
  %59 = load i16, ptr %15, align 2
  %60 = trunc i16 %59 to i8
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 %60) #8, !srcloc !12
  %63 = load i16, ptr %16, align 8
  %64 = trunc i16 %63 to i8
  %65 = load ptr, ptr %14, align 4
  %66 = getelementptr i8, ptr %65, i32 20
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %64) #8, !srcloc !12
  br label %67

67:                                               ; preds = %54, %51
  store ptr %45, ptr %17, align 4
  store i32 -1, ptr %18, align 8
  store i32 0, ptr %19, align 4
  %68 = load i8, ptr %20, align 2, !range !13
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %216

70:                                               ; preds = %67
  %71 = call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %45, i32 noundef 8) #8
  store ptr %71, ptr %21, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %211, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %17, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  %79 = select i1 %78, i32 1, i32 2
  %80 = select i1 %78, ptr %23, ptr %22
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, inttoptr (i32 -517 to ptr)
  br i1 %82, label %83, label %119

83:                                               ; preds = %73
  %84 = load ptr, ptr %0, align 8
  %85 = load ptr, ptr %24, align 4
  %86 = load i32, ptr %85, align 4
  br i1 %78, label %103, label %87

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #8
  %88 = call ptr @dma_request_chan(ptr noundef %84, ptr noundef nonnull @.str.11) #8
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %101, label %90

90:                                               ; preds = %87
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %26, i8 0, i32 40, i1 false) #8
  store i32 2, ptr %5, align 4
  store i32 %86, ptr %25, align 4
  store i32 1, ptr %27, align 4
  %91 = load ptr, ptr %88, align 4
  %92 = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 44
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = call i32 %93(ptr noundef %88, ptr noundef nonnull %5) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %90
  %99 = phi i32 [ %96, %95 ], [ -38, %90 ]
  call void @dma_release_channel(ptr noundef %88) #8
  %100 = inttoptr i32 %99 to ptr
  br label %101

101:                                              ; preds = %98, %95, %87
  %102 = phi ptr [ %100, %98 ], [ %88, %87 ], [ %88, %95 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  store ptr %102, ptr %22, align 4
  br label %119

103:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  %104 = call ptr @dma_request_chan(ptr noundef %84, ptr noundef nonnull @.str.10) #8
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %28, i8 0, i32 44, i1 false) #8
  store i32 1, ptr %4, align 4
  store i32 %86, ptr %29, align 4
  store i32 1, ptr %30, align 4
  %107 = load ptr, ptr %104, align 4
  %108 = getelementptr inbounds %struct.dma_device, ptr %107, i32 0, i32 44
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = call i32 %109(ptr noundef %104, ptr noundef nonnull %4) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111, %106
  %115 = phi i32 [ %112, %111 ], [ -38, %106 ]
  call void @dma_release_channel(ptr noundef %104) #8
  %116 = inttoptr i32 %115 to ptr
  br label %117

117:                                              ; preds = %114, %111, %103
  %118 = phi ptr [ %116, %114 ], [ %104, %103 ], [ %104, %111 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  store ptr %118, ptr %23, align 8
  br label %119

119:                                              ; preds = %117, %101, %73
  %120 = phi ptr [ %102, %101 ], [ %118, %117 ], [ %81, %73 ]
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %211, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %120, align 4
  %124 = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 15
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %21, align 8
  %127 = load ptr, ptr %17, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 2
  %129 = load i16, ptr %128, align 4
  %130 = zext i16 %129 to i32
  %131 = call zeroext i1 @is_vmalloc_addr(ptr noundef %126) #8
  %132 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %133 = xor i1 %132, true
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %144, !prof !14

135:                                              ; preds = %122
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %136 = call ptr @dev_driver_string(ptr noundef %125) #8
  %137 = getelementptr inbounds %struct.device, ptr %125, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load ptr, ptr %125, align 4
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi ptr [ %141, %140 ], [ %138, %135 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %136, ptr noundef %143) #8
  br label %144

144:                                              ; preds = %142, %122
  br i1 %131, label %211, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr @mem_map, align 4
  %147 = ptrtoint ptr %126 to i32
  %148 = add i32 %147, 1073741824
  %149 = lshr i32 %148, 12
  %150 = getelementptr %struct.page, ptr %146, i32 %149
  %151 = and i32 %147, 4095
  %152 = call i32 @dma_map_page_attrs(ptr noundef %125, ptr noundef %150, i32 noundef %151, i32 noundef %130, i32 noundef %79, i32 noundef 0) #8
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %211, label %154

154:                                              ; preds = %145
  %155 = load ptr, ptr %17, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %155, i32 0, i32 2
  %157 = load i16, ptr %156, align 4
  %158 = zext i16 %157 to i32
  store i32 %158, ptr %32, align 8
  store i32 %152, ptr %33, align 4
  store i32 %79, ptr %34, align 4
  %159 = icmp eq ptr %120, null
  br i1 %159, label %174, label %160

160:                                              ; preds = %154
  %161 = load ptr, ptr %120, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %174, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.dma_device, ptr %161, i32 0, i32 39
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = call ptr %165(ptr noundef nonnull %120, ptr noundef %31, i32 noundef 1, i32 noundef %79, i32 noundef 3, ptr noundef null) #8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %187

170:                                              ; preds = %167
  %171 = load i32, ptr %34, align 4
  %172 = load i32, ptr %33, align 4
  %173 = load ptr, ptr %17, align 4
  br label %174

174:                                              ; preds = %170, %163, %160, %154
  %175 = phi ptr [ %173, %170 ], [ %155, %154 ], [ %155, %160 ], [ %155, %163 ]
  %176 = phi i32 [ %172, %170 ], [ %152, %154 ], [ %152, %160 ], [ %152, %163 ]
  %177 = phi i32 [ %171, %170 ], [ %79, %154 ], [ %79, %160 ], [ %79, %163 ]
  %178 = icmp eq i32 %177, 2
  %179 = select i1 %178, ptr %22, ptr %23
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.dma_device, ptr %181, i32 0, i32 15
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %175, i32 0, i32 2
  %185 = load i16, ptr %184, align 4
  %186 = zext i16 %185 to i32
  call void @dma_unmap_page_attrs(ptr noundef %183, i32 noundef %176, i32 noundef %186, i32 noundef %177, i32 noundef 0) #8
  store i32 3, ptr %34, align 4
  br label %211

187:                                              ; preds = %167
  %188 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %168, i32 0, i32 6
  store ptr @sh_mobile_i2c_dma_callback, ptr %188, align 4
  %189 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %168, i32 0, i32 8
  store ptr %0, ptr %189, align 4
  %190 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %168, i32 0, i32 4
  %191 = load ptr, ptr %190, align 4
  %192 = call i32 %191(ptr noundef nonnull %168) #8
  %193 = icmp sgt i32 %192, -1
  br i1 %193, label %207, label %194

194:                                              ; preds = %187
  %195 = load i32, ptr %34, align 4
  %196 = icmp eq i32 %195, 2
  %197 = select i1 %196, ptr %22, ptr %23
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.dma_device, ptr %199, i32 0, i32 15
  %201 = load ptr, ptr %200, align 4
  %202 = load i32, ptr %33, align 4
  %203 = load ptr, ptr %17, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %203, i32 0, i32 2
  %205 = load i16, ptr %204, align 4
  %206 = zext i16 %205 to i32
  call void @dma_unmap_page_attrs(ptr noundef %201, i32 noundef %202, i32 noundef %206, i32 noundef %195, i32 noundef 0) #8
  store i32 3, ptr %34, align 4
  br label %211

207:                                              ; preds = %187
  %208 = load ptr, ptr %120, align 4
  %209 = getelementptr inbounds %struct.dma_device, ptr %208, i32 0, i32 50
  %210 = load ptr, ptr %209, align 4
  call void %210(ptr noundef nonnull %120) #8
  br label %211

211:                                              ; preds = %207, %194, %174, %145, %144, %119, %70
  %212 = load i8, ptr %35, align 4
  %213 = or i8 %212, 15
  %214 = load ptr, ptr %14, align 4
  %215 = getelementptr i8, ptr %214, i32 12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %215, i8 %213) #8, !srcloc !12
  br label %216

216:                                              ; preds = %211, %67
  br i1 %44, label %217, label %221

217:                                              ; preds = %216
  %218 = call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #8
  %219 = load ptr, ptr %14, align 4
  %220 = getelementptr i8, ptr %219, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %220, i8 -108) #8, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %218) #8
  br label %221

221:                                              ; preds = %217, %216
  %222 = load i8, ptr %20, align 2, !range !13
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %254, label %224

224:                                              ; preds = %221
  %225 = load volatile i32, ptr @jiffies, align 64
  %226 = load i32, ptr %37, align 4
  %227 = add i32 %226, %225
  %228 = xor i32 %227, -1
  %229 = load volatile i32, ptr @jiffies, align 64
  %230 = add i32 %229, %228
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %296, label %232

232:                                              ; preds = %224
  %233 = load i32, ptr %19, align 4
  %234 = and i32 %233, 36
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %296

236:                                              ; preds = %250
  %237 = load i32, ptr %19, align 4
  %238 = and i32 %237, 36
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %296

240:                                              ; preds = %236, %232
  %241 = load ptr, ptr %14, align 4
  %242 = getelementptr i8, ptr %241, i32 8
  %243 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %242) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %244 = and i8 %243, 15
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %240
  %247 = call i32 @sh_mobile_i2c_isr(i32 noundef 0, ptr noundef %0)
  %248 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %248(i32 noundef 32212200) #8
  br label %250

249:                                              ; preds = %240
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  br label %250

250:                                              ; preds = %249, %246
  %251 = load volatile i32, ptr @jiffies, align 64
  %252 = add i32 %251, %228
  %253 = icmp sgt i32 %252, -1
  br i1 %253, label %296, label %236

254:                                              ; preds = %221
  %255 = load i32, ptr %37, align 4
  %256 = load i32, ptr %19, align 4
  %257 = and i32 %256, 36
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  %260 = icmp ne i32 %255, 0
  %261 = select i1 %259, i1 true, i1 %260
  %262 = select i1 %261, i32 %255, i32 1
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %258, i1 true, i1 %263
  br i1 %264, label %290, label %265

265:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #8
  %266 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %6, i32 noundef 2) #8
  %267 = load i32, ptr %19, align 4
  %268 = and i32 %267, 36
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = select i1 %270, i1 true, i1 %260
  %272 = select i1 %271, i32 %255, i32 1
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %269, i1 true, i1 %273
  br i1 %274, label %288, label %275

275:                                              ; preds = %275, %265
  %276 = phi i32 [ %285, %275 ], [ %272, %265 ]
  %277 = call i32 @schedule_timeout(i32 noundef %276) #8
  %278 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %6, i32 noundef 2) #8
  %279 = load i32, ptr %19, align 4
  %280 = and i32 %279, 36
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = icmp ne i32 %277, 0
  %284 = select i1 %282, i1 true, i1 %283
  %285 = select i1 %284, i32 %277, i32 1
  %286 = icmp eq i32 %285, 0
  %287 = select i1 %281, i1 true, i1 %286
  br i1 %287, label %288, label %275

288:                                              ; preds = %275, %265
  %289 = phi i32 [ %272, %265 ], [ %285, %275 ]
  call void @finish_wait(ptr noundef %38, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %290

290:                                              ; preds = %288, %254
  %291 = phi i32 [ %262, %254 ], [ %289, %288 ]
  %292 = load ptr, ptr %21, align 8
  %293 = load ptr, ptr %17, align 4
  %294 = load i8, ptr %13, align 1, !range !13
  %295 = icmp ne i8 %294, 0
  call void @i2c_put_dma_safe_msg_buf(ptr noundef %292, ptr noundef %293, i1 noundef zeroext %295) #8
  br label %299

296:                                              ; preds = %250, %236, %232, %224
  %297 = phi i32 [ %230, %224 ], [ %230, %232 ], [ %252, %236 ], [ %252, %250 ]
  %298 = lshr i32 %297, 31
  br label %299

299:                                              ; preds = %296, %290
  %300 = phi i32 [ %291, %290 ], [ %298, %296 ]
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %333

302:                                              ; preds = %299
  %303 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull @.str.9) #9
  %304 = load i32, ptr %34, align 4
  %305 = icmp eq i32 %304, 3
  br i1 %305, label %375, label %306

306:                                              ; preds = %302
  %307 = icmp eq i32 %304, 2
  %308 = select i1 %307, ptr %22, ptr %23
  %309 = load ptr, ptr %308, align 4
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.dma_device, ptr %310, i32 0, i32 47
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %323, label %314

314:                                              ; preds = %306
  %315 = call i32 %312(ptr noundef %309) #8
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load ptr, ptr %309, align 4
  %319 = getelementptr inbounds %struct.dma_device, ptr %318, i32 0, i32 48
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %317
  call void %320(ptr noundef %309) #8
  br label %323

323:                                              ; preds = %322, %317, %314, %306
  %324 = load ptr, ptr %309, align 4
  %325 = getelementptr inbounds %struct.dma_device, ptr %324, i32 0, i32 15
  %326 = load ptr, ptr %325, align 4
  %327 = load i32, ptr %33, align 4
  %328 = load ptr, ptr %17, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %328, i32 0, i32 2
  %330 = load i16, ptr %329, align 4
  %331 = zext i16 %330 to i32
  %332 = load i32, ptr %34, align 4
  call void @dma_unmap_page_attrs(ptr noundef %326, i32 noundef %327, i32 noundef %331, i32 noundef %332, i32 noundef 0) #8
  store i32 3, ptr %34, align 4
  br label %375

333:                                              ; preds = %299
  %334 = load i8, ptr %11, align 8, !range !13
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %357, label %336

336:                                              ; preds = %353, %333
  %337 = phi i32 [ %355, %353 ], [ 1000, %333 ]
  %338 = load ptr, ptr %14, align 4
  %339 = getelementptr i8, ptr %338, i32 8
  %340 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %339) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %341 = and i8 %340, 16
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %353

343:                                              ; preds = %336
  %344 = load i32, ptr %19, align 4
  %345 = trunc i32 %344 to i8
  %346 = or i8 %340, %345
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %375

350:                                              ; preds = %343
  %351 = and i32 %347, 8
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %372, label %375

353:                                              ; preds = %336
  %354 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %354(i32 noundef 2147480) #8
  %355 = add nsw i32 %337, -1
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %375, label %336

357:                                              ; preds = %368, %333
  %358 = phi i32 [ %370, %368 ], [ 1000, %333 ]
  %359 = load ptr, ptr %14, align 4
  %360 = getelementptr i8, ptr %359, i32 8
  %361 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %360) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %362 = zext i8 %361 to i32
  %363 = and i32 %362, 1
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %357
  %366 = and i32 %362, 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %365
  %369 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %369(i32 noundef 2147480) #8
  %370 = add nsw i32 %358, -1
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %357

372:                                              ; preds = %357, %350
  %373 = add nuw nsw i32 %40, 1
  %374 = icmp eq i32 %373, %2
  br i1 %374, label %375, label %39

375:                                              ; preds = %372, %368, %365, %353, %350, %343, %323, %302, %3
  %376 = phi i32 [ -110, %302 ], [ -110, %323 ], [ %2, %3 ], [ -110, %368 ], [ -6, %365 ], [ -110, %353 ], [ %2, %372 ], [ -11, %350 ], [ -6, %343 ]
  %377 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 1
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr i8, ptr %378, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %379, i8 1) #8, !srcloc !12
  %380 = load ptr, ptr %0, align 8
  %381 = call i32 @__pm_runtime_idle(ptr noundef %380, i32 noundef 4) #8
  ret i32 %376
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_dma_safe_msg_buf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_dma_safe_msg_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mobile_i2c_dma_callback(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 20
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 19
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 21, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef %18, i32 noundef %3, i32 noundef 0) #8
  store i32 3, ptr %2, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 13
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 16
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %29 = and i8 %28, -49
  %30 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = or i8 %31, %29
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #8, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_r8a7740_workaround(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %6 = or i8 %5, -128
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #8, !srcloc !12
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 112
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %15 = or i8 %14, 16
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %15) #8, !srcloc !12
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 112
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 1) #8, !srcloc !12
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 0) #8, !srcloc !12
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #8
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 16) #8, !srcloc !12
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #8
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 0) #8, !srcloc !12
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #8
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 16) #8, !srcloc !12
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #8
  %36 = tail call i32 @sh_mobile_i2c_init(ptr noundef %0)
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_v2_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = udiv i32 %4, %6
  %8 = mul i32 %7, 5
  %9 = udiv i32 %8, 9
  %10 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -2
  %13 = add i32 %12, %9
  %14 = udiv i32 %13, %11
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 8
  store i16 %15, ptr %16, align 2
  %17 = shl i32 %7, 2
  %18 = udiv i32 %17, 9
  %19 = add i32 %11, -6
  %20 = add i32 %19, %18
  %21 = udiv i32 %20, %11
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 9
  store i16 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 7
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = and i32 %14, 65535
  %29 = select i1 %27, i32 255, i32 511
  %30 = icmp ult i32 %29, %28
  %31 = and i32 %21, 65535
  %32 = icmp ult i32 %29, %31
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %28, i32 noundef %31) #9
  br label %50

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 127
  %40 = lshr i32 %14, 1
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, -128
  %43 = or i8 %39, %42
  %44 = and i16 %22, 256
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = or i8 %43, 64
  store i8 %47, ptr %37, align 4
  br label %50

48:                                               ; preds = %36
  %49 = and i8 %43, -65
  store i8 %49, ptr %37, align 4
  br label %50

50:                                               ; preds = %48, %46, %34
  %51 = phi i32 [ -22, %34 ], [ 0, %48 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #8
  %8 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #8
  %8 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %3, i32 0, i32 2, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{i64 5070089}
!10 = !{i64 2152608816}
!11 = !{i64 2152610114}
!12 = !{i64 5069694}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2154329789}
!16 = !{i64 2154329631}
