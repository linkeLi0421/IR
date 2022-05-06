; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-rcar.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-rcar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rcar_i2c_priv = type { i32, ptr, %struct.i2c_adapter, ptr, i32, ptr, %struct.wait_queue_head, i32, i32, i8, i32, ptr, ptr, ptr, ptr, %struct.scatterlist, i32, ptr, i8, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_rcar__253_1182_rcar_i2c_driver_init6 = internal global ptr @rcar_i2c_driver_init, section ".initcall6.init", align 4
@rcar_i2c_driver = internal global %struct.platform_driver { ptr @rcar_i2c_probe, ptr @rcar_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rcar_i2c_driver_exit = internal global ptr @rcar_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file254 = internal constant [42 x i8] c"i2c_rcar.file=drivers/i2c/busses/i2c-rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [24 x i8] c"i2c_rcar.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [50 x i8] c"i2c_rcar.description=Renesas R-Car I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [69 x i8] c"i2c_rcar.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"i2c-rcar\00", align 1
@rcar_i2c_dt_ids = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@rcar_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_i2c_suspend, ptr @rcar_i2c_resume, ptr @rcar_i2c_suspend, ptr @rcar_i2c_resume, ptr @rcar_i2c_suspend, ptr @rcar_i2c_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@rcar_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&priv->wait\00", align 1
@rcar_i2c_algo = internal constant %struct.i2c_algorithm { ptr @rcar_i2c_master_xfer, ptr @rcar_i2c_master_xfer_atomic, ptr null, ptr null, ptr @rcar_i2c_func, ptr @rcar_reg_slave, ptr @rcar_unreg_slave }, align 4
@rcar_i2c_bri = internal global %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @rcar_i2c_get_scl, ptr @rcar_i2c_set_scl, ptr null, ptr @rcar_i2c_set_sda, ptr @rcar_i2c_get_bus_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rcar_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"multi-master\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"cannot get irq %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"error %d : %x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [30 x i8] c"drivers/i2c/busses/i2c-rcar.c\00", align 1
@__const.rcar_i2c_clock_calculate.t = private unnamed_addr constant %struct.i2c_timings { i32 100000, i32 200, i32 35, i32 50, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"device type error\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Input clock %lu too high\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"it is impossible to calculate best SCL\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_rcar_i2c_driver_exit, ptr @__initcall__kmod_i2c_rcar__253_1182_rcar_i2c_driver_init6, ptr @rcar_i2c_driver_exit], section "llvm.metadata"
@switch.table.rcar_i2c_probe = private unnamed_addr constant [3 x i32] [i32 2, i32 3, i32 3], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_i2c_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rcar_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.i2c_timings, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 760, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %160, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 5
  store ptr %7, ptr %8, align 8
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  %11 = load ptr, ptr %8, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %160

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 12
  %15 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i32
  br label %160

20:                                               ; preds = %13
  %21 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %22 = ptrtoint ptr %21 to i32
  %23 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 10
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef nonnull @rcar_i2c_probe.__key) #9
  %25 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 11
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 2
  store ptr @rcar_i2c_algo, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 1
  store i32 256, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 8
  store i32 3, ptr %31, align 8
  %32 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 9, i32 1
  store ptr %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 9, i32 25
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 16
  store ptr @rcar_i2c_bri, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 17
  store ptr @rcar_i2c_quirks, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 9, i32 8
  store ptr %4, ptr %38, align 8
  %39 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 2, i32 12
  %40 = load ptr, ptr %0, align 8
  %41 = tail call i32 @strlcpy(ptr noundef %39, ptr noundef %40, i32 noundef 48) #9
  %42 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 15
  tail call void @sg_init_table(ptr noundef %42, i32 noundef 1) #9
  %43 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 16
  store i32 3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 13
  store ptr inttoptr (i32 -517 to ptr), ptr %44, align 8
  %45 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 14
  store ptr inttoptr (i32 -517 to ptr), ptr %45, align 4
  tail call void @pm_runtime_enable(ptr noundef %3) #9
  %46 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %47 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.rcar_i2c_clock_calculate.t, i32 32, i1 false) #9
  call void @i2c_parse_fw_timings(ptr noundef %47, ptr noundef nonnull %2, i1 noundef zeroext false) #9
  %48 = load i32, ptr %23, align 4
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %51, label %50

50:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.13) #10
  br label %88

