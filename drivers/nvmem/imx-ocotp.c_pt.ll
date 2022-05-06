; ModuleID = '/llk/IR/drivers/nvmem/imx-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/imx-ocotp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ocotp_params = type { i32, i32, ptr, %struct.ocotp_ctrl_reg, i8 }
%struct.ocotp_ctrl_reg = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocotp_priv = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_nvmem_imx_ocotp__166_640_imx_ocotp_driver_init6 = internal global ptr @imx_ocotp_driver_init, section ".initcall6.init", align 4
@imx_ocotp_driver = internal global %struct.platform_driver { ptr @imx_ocotp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ocotp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx_ocotp_driver_exit = internal global ptr @imx_ocotp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [62 x i8] c"nvmem_imx_ocotp.author=Philipp Zabel <p.zabel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [62 x i8] c"nvmem_imx_ocotp.description=i.MX6/i.MX7 OCOTP fuse box driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [51 x i8] c"nvmem_imx_ocotp.file=drivers/nvmem/nvmem-imx-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [31 x i8] c"nvmem_imx_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"imx_ocotp\00", align 1
@imx_ocotp_dt_ids = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ull_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sll-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sll_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mq_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mp_params }, %struct.of_device_id zeroinitializer], align 4
@imx_ocotp_nvmem_config = internal global %struct.nvmem_config { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @imx_ocotp_read, ptr @imx_ocotp_write, ptr @imx_ocotp_cell_pp, i32 0, i32 4, i32 1, ptr null, i8 0, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"imx-ocotp\00", align 1
@ocotp_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ocotp_mutex, i64 12), ptr getelementptr (i8, ptr @ocotp_mutex, i64 12) } }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to prepare/enable ocotp clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"timeout during read setup\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"timeout during timing setup\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed write to locked region\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"timeout during data write\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"timeout during shadow register reload\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@imx6q_params = internal constant %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx6sl_params = internal constant %struct.ocotp_params { i32 64, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx6sx_params = internal constant %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx6ul_params = internal constant %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx6ull_params = internal constant %struct.ocotp_params { i32 64, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx7d_params = internal constant %struct.ocotp_params { i32 64, i32 4, ptr @imx_ocotp_set_imx7_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx6sll_params = internal constant %struct.ocotp_params { i32 128, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx7ulp_params = internal constant %struct.ocotp_params { i32 256, i32 0, ptr null, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 0 }, align 4
@imx8mq_params = internal constant %struct.ocotp_params { i32 256, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 1 }, align 4
@imx8mm_params = internal constant %struct.ocotp_params { i32 256, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 1 }, align 4
@imx8mn_params = internal constant %struct.ocotp_params { i32 256, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 255, i32 256, i32 512, i32 1024 }, i8 1 }, align 4
@imx8mp_params = internal constant %struct.ocotp_params { i32 384, i32 0, ptr @imx_ocotp_set_imx6_timing, %struct.ocotp_ctrl_reg { i32 511, i32 512, i32 1024, i32 2048 }, i8 1 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_imx_ocotp_driver_exit, ptr @__initcall__kmod_nvmem_imx_ocotp__166_640_imx_ocotp_driver_init6, ptr @imx_ocotp_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_ocotp_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ocotp_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_ocotp_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ocotp_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ocotp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %7 = getelementptr inbounds %struct.ocotp_priv, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %45

11:                                               ; preds = %5
  %12 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #9
  %13 = getelementptr inbounds %struct.ocotp_priv, ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %45

17:                                               ; preds = %11
  %18 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %19 = getelementptr inbounds %struct.ocotp_priv, ptr %3, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = load i32, ptr %18, align 4
  %21 = shl i32 %20, 2
  store i32 %21, ptr getelementptr inbounds (%struct.nvmem_config, ptr @imx_ocotp_nvmem_config, i32 0, i32 18), align 4
  store ptr %2, ptr @imx_ocotp_nvmem_config, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.nvmem_config, ptr @imx_ocotp_nvmem_config, i32 0, i32 21), align 4
  %22 = getelementptr inbounds %struct.ocotp_priv, ptr %3, i32 0, i32 4
  store ptr @imx_ocotp_nvmem_config, ptr %22, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %12) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = tail call i32 @clk_enable(ptr noundef %12) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %12) #9
  br label %29

29:                                               ; preds = %28, %25, %17
  %30 = load ptr, ptr %7, align 4
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.ocotp_params, ptr %31, i32 0, i32 3, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %38 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %33) #9, !srcloc !11
  br label %39

