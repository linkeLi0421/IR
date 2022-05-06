; ModuleID = '/llk/IR/drivers/usb/musb/omap2430.c_pt.bc'
source_filename = "../drivers/usb/musb/omap2430.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap2430_glue = type { ptr, ptr, i32, %struct.work_struct, ptr, i8 }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@omap2430_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description254 = internal constant [38 x i8] c"description=OMAP2PLUS MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [35 x i8] c"author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@omap2430_driver = internal global %struct.platform_driver { ptr @omap2430_probe, ptr @omap2430_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap2430_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"musb-omap2430\00", align 1
@omap2430_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @omap2430_suspend, ptr @omap2430_resume, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_suspend_late, ptr @omap2430_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_runtime_suspend, ptr @omap2430_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@omap2430_dmamask = internal global i64 4294967295, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"interface-type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"num-eps\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ram-bits\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"multipoint\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ctrl-module\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to get control device\0A\00", align 1
@omap2430_ops = internal constant %struct.musb_platform_ops { i32 4, ptr @omap2430_musb_init, ptr @omap2430_musb_exit, ptr @omap2430_musb_enable, ptr @omap2430_musb_disable, ptr null, ptr null, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @musbhs_dma_controller_create, ptr @musbhs_dma_controller_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2430_musb_mailbox, ptr null }, align 4
@_glue = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"HS USB OTG: no PHY configured\0A\00", align 1
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"\013%s: musb core is not yet initialized\0A\00", align 1
@__func__.omap2430_musb_mailbox = private unnamed_addr constant [22 x i8] c"omap2430_musb_mailbox\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"\013%s: musb core is not yet ready\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license256], section "llvm.metadata"

@__mod_of__omap2430_id_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @omap2430_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap2430_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap2430_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %89, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 36, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %89, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -2) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %89

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 1
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 16
  store ptr @omap2430_dmamask, ptr %17, align 4
  %18 = load i64, ptr @omap2430_dmamask, align 8
  %19 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 17
  store i64 %18, ptr %19, align 8
  store ptr %4, ptr %9, align 4
  %20 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 1
  store ptr %12, ptr %20, align 4
  %21 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 4
  store ptr inttoptr (i32 -19 to ptr), ptr %22, align 4
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 32, i32 noundef 3520) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %87, label %25

25:                                               ; preds = %15
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %87, label %28

28:                                               ; preds = %25
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %23, i32 noundef 1, i32 noundef 0) #6
  %33 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %26, i32 noundef 1, i32 noundef 0) #6
  %34 = getelementptr inbounds %struct.musb_hdrc_config, ptr %29, i32 0, i32 3
  %35 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, ptr noundef %34, i32 noundef 1, i32 noundef 0) #6
  %36 = getelementptr inbounds %struct.musb_hdrc_config, ptr %29, i32 0, i32 4
  %37 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, ptr noundef %36, i32 noundef 1, i32 noundef 0) #6
  %38 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %23, i32 0, i32 3
  %39 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.7, ptr noundef %38, i32 noundef 1, i32 noundef 0) #6
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %41 = icmp sgt i32 %40, -1
  %42 = load i32, ptr %3, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.musb_hdrc_config, ptr %29, i32 0, i32 2
  %47 = load i8, ptr %46, align 4
  %48 = or i8 %47, 1
  store i8 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %31
  %50 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %23, i32 0, i32 9
  store ptr %26, ptr %50, align 4
  %51 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %23, i32 0, i32 8
  store ptr %29, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %52 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %53 = icmp ne i32 %52, 0
  %54 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %55 = icmp eq ptr %54, null
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = call ptr @of_find_device_by_node(ptr noundef nonnull %54) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #7
  br label %87

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  store ptr %62, ptr %22, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %23, i32 0, i32 10
  store ptr @omap2430_ops, ptr %64, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %65, align 8
  store ptr %9, ptr @_glue, align 4
  %66 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 3
  store i32 -32, ptr %66, align 4
  %67 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 3, i32 1
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 3, i32 1, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.omap2430_glue, ptr %9, i32 0, i32 3, i32 2
  store ptr @omap_musb_mailbox_work, ptr %69, align 4
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @platform_device_add_resources(ptr noundef nonnull %12, ptr noundef %71, i32 noundef %73) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  br label %87

77:                                               ; preds = %63
  %78 = call i32 @platform_device_add_data(ptr noundef nonnull %12, ptr noundef nonnull %23, i32 noundef 32) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  br label %87

81:                                               ; preds = %77
  %82 = load ptr, ptr %9, align 4
  call void @pm_runtime_enable(ptr noundef %82) #6
  %83 = call i32 @platform_device_add(ptr noundef nonnull %12) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #7
  %86 = load ptr, ptr %9, align 4
  call void @__pm_runtime_disable(ptr noundef %86, i1 noundef zeroext true) #6
  br label %87

87:                                               ; preds = %85, %80, %76, %60, %28, %25, %15
  %88 = phi i32 [ %74, %76 ], [ %78, %80 ], [ %83, %85 ], [ -22, %60 ], [ -12, %28 ], [ -12, %25 ], [ -12, %15 ]
  call void @platform_device_put(ptr noundef nonnull %12) #6
  br label %89