51:                                               ; preds = %20
  %52 = getelementptr inbounds [3 x i32], ptr @switch.table.rcar_i2c_probe, i32 0, i32 %48
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %8, align 8
  %55 = call i32 @clk_get_rate(ptr noundef %54) #9
  %56 = udiv i32 %55, 20000000
  %57 = lshr i32 %56, %53
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.14, i32 noundef %55) #10
  br label %88

60:                                               ; preds = %51
  %61 = add nuw nsw i32 %56, 1
  %62 = udiv i32 %55, %61
  %63 = getelementptr inbounds %struct.i2c_timings, ptr %2, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.i2c_timings, ptr %2, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %64
  %68 = getelementptr inbounds %struct.i2c_timings, ptr %2, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %67, %69
  %71 = add i32 %62, 500000
  %72 = udiv i32 %71, 1000000
  %73 = mul i32 %70, %72
  %74 = add i32 %73, 500
  %75 = udiv i32 %74, 1000
  %76 = add nuw nsw i32 %75, 20
  %77 = load i32, ptr %2, align 4
  br label %78

78:                                               ; preds = %84, %60
  %79 = phi i32 [ 0, %60 ], [ %85, %84 ]
  %80 = shl nuw nsw i32 %79, 3
  %81 = add nuw nsw i32 %76, %80
  %82 = udiv i32 %62, %81
  %83 = icmp ugt i32 %82, %77
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = add nuw nsw i32 %79, 1
  %86 = icmp eq i32 %85, 64
  br i1 %86, label %87, label %78

87:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.15) #10
  br label %88

88:                                               ; preds = %87, %59, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %155

89:                                               ; preds = %78
  %90 = shl i32 %79, %53
  %91 = or i32 %90, %56
  %92 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 8
  store i32 %91, ptr %92, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %93 = load ptr, ptr %16, align 4
  %94 = getelementptr i8, ptr %93, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #9, !srcloc !9
  %95 = load i32, ptr %23, align 4
  %96 = icmp ult i32 %95, 2
  %97 = select i1 %96, i32 65536, i32 0
  %98 = select i1 %96, ptr @rcar_i2c_gen2_irq, ptr @rcar_i2c_gen3_irq
  %99 = icmp eq i32 %95, 2
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %102 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 17
  store ptr %101, ptr %102, align 8
  %103 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = call i32 @reset_control_status(ptr noundef %101) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store ptr inttoptr (i32 -524 to ptr), ptr %102, align 8
  br label %108

108:                                              ; preds = %107, %104, %100, %89
  %109 = load ptr, ptr %33, align 8
  %110 = call ptr @of_find_property(ptr noundef %109, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %4, align 8
  %114 = or i32 %113, -2147483648
  store i32 %114, ptr %4, align 8
  br label %117

115:                                              ; preds = %108
  %116 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #9
  br label %117

117:                                              ; preds = %115, %112
  %118 = load ptr, ptr %33, align 8
  %119 = call ptr @of_find_property(ptr noundef %118, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %4, align 8
  %123 = or i32 %122, 268435456
  store i32 %123, ptr %4, align 8
  br label %124

124:                                              ; preds = %121, %117
  %125 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %158, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 19
  store i32 %125, ptr %128, align 8
  %129 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load ptr, ptr %3, align 4
  br label %134

134:                                              ; preds = %132, %127
  %135 = phi ptr [ %133, %132 ], [ %130, %127 ]
  %136 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %125, ptr noundef nonnull %98, ptr noundef null, i32 noundef %97, ptr noundef %135, ptr noundef %4) #9
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, ptr %128, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %139) #10
  br label %158

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %141, align 8
  %142 = call i32 @i2c_add_numbered_adapter(ptr noundef %25) #9
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %140
  %145 = load i32, ptr %4, align 8
  %146 = and i32 %145, 268435456
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = call ptr @i2c_new_slave_host_notify_device(ptr noundef %25) #9
  %150 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 20
  store ptr %149, ptr %150, align 4
  %151 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = ptrtoint ptr %149 to i32
  call void @i2c_del_adapter(ptr noundef %25) #9
  br label %155

154:                                              ; preds = %148, %144
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  br label %160

155:                                              ; preds = %152, %88
  %156 = phi i32 [ %153, %152 ], [ -5, %88 ]
  %157 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #9
  br label %158