39:                                               ; preds = %37, %29
  %40 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %40) #9
  tail call void @clk_unprepare(ptr noundef %40) #9
  %41 = tail call ptr @devm_nvmem_register(ptr noundef %2, ptr noundef nonnull @imx_ocotp_nvmem_config) #9
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %43 = ptrtoint ptr %41 to i32
  %44 = select i1 %42, i32 %43, i32 0
  br label %45

45:                                               ; preds = %39, %15, %9, %1
  %46 = phi i32 [ %10, %9 ], [ %16, %15 ], [ %44, %39 ], [ -12, %1 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_ocotp_clr_err_if_set(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ocotp_params, ptr %5, i32 0, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #9, !srcloc !11
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ocotp_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = lshr i32 %1, 2
  %6 = and i32 %1, 3
  %7 = add nsw i32 %6, -1
  %8 = add i32 %7, %3
  %9 = or i32 %8, 3
  %10 = add i32 %9, 1
  %11 = lshr exact i32 %10, 2
  %12 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %14, %5
  %16 = tail call i32 @llvm.umin.i32(i32 %11, i32 %15)
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %95, label %19

19:                                               ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @ocotp_mutex) #9
  %20 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #9
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32 [ %22, %19 ], [ %25, %27 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #9
  %32 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.2) #11
  br label %93

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.ocotp_params, ptr %36, i32 0, i32 3, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ocotp_params, ptr %36, i32 0, i32 3, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, %38
  br label %42

42:                                               ; preds = %47, %33
  %43 = phi i32 [ 10000, %33 ], [ %48, %47 ]
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %45 = and i32 %44, %41
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !14
  %48 = add nsw i32 %43, -1
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %50, label %42

50:                                               ; preds = %47
  %51 = and i32 %44, %40
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 -110, i32 -1
  br label %62

54:                                               ; preds = %42
  %55 = icmp slt i32 %43, 0
  %56 = and i32 %44, %40
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 -110, i32 -1
  br i1 %55, label %62, label %59

59:                                               ; preds = %54
  %60 = add nuw nsw i32 %16, %5
  %61 = icmp eq i32 %16, 0
  br i1 %61, label %88, label %65

62:                                               ; preds = %54, %50
  %63 = phi i32 [ %53, %50 ], [ %58, %54 ]
  %64 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.3) #11
  br label %90

65:                                               ; preds = %84, %59
  %66 = phi ptr [ %85, %84 ], [ %17, %59 ]
  %67 = phi i32 [ %86, %84 ], [ %5, %59 ]
  %68 = load ptr, ptr %34, align 4
  %69 = getelementptr i8, ptr %68, i32 1024
  %70 = shl i32 %67, 4
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  store i32 %72, ptr %66, align 4
  %73 = icmp eq i32 %72, -1160070438
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load ptr, ptr %34, align 4
  %76 = load ptr, ptr %12, align 4
  %77 = getelementptr inbounds %struct.ocotp_params, ptr %76, i32 0, i32 3, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %80 = and i32 %79, %78
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %83 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %78) #9, !srcloc !11
  br label %84

84:                                               ; preds = %82, %74, %65
  %85 = getelementptr i8, ptr %66, i32 4
  %86 = add nuw nsw i32 %67, 1
  %87 = icmp ult i32 %86, %60
  br i1 %87, label %65, label %88

88:                                               ; preds = %84, %59
  %89 = getelementptr i8, ptr %17, i32 %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %89, i32 %3, i1 false)
  br label %90

90:                                               ; preds = %88, %62
  %91 = phi i32 [ 0, %88 ], [ %63, %62 ]
  %92 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %92) #9
  tail call void @clk_unprepare(ptr noundef %92) #9
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #9
  br label %93

93:                                               ; preds = %90, %31
  %94 = phi i32 [ %91, %90 ], [ %29, %31 ]
  tail call void @kfree(ptr noundef nonnull %17) #9
  br label %95

