; ModuleID = '/llk/IR/drivers/rtc/rtc-sun6i.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sun6i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun6i_rtc_dev = type { ptr, ptr, ptr, i32, i32, %struct.clk_hw, ptr, ptr, ptr, %struct.spinlock }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sun6i_rtc_clk_data = type { i32, i24 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__of_table_sun6i_a31_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_a23_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_h3_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun50i_h5_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun50i_h6_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_r40_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_sun8i_v3_rtc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3_rtc_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_rtc_sun6i__210_773_sun6i_rtc_driver_init6 = internal global ptr @sun6i_rtc_driver_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [5 x i8] c"losc\00", align 1
@sun6i_rtc_osc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_rtc_osc_recalc_rate, ptr null, ptr null, ptr @sun6i_rtc_osc_set_parent, ptr @sun6i_rtc_osc_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.sun6i_rtc_clk_init.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr @.str, ptr @sun6i_rtc_osc_ops, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rtc-int-osc\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"osc32k-out\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\012Can't map RTC registers\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@sun6i_rtc = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\012Couldn't register the internal oscillator\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\012Couldn't register the LOSC clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\012Couldn't register the LOSC external gate\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@sun6i_a31_rtc_data = internal constant { i32, i8, i8, i8 } { i32 667000, i8 0, i8 0, i8 1 }, align 4
@sun8i_a23_rtc_data = internal constant { i32, i8, i8, i8 } { i32 667000, i8 0, i8 0, i8 3 }, align 4
@sun8i_h3_rtc_data = internal constant { i32, i8, i8, i8 } { i32 16000000, i8 32, i8 0, i8 7 }, align 4
@sun50i_h6_rtc_data = internal constant { i32, i8, i8, i8 } { i32 16000000, i8 32, i8 0, i8 31 }, align 4
@sun8i_r40_rtc_data = internal constant { i32, i8, i8, i8 } { i32 16000000, i8 0, i8 2, i8 0 }, align 4
@sun8i_v3_rtc_data = internal constant { i32, i8, i8, i8 } { i32 32000, i8 0, i8 0, i8 2 }, align 4
@sun6i_rtc_driver = internal global %struct.platform_driver { ptr @sun6i_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"sun6i-rtc\00", align 1
@sun6i_rtc_dt_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun6i_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sun6i_rtc_suspend, ptr @sun6i_rtc_resume, ptr @sun6i_rtc_suspend, ptr @sun6i_rtc_resume, ptr @sun6i_rtc_suspend, ptr @sun6i_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@sun6i_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @sun6i_rtc_gettime, ptr @sun6i_rtc_settime, ptr @sun6i_rtc_getalarm, ptr @sun6i_rtc_setalarm, ptr null, ptr @sun6i_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"RTC enabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"rtc is still busy.\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Failed to set rtc time.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.22 = private unnamed_addr constant [25 x i8] c"Date to set in the past\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_rtc_sun6i__210_773_sun6i_rtc_driver_init6, ptr @__of_table_sun50i_h5_rtc_clk, ptr @__of_table_sun50i_h6_rtc_clk, ptr @__of_table_sun6i_a31_rtc_clk, ptr @__of_table_sun8i_a23_rtc_clk, ptr @__of_table_sun8i_h3_rtc_clk, ptr @__of_table_sun8i_r40_rtc_clk, ptr @__of_table_sun8i_v3_rtc_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_a31_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun6i_a31_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_a23_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun8i_a23_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_h3_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun8i_h3_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun50i_h5_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun8i_h3_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun50i_h6_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun50i_h6_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_r40_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun8i_r40_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_v3_rtc_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #8
  tail call fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef nonnull @sun8i_v3_rtc_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_rtc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sun6i_rtc_clk_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) @__const.sun6i_rtc_clk_init.init, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr @.str.1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr @.str.2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 48) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %106, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 16) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %106

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 9
  store i32 0, ptr %17, align 4
  %18 = icmp eq ptr %0, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %21, %19 ], [ @.str.9, %16 ]
  %24 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %23) #8
  %25 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 2
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %105

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 380272640) #8, !srcloc !10
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i32 [ 380272640, %34 ], [ 380239872, %29 ]
  %37 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %30, align 4
  %41 = and i32 %40, 524288
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 1, i32 17
  %44 = or i32 %43, %36
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i32 [ %36, %35 ], [ %44, %39 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %46) #8, !srcloc !10
  store ptr %8, ptr @sun6i_rtc, align 4
  %47 = load i32, ptr %30, align 4
  %48 = and i32 %47, 262144
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 2) #8
  %52 = load ptr, ptr %4, align 4
  %53 = load ptr, ptr %11, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi ptr [ %53, %50 ], [ %1, %45 ]
  %56 = phi ptr [ %52, %50 ], [ @.str.1, %45 ]
  %57 = load i32, ptr %55, align 4
  %58 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %56, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %57, i32 noundef 300000000, i32 noundef 0) #8
  %59 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 6
  store ptr %58, ptr %59, align 8
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %105