158:                                              ; preds = %155, %140, %138, %124
  %159 = phi i32 [ %156, %155 ], [ %125, %124 ], [ %136, %138 ], [ %142, %140 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  br label %160

160:                                              ; preds = %158, %154, %18, %10, %1
  %161 = phi i32 [ %12, %10 ], [ %19, %18 ], [ %159, %158 ], [ 0, %154 ], [ -12, %1 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @i2c_free_slave_host_notify_device(ptr noundef nonnull %6) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 13
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @dma_release_channel(ptr noundef %12) #9
  store ptr inttoptr (i32 -517 to ptr), ptr %11, align 8
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @dma_release_channel(ptr noundef %17) #9
  store ptr inttoptr (i32 -517 to ptr), ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, ptr %3, align 8
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #9
  br label %25

25:                                               ; preds = %23, %20
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_gen3_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %7 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 18
  %8 = load i8, ptr %7, align 4, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %14 = and i32 %13, %6
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %6, %2 ], [ %14, %10 ]
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 536870912
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %16, 0
  %21 = select i1 %19, i1 %20, i1 false, !prof !13
  br i1 %21, label %22, label %25, !prof !13

22:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 136) #9, !srcloc !9
  br label %25

25:                                               ; preds = %22, %15
  %26 = tail call fastcc i32 @rcar_i2c_irq(ptr noundef %1, i32 noundef %16)
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_gen2_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 536870912
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10, !prof !13

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %7 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 136) #9, !srcloc !9
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %15 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 18
  %16 = load i8, ptr %15, align 4, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %22 = and i32 %21, %14
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i32 [ %14, %10 ], [ %22, %18 ]
  %25 = tail call fastcc i32 @rcar_i2c_irq(ptr noundef %1, i32 noundef %24)
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_i2c_irq(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %94

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !14
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %10 = and i32 %9, 255
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %91, label %16

16:                                               ; preds = %5
  %17 = and i32 %14, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = and i32 %9, 32
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  br i1 %21, label %34, label %26

26:                                               ; preds = %19
  %27 = call i32 %25(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %3) #9
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 25) #9, !srcloc !9
  br label %41

34:                                               ; preds = %19
  %35 = call i32 %25(ptr noundef %23, i32 noundef 1, ptr noundef nonnull %3) #9
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 36
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 19) #9, !srcloc !9
  br label %41

41:                                               ; preds = %34, %26
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 238) #9, !srcloc !9
  br label %44

44:                                               ; preds = %41, %16
  %45 = and i32 %14, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 8
  %52 = call i32 %51(ptr noundef %49, i32 noundef 4, ptr noundef nonnull %3) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %53 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 12) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 239) #9, !srcloc !9
  br label %58

58:                                               ; preds = %47, %44
  %59 = and i32 %14, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr i8, ptr %62, i32 36
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %3, align 1
  %66 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 11
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 8
  %69 = load ptr, ptr %68, align 8
  %70 = call i32 %69(ptr noundef %67, i32 noundef 3, ptr noundef nonnull %3) #9
  %71 = lshr i32 %70, 31
  %72 = or i32 %71, 12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %73 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr i8, ptr %74, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 253) #9, !srcloc !9
  br label %76

76:                                               ; preds = %61, %58
  %77 = and i32 %14, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 11
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 8
  %83 = load ptr, ptr %82, align 8
  %84 = call i32 %83(ptr noundef %81, i32 noundef 2, ptr noundef nonnull %3) #9
  %85 = load i8, ptr %3, align 1
  %86 = zext i8 %85 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr i8, ptr %87, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %89 = load ptr, ptr %6, align 4
  %90 = getelementptr i8, ptr %89, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 247) #9, !srcloc !9
  br label %91

91:                                               ; preds = %79, %76, %5
  %92 = xor i1 %15, true
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %93 = zext i1 %92 to i32
  br label %260

94:                                               ; preds = %2
  %95 = and i32 %1, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %0, align 8
  %99 = or i32 %98, 12
  store i32 %99, ptr %0, align 8
  br label %245

100:                                              ; preds = %94
  %101 = and i32 %1, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 18
  %105 = load i8, ptr %104, align 4, !range !12
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %108 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %109, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 16) #9, !srcloc !9
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, ptr %0, align 8
  %113 = or i32 %112, 16
  store i32 %113, ptr %0, align 8
  br label %245

114:                                              ; preds = %100
  %115 = and i32 %1, 16
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, -1
  store i32 %120, ptr %118, align 4
  %121 = load i32, ptr %0, align 8
  %122 = or i32 %121, 4
  store i32 %122, ptr %0, align 8
  br label %245

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 1
  %127 = load i16, ptr %126, align 2
  %128 = and i16 %127, 1
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %198, label %130

130:                                              ; preds = %123
  %131 = and i32 %1, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %245, label %133