89:                                               ; preds = %87, %81, %14, %8, %1
  %90 = phi i32 [ -19, %1 ], [ 0, %81 ], [ %88, %87 ], [ -12, %14 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #6
  %6 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_musb_mailbox_work(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -12
  tail call fastcc void @omap_musb_set_mailbox(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_musb_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @devm_phy_get(ptr noundef %9, ptr noundef nonnull @.str.14) #6
  %11 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 32
  store ptr %10, ptr %11, align 8
  %12 = load ptr, ptr %8, align 4
  %13 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.15, i8 noundef zeroext 0) #6
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = icmp eq ptr %13, inttoptr (i32 -6 to ptr)
  %18 = select i1 %17, i32 -6, i32 -517
  br label %39

19:                                               ; preds = %1
  %20 = load ptr, ptr %11, align 8
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #7
  %23 = load ptr, ptr %11, align 8
  %24 = ptrtoint ptr %23 to i32
  br label %39

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 5
  store ptr @omap2430_musb_interrupt, ptr %26, align 4
  %27 = tail call i32 @phy_init(ptr noundef %20) #6
  %28 = load ptr, ptr %11, align 8
  %29 = tail call i32 @phy_power_on(ptr noundef %28) #6
  %30 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @musb_readl(ptr noundef %31, i32 noundef 1036) #6
  %33 = load i8, ptr %7, align 4
  %34 = icmp ne i8 %33, 1
  %35 = and i32 %32, -2
  %36 = zext i1 %34 to i32
  %37 = or i32 %35, %36
  %38 = load ptr, ptr %30, align 8
  tail call void @musb_writel(ptr noundef %38, i32 noundef 1036, i32 noundef %37) #6
  br label %39

39:                                               ; preds = %25, %22, %16
  %40 = phi i32 [ %24, %22 ], [ 0, %25 ], [ %18, %16 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_musb_exit(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @musb_readl(ptr noundef %9, i32 noundef 1044) #6
  %11 = or i32 %10, 1
  %12 = load ptr, ptr %8, align 8
  tail call void @musb_writel(ptr noundef %12, i32 noundef 1044, i32 noundef %11) #6
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @phy_power_off(ptr noundef %14) #6
  %16 = load ptr, ptr %13, align 8
  %17 = tail call i32 @phy_exit(ptr noundef %16) #6
  store ptr null, ptr %13, align 8
  %18 = getelementptr inbounds %struct.omap2430_glue, ptr %7, i32 0, i32 3
  %19 = tail call zeroext i1 @cancel_work_sync(ptr noundef %18) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2430_musb_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.omap2430_glue, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 4, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %1
  tail call fastcc void @omap_musb_set_mailbox(ptr noundef %7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2430_musb_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.omap2430_glue, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.omap2430_glue, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %13, i32 noundef 3) #6
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @musbhs_dma_controller_create(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musbhs_dma_controller_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_musb_mailbox(i32 noundef %0) #2 {
  %2 = load ptr, ptr @_glue, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap2430_musb_mailbox) #7
  br label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap2430_glue, ptr %2, i32 0, i32 2
  store i32 %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.omap2430_glue, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.omap2430_musb_mailbox) #7
  br label %19

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.omap2430_glue, ptr %2, i32 0, i32 3
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16) #6
  br label %19

19:                                               ; preds = %15, %13, %4
  %20 = phi i32 [ 0, %15 ], [ -517, %13 ], [ -517, %4 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_musb_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 10) #6
  %8 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  store i8 %7, ptr %8, align 4
  %9 = load ptr, ptr @musb_readw, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = tail call zeroext i16 %9(ptr noundef %10, i32 noundef 2) #6
  %12 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  store i16 %11, ptr %12, align 8
  %13 = load ptr, ptr @musb_readw, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = tail call zeroext i16 %13(ptr noundef %14, i32 noundef 4) #6
  %16 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  store i16 %15, ptr %16, align 2
  %17 = load i8, ptr %8, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i16, ptr %12, align 8
  %21 = icmp eq i16 %20, 0
  %22 = icmp eq i16 %15, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %2
  %25 = tail call i32 @musb_interrupt(ptr noundef %1) #6
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #6
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_musb_set_mailbox(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %9 = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %85 [
    i32 1, label %11
    i32 3, label %57
    i32 2, label %67
    i32 4, label %67
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %38 [
    i32 6, label %18
    i32 7, label %29
    i32 8, label %29
    i32 9, label %29
  ]

18:                                               ; preds = %11
  %19 = tail call i32 @musb_set_host(ptr noundef %5) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr inbounds %struct.usb_phy, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_otg, ptr %24, i32 0, i32 5
  store i32 7, ptr %25, align 4
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.usb_phy, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %21, %11, %11, %11
  %30 = phi ptr [ %15, %11 ], [ %15, %11 ], [ %15, %11 ], [ %28, %21 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %85, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.usb_otg, ptr %30, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %85, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %34(ptr noundef nonnull %30, i1 noundef zeroext true) #6
  br label %85

38:                                               ; preds = %11
  store i32 6, ptr %16, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr inbounds %struct.usb_phy, ptr %39, i32 0, i32 4
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 53
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %85, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %46, i32 noundef 1) #6
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr inbounds %struct.usb_phy, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.usb_otg, ptr %49, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %85, label %55

55:                                               ; preds = %51
  %56 = tail call i32 %53(ptr noundef nonnull %49, i1 noundef zeroext true) #6
  br label %85

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 31
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.usb_phy, ptr %59, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.usb_otg, ptr %61, i32 0, i32 5
  store i32 1, ptr %62, align 4
  %63 = load ptr, ptr %58, align 4
  %64 = getelementptr inbounds %struct.usb_phy, ptr %63, i32 0, i32 4
  store i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %66, i32 noundef 2) #6
  br label %85

67:                                               ; preds = %1, %1
  %68 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 31
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.usb_phy, ptr %69, i32 0, i32 4
  store i32 0, ptr %70, align 4
  %71 = tail call i32 @musb_set_peripheral(ptr noundef %5) #6
  %72 = load ptr, ptr %68, align 4
  %73 = getelementptr inbounds %struct.usb_phy, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.usb_otg, ptr %74, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call i32 %78(ptr noundef nonnull %74, i1 noundef zeroext false) #6
  br label %82

82:                                               ; preds = %80, %76, %67
  %83 = getelementptr inbounds %struct.omap2430_glue, ptr %0, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  tail call void @omap_control_usb_set_mode(ptr noundef %84, i32 noundef 3) #6
  br label %85

85:                                               ; preds = %82, %57, %55, %51, %44, %38, %36, %32, %29, %18, %1
  %86 = load ptr, ptr %6, align 8
  %87 = tail call i64 @ktime_get_mono_fast_ns() #6
  %88 = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 11, i32 22
  store volatile i64 %87, ptr %88, align 8
  %89 = load ptr, ptr %6, align 8
  %90 = tail call i32 @__pm_runtime_suspend(ptr noundef %89, i32 noundef 13) #6
  %91 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 31
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.usb_phy, ptr %92, i32 0, i32 18
  %94 = getelementptr inbounds %struct.usb_phy, ptr %92, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @atomic_notifier_call_chain(ptr noundef %93, i32 noundef %95, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_set_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_usb_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_set_peripheral(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 32
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @phy_power_off(ptr noundef %9) #6
  %11 = load ptr, ptr %8, align 8
  %12 = tail call i32 @phy_exit(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 4
  store i8 %15, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 32
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @phy_init(ptr noundef %9) #6
  %11 = load ptr, ptr %8, align 8
  %12 = tail call i32 @phy_power_on(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, -5
  store i8 %15, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_suspend_late(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = or i8 %5, 2
  store i8 %9, ptr %4, align 4
  %10 = tail call i32 @omap2430_runtime_suspend(ptr noundef %0)
  br label %11

11:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_resume_early(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = and i8 %5, -3
  store i8 %9, ptr %4, align 4
  %10 = tail call i32 @omap2430_runtime_resume(ptr noundef %0)
  br label %11

11:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 27
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @musb_readl(ptr noundef %11, i32 noundef 1036) #6
  %13 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 4, i32 8
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %10, align 8
  %15 = tail call i32 @musb_readl(ptr noundef %14, i32 noundef 1044) #6
  %16 = or i32 %15, 1
  %17 = load ptr, ptr %10, align 8
  tail call void @musb_writel(ptr noundef %17, i32 noundef 1044, i32 noundef %16) #6
  %18 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 5
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 32
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @phy_power_off(ptr noundef %24) #6
  %26 = load ptr, ptr %23, align 8
  %27 = tail call i32 @phy_exit(ptr noundef %26) #6
  %28 = load i8, ptr %18, align 4
  br label %29

29:                                               ; preds = %22, %9
  %30 = phi i8 [ %28, %22 ], [ %19, %9 ]
  %31 = or i8 %30, 1
  store i8 %31, ptr %18, align 4
  br label %32

32:                                               ; preds = %29, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2430_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap2430_glue, ptr %3, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 32
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @phy_init(ptr noundef %16) #6
  %18 = load ptr, ptr %15, align 8
  %19 = tail call i32 @phy_power_on(ptr noundef %18) #6
  br label %20

20:                                               ; preds = %14, %9
  %21 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @musb_readl(ptr noundef %22, i32 noundef 1044) #6
  %24 = and i32 %23, -2
  %25 = load ptr, ptr %21, align 8
  tail call void @musb_writel(ptr noundef %25, i32 noundef 1044, i32 noundef %24) #6
  %26 = load ptr, ptr %21, align 8
  %27 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 4, i32 8
  %28 = load i32, ptr %27, align 4
  tail call void @musb_writel(ptr noundef %26, i32 noundef 1036, i32 noundef %28) #6
  tail call void @usleep_range_state(i32 noundef 200000, i32 noundef 250000, i32 noundef 2) #6
  %29 = load i8, ptr %10, align 4
  %30 = and i8 %29, -2
  store i8 %30, ptr %10, align 4
  br label %31

31:                                               ; preds = %20, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