95:                                               ; preds = %93, %4
  %96 = phi i32 [ -12, %4 ], [ %94, %93 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ocotp_write(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvmem_config, ptr %6, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %3
  br i1 %9, label %10, label %210

10:                                               ; preds = %4
  %11 = urem i32 %1, %3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %210

13:                                               ; preds = %10
  tail call void @mutex_lock(ptr noundef nonnull @ocotp_mutex) #9
  %14 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %16, %13 ], [ %19, %21 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #9
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.2) #11
  br label %210

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ocotp_params, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0) #9
  %32 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr inbounds %struct.ocotp_params, ptr %34, i32 0, i32 3, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ocotp_params, ptr %34, i32 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %36
  br label %40

40:                                               ; preds = %45, %27
  %41 = phi i32 [ 10000, %27 ], [ %46, %45 ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %43 = and i32 %42, %39
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !14
  %46 = add nsw i32 %41, -1
  %47 = icmp eq i32 %41, 0
  br i1 %47, label %48, label %40

48:                                               ; preds = %45
  %49 = and i32 %42, %38
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 -110, i32 -1
  br label %57

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, 0
  %54 = and i32 %42, %38
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 -110, i32 -1
  br i1 %53, label %57, label %60

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %51, %48 ], [ %56, %52 ]
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.4) #11
  br label %205

60:                                               ; preds = %52
  %61 = load ptr, ptr %28, align 4
  %62 = getelementptr inbounds %struct.ocotp_params, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.nvmem_config, ptr %66, i32 0, i32 19
  %68 = load i32, ptr %67, align 4
  %69 = udiv i32 %1, %68
  %70 = udiv i32 %69, %63
  %71 = add i32 %63, 255
  %72 = and i32 %69, %71
  %73 = trunc i32 %72 to i8
  br label %76

74:                                               ; preds = %60
  %75 = lshr i32 %1, 2
  br label %76

76:                                               ; preds = %74, %65
  %77 = phi i32 [ %70, %65 ], [ %75, %74 ]
  %78 = phi i8 [ %73, %65 ], [ 0, %74 ]
  %79 = load ptr, ptr %32, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %81 = load ptr, ptr %28, align 4
  %82 = getelementptr inbounds %struct.ocotp_params, ptr %81, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = and i32 %77, 255
  %87 = and i32 %86, %83
  %88 = or i32 %87, %85
  %89 = or i32 %88, 1047986176
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %89) #9, !srcloc !11
  %91 = load ptr, ptr %28, align 4
  %92 = getelementptr inbounds %struct.ocotp_params, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %136, label %95

95:                                               ; preds = %76
  switch i8 %78, label %140 [
    i8 0, label %96
    i8 1, label %106
    i8 2, label %116
    i8 3, label %126
  ]

96:                                               ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %97 = load ptr, ptr %32, align 4
  %98 = getelementptr i8, ptr %97, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %32, align 4
  %100 = getelementptr i8, ptr %99, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %32, align 4
  %102 = getelementptr i8, ptr %101, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %103 = load i32, ptr %2, align 4
  %104 = load ptr, ptr %32, align 4
  %105 = getelementptr i8, ptr %104, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !11
  br label %140

106:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %107 = load i32, ptr %2, align 4
  %108 = load ptr, ptr %32, align 4
  %109 = getelementptr i8, ptr %108, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %110 = load ptr, ptr %32, align 4
  %111 = getelementptr i8, ptr %110, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %112 = load ptr, ptr %32, align 4
  %113 = getelementptr i8, ptr %112, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %114 = load ptr, ptr %32, align 4
  %115 = getelementptr i8, ptr %114, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 0) #9, !srcloc !11
  br label %140

116:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %117 = load ptr, ptr %32, align 4
  %118 = getelementptr i8, ptr %117, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %119 = load i32, ptr %2, align 4
  %120 = load ptr, ptr %32, align 4
  %121 = getelementptr i8, ptr %120, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %122 = load ptr, ptr %32, align 4
  %123 = getelementptr i8, ptr %122, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %124 = load ptr, ptr %32, align 4
  %125 = getelementptr i8, ptr %124, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 0) #9, !srcloc !11
  br label %140

126:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !30
  tail call void @arm_heavy_mb() #9
  %127 = load ptr, ptr %32, align 4
  %128 = getelementptr i8, ptr %127, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  tail call void @arm_heavy_mb() #9
  %129 = load ptr, ptr %32, align 4
  %130 = getelementptr i8, ptr %129, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %131 = load i32, ptr %2, align 4
  %132 = load ptr, ptr %32, align 4
  %133 = getelementptr i8, ptr %132, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %134 = load ptr, ptr %32, align 4
  %135 = getelementptr i8, ptr %134, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #9, !srcloc !11
  br label %140

136:                                              ; preds = %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %137 = load i32, ptr %2, align 4
  %138 = load ptr, ptr %32, align 4
  %139 = getelementptr i8, ptr %138, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #9, !srcloc !11
  br label %140

140:                                              ; preds = %136, %126, %116, %106, %96, %95
  %141 = load ptr, ptr %32, align 4
  %142 = load ptr, ptr %28, align 4
  %143 = getelementptr inbounds %struct.ocotp_params, ptr %142, i32 0, i32 3, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.ocotp_params, ptr %142, i32 0, i32 3, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = or i32 %146, %144
  br label %148

148:                                              ; preds = %153, %140
  %149 = phi i32 [ 10000, %140 ], [ %154, %153 ]
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %151 = and i32 %150, %147
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !14
  %154 = add nsw i32 %149, -1
  %155 = icmp eq i32 %149, 0
  br i1 %155, label %156, label %148

156:                                              ; preds = %153
  %157 = and i32 %150, %146
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %164

159:                                              ; preds = %148
  %160 = icmp slt i32 %149, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %159
  %162 = and i32 %150, %146
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161, %156
  %165 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.5) #11
  tail call fastcc void @imx_ocotp_clr_err_if_set(ptr noundef %0)
  br label %205

166:                                              ; preds = %161, %156
  %167 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.6) #11
  br label %205

168:                                              ; preds = %159
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 429496) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !35
  tail call void @arm_heavy_mb() #9
  %170 = load ptr, ptr %28, align 4
  %171 = getelementptr inbounds %struct.ocotp_params, ptr %170, i32 0, i32 3, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = load ptr, ptr %32, align 4
  %174 = getelementptr i8, ptr %173, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #9, !srcloc !11
  %175 = load ptr, ptr %28, align 4
  %176 = getelementptr inbounds %struct.ocotp_params, ptr %175, i32 0, i32 3, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %32, align 4
  %179 = getelementptr inbounds %struct.ocotp_params, ptr %175, i32 0, i32 3, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.ocotp_params, ptr %175, i32 0, i32 3, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = or i32 %180, %177
  %184 = or i32 %183, %182
  br label %185

185:                                              ; preds = %190, %168
  %186 = phi i32 [ 10000, %168 ], [ %191, %190 ]
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %188 = and i32 %187, %184
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !14
  %191 = add nsw i32 %186, -1
  %192 = icmp eq i32 %186, 0
  br i1 %192, label %193, label %185

193:                                              ; preds = %190
  %194 = and i32 %187, %182
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 -110, i32 -1
  br label %202

197:                                              ; preds = %185
  %198 = icmp slt i32 %186, 0
  %199 = and i32 %187, %182
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, i32 -110, i32 -1
  br i1 %198, label %202, label %205

202:                                              ; preds = %197, %193
  %203 = phi i32 [ %196, %193 ], [ %201, %197 ]
  %204 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.7) #11
  br label %205

205:                                              ; preds = %202, %197, %166, %164, %57
  %206 = phi i32 [ %58, %57 ], [ -1, %164 ], [ -110, %166 ], [ %203, %202 ], [ 0, %197 ]
  %207 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %207) #9
  tail call void @clk_unprepare(ptr noundef %207) #9
  tail call void @mutex_unlock(ptr noundef nonnull @ocotp_mutex) #9
  %208 = icmp slt i32 %206, 0
  %209 = select i1 %208, i32 %206, i32 %3
  br label %210