133:                                              ; preds = %130
  %134 = and i32 %1, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = tail call fastcc zeroext i1 @rcar_i2c_dma(ptr noundef %0) #9
  %138 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 7
  %139 = load i32, ptr %138, align 8
  br label %159

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 7
  %142 = load i32, ptr %141, align 8
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 2
  %144 = load i16, ptr %143, align 4
  %145 = zext i16 %144 to i32
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i8, ptr %149, i32 36
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %141, align 8
  %156 = getelementptr i8, ptr %154, i32 %155
  store i8 %152, ptr %156, align 1
  %157 = load i32, ptr %141, align 8
  %158 = add i32 %157, 1
  store i32 %158, ptr %141, align 8
  br label %159

159:                                              ; preds = %147, %140, %136
  %160 = phi i32 [ %142, %140 ], [ %158, %147 ], [ %139, %136 ]
  %161 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 7
  %162 = add i32 %160, 1
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 2
  %164 = load i16, ptr %163, align 4
  %165 = zext i16 %164 to i32
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %159
  %168 = load i32, ptr %0, align 8
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %171 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 4
  br i1 %170, label %175, label %174

174:                                              ; preds = %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 138) #9, !srcloc !9
  br label %178

175:                                              ; preds = %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 137) #9, !srcloc !9
  %176 = load i32, ptr %0, align 8
  %177 = or i32 %176, 536870912
  store i32 %177, ptr %0, align 8
  br label %178

178:                                              ; preds = %175, %174, %159
  %179 = load i32, ptr %161, align 8
  %180 = load i16, ptr %163, align 4
  %181 = zext i16 %180 to i32
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load i32, ptr %0, align 8
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load ptr, ptr %124, align 8
  %189 = getelementptr %struct.i2c_msg, ptr %188, i32 1
  store ptr %189, ptr %124, align 8
  %190 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, -1
  store i32 %192, ptr %190, align 4
  %193 = and i32 %184, -268435456
  store i32 %193, ptr %0, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %0) #9
  br label %245

194:                                              ; preds = %183, %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %195 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr i8, ptr %196, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 124) #9, !srcloc !9
  br label %245

198:                                              ; preds = %123
  %199 = and i32 %1, 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %245, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 7
  %203 = load i32, ptr %202, align 8
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = tail call fastcc zeroext i1 @rcar_i2c_dma(ptr noundef %0) #9
  br i1 %206, label %245, label %207

207:                                              ; preds = %205
  %208 = load i32, ptr %202, align 8
  br label %209

209:                                              ; preds = %207, %201
  %210 = phi i32 [ %208, %207 ], [ %203, %201 ]
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 2
  %212 = load i16, ptr %211, align 4
  %213 = zext i16 %212 to i32
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr i8, ptr %217, i32 %210
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %221 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr i8, ptr %222, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %220) #9, !srcloc !9
  %224 = load i32, ptr %202, align 8
  %225 = add i32 %224, 1
  store i32 %225, ptr %202, align 8
  br label %241

226:                                              ; preds = %209
  %227 = load i32, ptr %0, align 8
  %228 = and i32 %227, 1
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %231 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr i8, ptr %232, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 138) #9, !srcloc !9
  br label %241

234:                                              ; preds = %226
  %235 = load ptr, ptr %124, align 8
  %236 = getelementptr %struct.i2c_msg, ptr %235, i32 1
  store ptr %236, ptr %124, align 8
  %237 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 4
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, -1
  store i32 %239, ptr %237, align 4
  %240 = and i32 %227, -268435456
  store i32 %240, ptr %0, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %0) #9
  br label %245

241:                                              ; preds = %230, %215
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %242 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 118) #9, !srcloc !9
  br label %245

245:                                              ; preds = %241, %234, %205, %198, %194, %187, %130, %117, %111, %97
  %246 = load i32, ptr %0, align 8
  %247 = and i32 %246, 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %245
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %250 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr i8, ptr %251, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %253 = load ptr, ptr %250, align 4
  %254 = getelementptr i8, ptr %253, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 0) #9, !srcloc !9
  %255 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 18
  %256 = load i8, ptr %255, align 4, !range !12
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %259, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %260

260:                                              ; preds = %258, %249, %245, %91
  %261 = phi i32 [ %93, %91 ], [ 1, %249 ], [ 1, %258 ], [ 1, %245 ]
  ret i32 %261
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcar_i2c_dma(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 14
  %10 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 13
  %11 = select i1 %7, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 18
  %14 = load i8, ptr %13, align 4, !range !12
  %15 = icmp ne i8 %14, 0
  %16 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %103, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = icmp ult i16 %20, 8
  %22 = and i16 %5, 512
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %103, label %25

25:                                               ; preds = %18
  br i1 %7, label %33, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %103

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %37

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 1
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ -1, %33 ], [ -2, %30 ]
  %39 = phi ptr [ %36, %33 ], [ %32, %30 ]
  %40 = zext i16 %20 to i32
  %41 = add nsw i32 %38, %40
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #9
  %46 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %58, !prof !15