63:                                               ; preds = %54
  %64 = call ptr @clk_hw_get_name(ptr noundef %58) #8
  store ptr %64, ptr %6, align 8
  %65 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %66 = getelementptr inbounds [2 x ptr], ptr %6, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 5
  %68 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 5, i32 2
  store ptr %3, ptr %68, align 4
  %69 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %6, ptr %69, align 4
  %70 = call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %71 = trunc i32 %70 to i8
  %72 = add i8 %71, 1
  %73 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 %72, ptr %73, align 4
  %74 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %75 = call ptr @clk_register(ptr noundef null, ptr noundef %67) #8
  %76 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 7
  store ptr %75, ptr %76, align 4
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %101, label %78

78:                                               ; preds = %63
  %79 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1) #8
  %80 = load ptr, ptr %5, align 4
  %81 = load ptr, ptr %3, align 4
  %82 = load ptr, ptr %25, align 8
  %83 = getelementptr i8, ptr %82, i32 96
  %84 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %80, ptr noundef %81, i32 noundef 0, ptr noundef %83, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %17) #8
  %85 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %8, i32 0, i32 8
  store ptr %84, ptr %85, align 8
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %101, label %87

87:                                               ; preds = %78
  store i32 2, ptr %13, align 8
  %88 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %13, i32 0, i32 1
  store ptr %67, ptr %88, align 4
  %89 = call ptr @__clk_get_hw(ptr noundef %84) #8
  %90 = getelementptr %struct.clk_hw_onecell_data, ptr %13, i32 2
  store ptr %89, ptr %90, align 8
  %91 = load ptr, ptr %11, align 4
  %92 = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 262144
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %59, align 8
  %98 = getelementptr %struct.clk_hw_onecell_data, ptr %13, i32 3
  store ptr %97, ptr %98, align 4
  store i32 3, ptr %13, align 8
  br label %99

99:                                               ; preds = %96, %87
  %100 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %13) #8
  br label %106

101:                                              ; preds = %78, %63
  %102 = phi ptr [ @.str.7, %63 ], [ @.str.8, %78 ]
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %102) #9
  %104 = load ptr, ptr %59, align 8
  call void @clk_hw_unregister_fixed_rate(ptr noundef %104) #8
  br label %105

105:                                              ; preds = %101, %61, %27
  call void @kfree(ptr noundef nonnull %13) #8
  br label %106

106:                                              ; preds = %105, %99, %15, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_osc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = udiv i32 %1, %13
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %16, %15 ], [ %1, %8 ]
  %19 = and i32 %12, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %25 = and i32 %24, 31
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %25, %21 ], [ %5, %17 ]
  %28 = add nuw i32 %27, 1
  %29 = udiv i32 %18, %28
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i32 [ %29, %26 ], [ %1, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_osc_set_parent(ptr noundef %0, i8 noundef zeroext %1) #6 {
  %3 = icmp ugt i8 %1, 1
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 24
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %10 = and i32 %9, -380239874
  %11 = icmp eq i8 %1, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = or i32 %14, 380239872
  %16 = getelementptr i8, ptr %0, i32 -16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sun6i_rtc_clk_data, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 524288
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %15, -17
  %23 = select i1 %11, i32 0, i32 16
  %24 = or i32 %22, %23
  %25 = select i1 %21, i32 %15, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  br label %27

27:                                               ; preds = %4, %2
  %28 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sun6i_rtc_osc_get_parent(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_probe(ptr noundef %0) #6 {
  %2 = load ptr, ptr @sun6i_rtc, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 48, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %6, i32 0, i32 9
  store i32 0, ptr %9, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %6, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %73

15:                                               ; preds = %8, %1
  %16 = phi ptr [ %2, %1 ], [ %6, %8 ]
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %17, align 8
  %18 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %19 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %16, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %24, %21 ]
  %30 = tail call i32 @devm_request_threaded_irq(ptr noundef %22, i32 noundef %18, ptr noundef nonnull @sun6i_rtc_alarmirq, ptr noundef null, i32 noundef 0, ptr noundef %29, ptr noundef nonnull %16) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.17) #9
  br label %73

33:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %34 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %16, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr i8, ptr %41, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %34, align 4
  %44 = getelementptr i8, ptr %43, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr i8, ptr %47, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %49 = load ptr, ptr %34, align 4
  %50 = getelementptr i8, ptr %49, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #8, !srcloc !10
  %51 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %16, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @clk_prepare(ptr noundef %52) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = tail call i32 @clk_enable(ptr noundef %52) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @clk_unprepare(ptr noundef %52) #8
  br label %59

59:                                               ; preds = %58, %55, %33
  %60 = tail call i32 @device_init_wakeup(ptr noundef %22, i1 noundef zeroext true) #8
  %61 = tail call ptr @devm_rtc_allocate_device(ptr noundef %22) #8
  store ptr %61, ptr %16, align 4
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = ptrtoint ptr %61 to i32
  br label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtc_device, ptr %61, i32 0, i32 3
  store ptr @sun6i_rtc_ops, ptr %66, align 8
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr inbounds %struct.rtc_device, ptr %67, i32 0, i32 23
  store i64 2019686399, ptr %68, align 8
  %69 = load ptr, ptr %16, align 4
  %70 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %69) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.18) #9
  br label %73

73:                                               ; preds = %72, %65, %63, %32, %15, %13, %4
  %74 = phi i32 [ %30, %32 ], [ %64, %63 ], [ 0, %72 ], [ %14, %13 ], [ -12, %4 ], [ %18, %15 ], [ %70, %65 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_alarmirq(i32 noundef %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = or i32 %7, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !10
  %14 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %14, i32 noundef 1, i32 noundef 160) #8
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 1, %10 ], [ 0, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %17 = load i16, ptr %3, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_gettime(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %4, i32 0, i32 2
  br label %6

6:                                                ; preds = %22, %2
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  %16 = icmp eq i32 %9, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %21 = icmp eq i32 %12, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %6
  br label %6

23:                                               ; preds = %17
  %24 = and i32 %12, 63
  store i32 %24, ptr %1, align 4
  %25 = lshr i32 %12, 8
  %26 = and i32 %25, 63
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = lshr i32 %12, 16
  %29 = and i32 %28, 31
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = and i32 %9, 31
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = lshr i32 %9, 8
  %34 = and i32 %33, 15
  %35 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %36 = lshr i32 %9, 16
  %37 = and i32 %36, 63
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %39 = add nsw i32 %34, -1
  store i32 %39, ptr %35, align 4
  %40 = add nuw nsw i32 %37, 70
  store i32 %40, ptr %38, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_settime(ptr noundef %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -70
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 31
  %14 = shl i32 %10, 8
  %15 = and i32 %14, 3840
  %16 = shl i32 %7, 16
  %17 = and i32 %16, 4128768
  %18 = or i32 %15, %17
  %19 = or i32 %18, %13
  %20 = add i32 %6, 1900
  %21 = and i32 %6, 3
  %22 = icmp eq i32 %21, 0
  %23 = urem i32 %20, 100
  %24 = icmp ne i32 %23, 0
  %25 = and i1 %22, %24
  %26 = urem i32 %20, 400
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  %29 = or i32 %19, 4194304
  %30 = select i1 %28, i32 %29, i32 %19
  %31 = load i32, ptr %1, align 4
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %4, i32 0, i32 2
  %38 = sub i32 -5, %36
  br label %39

39:                                               ; preds = %44, %2
  %40 = load ptr, ptr %37, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %42 = and i32 %41, 896
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %38, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %39, label %83

48:                                               ; preds = %39
  %49 = and i32 %31, 63
  %50 = shl i32 %33, 8
  %51 = and i32 %50, 16128
  %52 = or i32 %51, %49
  %53 = shl i32 %35, 16
  %54 = and i32 %53, 2031616
  %55 = or i32 %52, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %37, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !10
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = sub i32 -5, %58
  br label %60

60:                                               ; preds = %65, %48
  %61 = load ptr, ptr %37, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %63 = and i32 %62, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = add i32 %59, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %60, label %83

69:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %70 = load ptr, ptr %37, align 4
  %71 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %30) #8, !srcloc !10
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = sub i32 -5, %72
  br label %74

74:                                               ; preds = %79, %69
  %75 = load ptr, ptr %37, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = add i32 %73, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %74, label %83

83:                                               ; preds = %79, %65, %44
  %84 = phi ptr [ @.str.20, %79 ], [ @.str.20, %65 ], [ @.str.19, %44 ]
  %85 = phi i32 [ -110, %79 ], [ -110, %65 ], [ -16, %44 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %84) #9
  br label %86

86:                                               ; preds = %83, %74
  %87 = phi i32 [ %85, %83 ], [ 0, %74 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_getalarm(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %4, i32 0, i32 9
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  %14 = trunc i32 %10 to i8
  %15 = and i8 %14, 1
  store i8 %15, ptr %1, align 4
  %16 = trunc i32 %13 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %4, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %21, ptr noundef %22) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_setalarm(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #8
  %6 = getelementptr inbounds i8, ptr %3, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %5, i32 0, i32 2
  br label %8

8:                                                ; preds = %24, %2
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %23 = icmp eq i32 %14, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %8
  br label %8

25:                                               ; preds = %19
  %26 = and i32 %14, 63
  store i32 %26, ptr %3, align 4
  %27 = lshr i32 %14, 8
  %28 = and i32 %27, 63
  %29 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = lshr i32 %14, 16
  %31 = and i32 %30, 31
  %32 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = and i32 %11, 31
  %34 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = lshr i32 %11, 8
  %36 = and i32 %35, 15
  %37 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 4
  %38 = lshr i32 %11, 16
  %39 = and i32 %38, 63
  %40 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 5
  %41 = add nsw i32 %36, -1
  store i32 %41, ptr %37, align 4
  %42 = add nuw nsw i32 %39, 70
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %44 = tail call i64 @rtc_tm_to_time64(ptr noundef %43) #8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %3) #8
  %47 = trunc i64 %46 to i32
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22) #9
  br label %81

50:                                               ; preds = %25
  %51 = sub i32 %45, %47
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  call void @arm_heavy_mb() #8
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i8, ptr %52, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 1) #8, !srcloc !10
  %54 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %5, i32 0, i32 9
  %55 = call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  call void @arm_heavy_mb() #8
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr i8, ptr %58, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr i8, ptr %60, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #8, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #8, !srcloc !10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  call void @arm_heavy_mb() #8
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr i8, ptr %64, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %51) #8, !srcloc !10
  %66 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %5, i32 0, i32 4
  store i32 %45, ptr %66, align 4
  %67 = load i8, ptr %1, align 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  call void @arm_heavy_mb() #8
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr i8, ptr %70, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1) #8, !srcloc !10
  br label %72