210:                                              ; preds = %205, %25, %10, %4
  %211 = phi i32 [ %23, %25 ], [ -22, %10 ], [ -22, %4 ], [ %209, %205 ]
  ret i32 %211
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ocotp_cell_pp(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) #3 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(12) @.str.8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ocotp_params, ptr %12, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !36
  %15 = icmp eq i8 %14, 0
  %16 = icmp ult i32 %4, 2
  %17 = or i1 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %10
  %19 = lshr i32 %4, 1
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %28, %20 ], [ 0, %18 ]
  %22 = getelementptr i8, ptr %3, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = xor i32 %21, -1
  %25 = add i32 %24, %4
  %26 = getelementptr i8, ptr %3, i32 %25
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %22, align 1
  store i8 %23, ptr %26, align 1
  %28 = add nuw nsw i32 %21, 1
  %29 = icmp eq i32 %28, %19
  br i1 %29, label %30, label %20

30:                                               ; preds = %20, %10, %7, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_ocotp_set_imx6_timing(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #9
  %5 = mul i32 %4, 17
  %6 = add i32 %5, 999999999
  %7 = udiv i32 %6, 1000000000
  %8 = mul i32 %4, 37
  %9 = add i32 %8, 999999999
  %10 = udiv i32 %9, 1000000000
  %11 = shl nuw nsw i32 %7, 1
  %12 = add nsw i32 %11, -1
  %13 = add nsw i32 %12, %10
  %14 = mul i32 %4, 10
  %15 = add i32 %14, 500000
  %16 = udiv i32 %15, 1000000
  %17 = add nsw i32 %12, %16
  %18 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  %22 = and i32 %21, 264241152
  %23 = and i32 %17, 4095
  %24 = shl nuw nsw i32 %7, 12
  %25 = add nuw nsw i32 %24, 61440
  %26 = and i32 %25, 61440
  %27 = shl nsw i32 %13, 16
  %28 = and i32 %27, 4128768
  %29 = or i32 %26, %22
  %30 = or i32 %29, %23
  %31 = or i32 %30, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !38
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_ocotp_set_imx7_timing(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #9
  %5 = zext i32 %4 to i64
  %6 = mul nuw nsw i64 %5, 1001
  %7 = add nuw nsw i64 %6, 999999999
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %7, i32 0) #12, !srcloc !39
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = extractvalue { i64, i32 } %8, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %7, i64 %9, i32 %10) #12, !srcloc !40
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = mul nuw nsw i64 %5, 10000
  %14 = add nuw nsw i64 %13, 500000000
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %14, i32 0) #12, !srcloc !39
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = extractvalue { i64, i32 } %15, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %14, i64 %16, i32 %17) #12, !srcloc !40
  %19 = extractvalue { i64, i32 } %18, 0
  %20 = lshr i64 %19, 29
  %21 = trunc i64 %20 to i32
  %22 = add i32 %21, 1
  %23 = and i32 %22, 4095
  %24 = lshr i64 %12, 17
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 1044480
  %27 = add nuw nsw i32 %26, 4096
  %28 = and i32 %27, 1044480
  %29 = or i32 %23, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %30 = getelementptr inbounds %struct.ocotp_priv, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #9, !srcloc !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 3655257}
!9 = !{i64 2151533473}
!10 = !{i64 2151533671}
!11 = !{i64 3654839}
!12 = !{i64 2151532889}
!13 = !{i64 2151533135}
!14 = !{i64 2151532977}
!15 = !{i64 2151535720}
!16 = !{i64 2151549550}
!17 = !{i64 2151549756}
!18 = !{i64 2151550081}
!19 = !{i64 2151550400}
!20 = !{i64 2151550719}
!21 = !{i64 2151551041}
!22 = !{i64 2151551369}
!23 = !{i64 2151551694}
!24 = !{i64 2151552013}
!25 = !{i64 2151552332}
!26 = !{i64 2151552651}
!27 = !{i64 2151552973}
!28 = !{i64 2151553298}
!29 = !{i64 2151553617}
!30 = !{i64 2151553936}
!31 = !{i64 2151554255}
!32 = !{i64 2151554577}
!33 = !{i64 2151554902}
!34 = !{i64 2151555224}
!35 = !{i64 2151557259}
!36 = !{i8 0, i8 2}
!37 = !{i64 2151536706}
!38 = !{i64 2151536903}
!39 = !{i64 887572, i64 887599, i64 887621, i64 887649}
!40 = !{i64 887980, i64 888007, i64 888040, i64 888061, i64 888088, i64 888114}
!41 = !{i64 2151547869}