49:                                               ; preds = %37
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %50 = tail call ptr @dev_driver_string(ptr noundef %44) #9
  %51 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load ptr, ptr %44, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi ptr [ %55, %54 ], [ %52, %49 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %50, ptr noundef %57) #9
  br label %58

58:                                               ; preds = %56, %37
  br i1 %45, label %103, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr @mem_map, align 4
  %61 = ptrtoint ptr %39 to i32
  %62 = add i32 %61, 1073741824
  %63 = lshr i32 %62, 12
  %64 = getelementptr %struct.page, ptr %60, i32 %63
  %65 = and i32 %61, 4095
  %66 = tail call i32 @dma_map_page_attrs(ptr noundef %44, ptr noundef %64, i32 noundef %65, i32 noundef %41, i32 noundef %8, i32 noundef 0) #9
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %103, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15
  %70 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15, i32 4
  store i32 %41, ptr %70, align 8
  %71 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15, i32 3
  store i32 %66, ptr %71, align 4
  %72 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 16
  store i32 %8, ptr %72, align 4
  %73 = icmp eq ptr %12, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %12, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 39
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call ptr %79(ptr noundef nonnull %12, ptr noundef %69, i32 noundef 1, i32 noundef %8, i32 noundef 3, ptr noundef null) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %77, %74, %68
  tail call fastcc void @rcar_i2c_cleanup_dma(ptr noundef %0, i1 noundef zeroext false)
  br label %103

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %82, i32 0, i32 6
  store ptr @rcar_i2c_dma_callback, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %82, i32 0, i32 8
  store ptr %0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %82, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 %89(ptr noundef nonnull %82) #9
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  tail call fastcc void @rcar_i2c_cleanup_dma(ptr noundef %0, i1 noundef zeroext false)
  br label %103

93:                                               ; preds = %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %94 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 60
  br i1 %7, label %98, label %97

97:                                               ; preds = %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 2) #9, !srcloc !9
  br label %99

98:                                               ; preds = %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 1) #9, !srcloc !9
  br label %99

99:                                               ; preds = %98, %97
  %100 = load ptr, ptr %12, align 4
  %101 = getelementptr inbounds %struct.dma_device, ptr %100, i32 0, i32 50
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef nonnull %12) #9
  br label %103

103:                                              ; preds = %99, %92, %84, %59, %58, %26, %18, %1
  %104 = phi i1 [ false, %92 ], [ true, %99 ], [ false, %84 ], [ false, %26 ], [ false, %18 ], [ false, %1 ], [ false, %59 ], [ false, %58 ]
  ret i1 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_i2c_cleanup_dma(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 13
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 4
  br i1 %1, label %10, label %24

10:                                               ; preds = %2
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = tail call i32 %13(ptr noundef %9) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 48
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void %21(ptr noundef %9) #9
  br label %24

24:                                               ; preds = %23, %18, %15, %10, %2
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = load i32, ptr %3, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %32, i32 noundef 0) #9
  %33 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i32, ptr %3, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, ptr %0, align 8
  %41 = or i32 %40, 1073741824
  store i32 %41, ptr %0, align 8
  br label %42

42:                                               ; preds = %39, %36, %24
  store i32 3, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %43 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_i2c_dma_callback(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, %3
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 13
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 15, i32 3
  %18 = load i32, ptr %17, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %18, i32 noundef %3, i32 noundef %8, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, ptr %0, align 8
  %27 = or i32 %26, 1073741824
  store i32 %27, ptr %0, align 8
  br label %28

28:                                               ; preds = %25, %22, %1
  store i32 3, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %29 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #9, !srcloc !9
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_i2c_prepare_msg(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, ptr %0, align 8
  %14 = or i32 %13, 1
  store i32 %14, ptr %0, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i16, ptr %3, align 4
  %17 = zext i16 %16 to i32
  %18 = shl nuw nsw i32 %17, 1
  %19 = load i16, ptr %4, align 2
  %20 = and i16 %19, 1
  %21 = zext i16 %20 to i32
  %22 = and i32 %18, 254
  %23 = or i32 %22, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #9, !srcloc !9
  %27 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 18
  %28 = load i8, ptr %27, align 4, !range !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = select i1 %7, i32 121, i32 115
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !9
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 137) #9, !srcloc !9
  br label %54

43:                                               ; preds = %34
  %44 = and i32 %35, 536870912
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = and i32 %35, -536870913
  store i32 %47, ptr %0, align 8
  br label %51

48:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %49 = load ptr, ptr %24, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 137) #9, !srcloc !9
  br label %51