72:                                               ; preds = %69, %50
  %73 = phi i32 [ 0, %69 ], [ 1, %50 ]
  %74 = call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  call void @arm_heavy_mb() #8
  %75 = load ptr, ptr %7, align 4
  %76 = getelementptr i8, ptr %75, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  call void @arm_heavy_mb() #8
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr i8, ptr %77, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %73) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  call void @arm_heavy_mb() #8
  %79 = load ptr, ptr %7, align 4
  %80 = getelementptr i8, ptr %79, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %73) #8, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %74) #8
  br label %81

81:                                               ; preds = %72, %49
  %82 = phi i32 [ -22, %49 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %7 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #8, !srcloc !10
  %10 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %6, i32 0, i32 9
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  br label %18

18:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_suspend(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #8
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_rtc_resume(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sun6i_rtc_dev, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #8
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2152583611}
!10 = !{i64 4266166}
!11 = !{i64 2152584110}
!12 = !{i64 4266584}
!13 = !{i64 2152576331}
!14 = !{i64 2152576757}
!15 = !{i64 2152580834}
!16 = !{i64 2152581370}
!17 = !{i64 2152578907}
!18 = !{i64 2152618570}
!19 = !{i64 2152618889}
!20 = !{i64 2152619208}
!21 = !{i64 2152619527}
!22 = !{i64 2152619846}
!23 = !{i64 2152620273}
!24 = !{i64 2152620752}
!25 = !{i64 2152621123}
!26 = !{i64 2152596750}
!27 = !{i64 2152597108}
!28 = !{i64 2148897844}
!29 = !{i64 2148893668}
!30 = !{i64 2148893743, i64 2148893770, i64 2148893817, i64 2148893839, i64 2148893867, i64 2148893887}
!31 = !{i64 2148920847}
!32 = !{i64 2152599722}
!33 = !{i64 2152600069}
!34 = !{i64 2152600416}
!35 = !{i64 2152600763}
!36 = !{i64 2152604825}
!37 = !{i64 2152606900}
!38 = !{i64 2152607861}
!39 = !{i64 2152601669}
!40 = !{i64 2152602016}
!41 = !{i64 2152597795}
!42 = !{i64 2152598527}
!43 = !{i64 2152598871}
!44 = !{i64 2152599224}
!45 = !{i64 2152604018}
!46 = !{i64 2152604344}