51:                                               ; preds = %48, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %52 = load ptr, ptr %24, align 4
  %53 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #9, !srcloc !9
  br label %54

54:                                               ; preds = %51, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_master_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 2, i32 9, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 18
  store i8 0, ptr %10, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  %12 = tail call fastcc i32 @rcar_i2c_bus_barrier(ptr noundef %7)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %159, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load i32, ptr %7, align 8
  %20 = or i32 %19, 1073741824
  store i32 %20, ptr %7, align 8
  %21 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 17
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %48, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @reset_control_reset(ptr noundef %22) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = tail call i64 @ktime_get() #9
  %29 = add i64 %28, 100000
  %30 = load ptr, ptr %21, align 8
  %31 = tail call i32 @reset_control_status(ptr noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %40, %27
  %34 = tail call i64 @ktime_get() #9
  %35 = icmp sgt i64 %34, %29
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load ptr, ptr %21, align 8
  %38 = tail call i32 @reset_control_status(ptr noundef %37) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %48

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #9
  %42 = load ptr, ptr %21, align 8
  %43 = tail call i32 @reset_control_status(ptr noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %33

45:                                               ; preds = %40, %36, %27
  %46 = load i32, ptr %7, align 8
  %47 = and i32 %46, -1073741825
  store i32 %47, ptr %7, align 8
  br label %48

48:                                               ; preds = %45, %36, %24, %18, %14
  tail call fastcc void @rcar_i2c_init(ptr noundef %7)
  %49 = icmp sgt i32 %2, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 14
  %52 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 13
  %53 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 12
  %54 = getelementptr inbounds i8, ptr %4, i32 4
  %55 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  %56 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  %57 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  br label %58

58:                                               ; preds = %93, %50
  %59 = phi i32 [ 0, %50 ], [ %94, %93 ]
  %60 = getelementptr %struct.i2c_msg, ptr %1, i32 %59, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  %64 = select i1 %63, ptr %52, ptr %51
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, inttoptr (i32 -517 to ptr)
  br i1 %66, label %67, label %93

67:                                               ; preds = %58
  %68 = load ptr, ptr %8, align 4
  %69 = load ptr, ptr %53, align 4
  %70 = load i32, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %71 = select i1 %63, ptr @.str.10, ptr @.str.11
  %72 = call ptr @dma_request_chan(ptr noundef %68, ptr noundef nonnull %71) #9
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %89, label %74

74:                                               ; preds = %67
  %75 = add i32 %70, 36
  %76 = select i1 %63, i32 1, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %54, i8 0, i32 44, i1 false) #9
  store i32 %76, ptr %4, align 4
  %77 = select i1 %63, ptr %56, ptr %54
  %78 = select i1 %63, ptr %57, ptr %55
  store i32 %75, ptr %77, align 4
  store i32 1, ptr %78, align 4
  %79 = load ptr, ptr %72, align 4
  %80 = getelementptr inbounds %struct.dma_device, ptr %79, i32 0, i32 44
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = call i32 %81(ptr noundef %72, ptr noundef nonnull %4) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83, %74
  %87 = phi i32 [ %84, %83 ], [ -38, %74 ]
  call void @dma_release_channel(ptr noundef %72) #9
  %88 = inttoptr i32 %87 to ptr
  br label %89

89:                                               ; preds = %86, %83, %67
  %90 = phi ptr [ %88, %86 ], [ %72, %67 ], [ %72, %83 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  br i1 %63, label %92, label %91

91:                                               ; preds = %89
  store ptr %90, ptr %51, align 4
  br label %93

92:                                               ; preds = %89
  store ptr %90, ptr %52, align 8
  br label %93

93:                                               ; preds = %92, %91, %58
  %94 = add nuw nsw i32 %59, 1
  %95 = icmp eq i32 %94, %2
  br i1 %95, label %96, label %58

96:                                               ; preds = %93, %48
  %97 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 3
  store ptr %1, ptr %97, align 8
  %98 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 4
  store i32 %2, ptr %98, align 4
  %99 = load i32, ptr %7, align 8
  %100 = and i32 %99, -268435456
  %101 = or i32 %100, 2
  store i32 %101, ptr %7, align 8
  call fastcc void @rcar_i2c_prepare_msg(ptr noundef %7)
  %102 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %103 = load i32, ptr %102, align 4
  %104 = mul i32 %103, %2
  %105 = load i32, ptr %7, align 8
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = icmp ne i32 %104, 0
  %110 = select i1 %108, i1 true, i1 %109
  %111 = select i1 %110, i32 %104, i32 1
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %107, i1 true, i1 %112
  br i1 %113, label %140, label %114

114:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %115 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 6
  %116 = call i32 @prepare_to_wait_event(ptr noundef %115, ptr noundef nonnull %5, i32 noundef 2) #9
  %117 = load i32, ptr %7, align 8
  %118 = and i32 %117, 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = select i1 %120, i1 true, i1 %109
  %122 = select i1 %121, i32 %104, i32 1
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %119, i1 true, i1 %123
  br i1 %124, label %138, label %125

125:                                              ; preds = %125, %114
  %126 = phi i32 [ %135, %125 ], [ %122, %114 ]
  %127 = call i32 @schedule_timeout(i32 noundef %126) #9
  %128 = call i32 @prepare_to_wait_event(ptr noundef %115, ptr noundef nonnull %5, i32 noundef 2) #9
  %129 = load i32, ptr %7, align 8
  %130 = and i32 %129, 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = icmp ne i32 %127, 0
  %134 = select i1 %132, i1 true, i1 %133
  %135 = select i1 %134, i32 %127, i32 1
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %131, i1 true, i1 %136
  br i1 %137, label %138, label %125

138:                                              ; preds = %125, %114
  %139 = phi i32 [ %122, %114 ], [ %135, %125 ]
  call void @finish_wait(ptr noundef %115, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %140

140:                                              ; preds = %138, %96
  %141 = phi i32 [ %111, %96 ], [ %139, %138 ]
  %142 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %7, i32 0, i32 16
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  call fastcc void @rcar_i2c_cleanup_dma(ptr noundef %7, i1 noundef zeroext true)
  br label %146

146:                                              ; preds = %145, %140
  %147 = icmp eq i32 %141, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  call fastcc void @rcar_i2c_init(ptr noundef %7)
  br label %159

149:                                              ; preds = %146
  %150 = load i32, ptr %7, align 8
  %151 = and i32 %150, 16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = and i32 %150, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, ptr %98, align 4
  %158 = sub i32 %2, %157
  br label %159

159:                                              ; preds = %156, %153, %149, %148, %3
  %160 = phi i32 [ %12, %3 ], [ %158, %156 ], [ -110, %148 ], [ -6, %149 ], [ -11, %153 ]
  %161 = call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #9
  %162 = icmp slt i32 %160, 0
  %163 = icmp ne i32 %160, -6
  %164 = and i1 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %160, i32 noundef %166) #10
  br label %167

167:                                              ; preds = %165, %159
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_master_xfer_atomic(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 2, i32 9, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 18
  store i8 1, ptr %8, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %10 = tail call fastcc i32 @rcar_i2c_bus_barrier(ptr noundef %5)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %101, label %12

12:                                               ; preds = %3
  tail call fastcc void @rcar_i2c_init(ptr noundef %5)
  %13 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 3
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 4
  store i32 %2, ptr %14, align 4
  %15 = load i32, ptr %5, align 8
  %16 = and i32 %15, -268435456
  %17 = or i32 %16, 2
  store i32 %17, ptr %5, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %5)
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %2
  %22 = add i32 %21, %18
  %23 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 10
  br label %25

25:                                               ; preds = %82, %12
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %29 = load ptr, ptr %13, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  %34 = select i1 %33, i32 121, i32 115
  %35 = and i32 %34, %28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %25
  %38 = load i32, ptr %24, align 4
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32, ptr %5, align 8
  %42 = and i32 %41, 536870912
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47, !prof !13

44:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %23, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 136) #9, !srcloc !9
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %51 = load i8, ptr %8, align 4, !range !12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load ptr, ptr %23, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %57 = and i32 %56, %50
  br label %79

58:                                               ; preds = %37
  %59 = load ptr, ptr %23, align 4
  %60 = getelementptr i8, ptr %59, i32 12
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %62 = load i8, ptr %8, align 4, !range !12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load ptr, ptr %23, align 4
  %66 = getelementptr i8, ptr %65, i32 20
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %68 = and i32 %67, %61
  br label %69

69:                                               ; preds = %64, %58
  %70 = phi i32 [ %61, %58 ], [ %68, %64 ]
  %71 = load i32, ptr %5, align 8
  %72 = and i32 %71, 536870912
  %73 = icmp eq i32 %72, 0
  %74 = icmp ne i32 %70, 0
  %75 = select i1 %73, i1 %74, i1 false, !prof !13
  br i1 %75, label %76, label %79, !prof !13

76:                                               ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %77 = load ptr, ptr %23, align 4
  %78 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 136) #9, !srcloc !9
  br label %79

79:                                               ; preds = %76, %69, %53, %47
  %80 = phi i32 [ %50, %47 ], [ %57, %53 ], [ %70, %69 ], [ %70, %76 ]
  %81 = tail call fastcc i32 @rcar_i2c_irq(ptr noundef %5, i32 noundef %80) #9
  br label %82

82:                                               ; preds = %79, %25
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = sub i32 %22, %83
  %85 = icmp sgt i32 %84, -1
  %86 = load i32, ptr %5, align 8
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i1 %85, i1 false
  br i1 %89, label %25, label %90

90:                                               ; preds = %82
  br i1 %85, label %92, label %91

91:                                               ; preds = %90
  tail call fastcc void @rcar_i2c_init(ptr noundef %5)
  br label %101

92:                                               ; preds = %90
  %93 = and i32 %86, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = and i32 %86, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, ptr %14, align 4
  %100 = sub i32 %2, %99
  br label %101

101:                                              ; preds = %98, %95, %92, %91, %3
  %102 = phi i32 [ %10, %3 ], [ %100, %98 ], [ -110, %91 ], [ -6, %92 ], [ -11, %95 ]
  %103 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #9
  %104 = icmp slt i32 %102, 0
  %105 = icmp ne i32 %102, -6
  %106 = and i1 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %102, i32 noundef %108) #10
  br label %109

109:                                              ; preds = %107, %101
  ret i32 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rcar_i2c_func(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 268435456
  %6 = or i32 %5, 251527209
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_reg_slave(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 2, i32 9, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #9
  store ptr %0, ptr %6, align 8
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %27 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 12) #9, !srcloc !9
  br label %28

28:                                               ; preds = %13, %9, %1
  %29 = phi i32 [ 0, %13 ], [ -16, %1 ], [ -97, %9 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_unreg_slave(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !15

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 950, i32 noundef 9, ptr noundef null) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 19
  %12 = load i32, ptr %11, align 8
  tail call void @disable_irq(i32 noundef %12) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %13 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !9
  %18 = load i32, ptr %11, align 8
  tail call void @enable_irq(i32 noundef %18) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 8) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !9
  store ptr null, ptr %6, align 8
  %22 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %5, i32 0, i32 2, i32 9, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_i2c_bus_barrier(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 2, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  %6 = tail call i64 @ktime_get() #9
  %7 = mul nsw i64 %5, 1000
  %8 = add i64 %7, %6
  %9 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  %16 = icmp eq i32 %4, 0
  br label %17

17:                                               ; preds = %21, %15
  br i1 %16, label %21, label %18

18:                                               ; preds = %17
  %19 = tail call i64 @ktime_get() #9
  %20 = icmp sgt i64 %19, %8
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %17
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %17

27:                                               ; preds = %18
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 9
  store i8 -16, ptr %34, align 8
  %35 = tail call i32 @i2c_recover_bus(ptr noundef %2) #9
  br label %36

36:                                               ; preds = %33, %27, %21, %1
  %37 = phi i32 [ %35, %33 ], [ 0, %27 ], [ 0, %1 ], [ 0, %21 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_i2c_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 128) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !9
  %9 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !9
  %13 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 15) #9, !srcloc !9
  br label %19

19:                                               ; preds = %16, %1
  ret void
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
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_get_scl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_i2c_set_scl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 9
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, -65
  %9 = select i1 %5, i8 0, i8 64
  %10 = or i8 %8, %9
  store i8 %10, ptr %6, align 8
  %11 = zext i8 %10 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_i2c_set_sda(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 9
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, -33
  %9 = select i1 %5, i8 0, i8 32
  %10 = or i8 %8, %9
  store i8 %10, ptr %6, align 8
  %11 = zext i8 %10 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_get_bus_free(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_free_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #9
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #9
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #9
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #9
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #9
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
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2154376673}
!9 = !{i64 5071548}
!10 = !{i64 5071966}
!11 = !{i64 2154377124}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2154378639}
!17 = !{i64 2154378967}
