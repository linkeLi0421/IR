; ModuleID = '/llk/IR/drivers/ata/ahci_st.c_pt.bc'
source_filename = "../drivers/ata/ahci_st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.st_ahci_drv_data = type { ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_ahci_st__290_248_st_ahci_driver_init6 = internal global ptr @st_ahci_driver_init, section ".initcall6.init", align 4
@st_ahci_driver = internal global %struct.platform_driver { ptr @st_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_ahci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_ahci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_st_ahci_driver_exit = internal global ptr @st_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [58 x i8] c"ahci_st.author=Alexandre Torgue <alexandre.torgue@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [62 x i8] c"ahci_st.author=Francesco Virlinzi <francesco.virlinzi@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [56 x i8] c"ahci_st.description=STMicroelectronics SATA AHCI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [33 x i8] c"ahci_st.file=drivers/ata/ahci_st\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"ahci_st.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"st_ahci\00", align 1
@st_ahci_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@st_ahci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_ahci_suspend, ptr @st_ahci_resume, ptr @st_ahci_suspend, ptr @st_ahci_resume, ptr @st_ahci_suspend, ptr @st_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ports-implemented\00", align 1
@st_ahci_port_info = internal constant %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @st_ahci_port_ops, ptr null }, align 4
@ahci_platform_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"pwr-dwn\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"power reset control not defined\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sw-rst\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"soft reset control not defined\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pwr-rst\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to bring out of pwrdwn\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"unable to bring out of sw-rst\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"unable to bring out of pwr-rst\0A\00", align 1
@st_ahci_port_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_platform_ops }, align 4
@ahci_platform_ops = external dso_local global %struct.ata_port_operations, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"unable to pwrdwn\0A\00", align 1
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"unable to pwrdwn\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_st_ahci_driver_exit, ptr @__initcall__kmod_ahci_st__290_248_st_ahci_driver_init6, ptr @st_ahci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_ahci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_ahci_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_ahci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_ahci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ahci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @ahci_platform_get_resources(ptr noundef %0, i32 noundef 0) #4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %66

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 23
  store ptr %3, ptr %11, align 4
  %12 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %13 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  store ptr null, ptr %13, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %18 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %3, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  store ptr null, ptr %18, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %23 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %3, i32 0, i32 3
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = select i1 %24, ptr null, ptr %22
  store ptr %25, ptr %23, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = tail call i32 @reset_control_deassert(ptr noundef nonnull %28) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30, %21
  %34 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %26, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @reset_control_deassert(ptr noundef nonnull %35) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %26, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @reset_control_deassert(ptr noundef nonnull %42) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %37, %30
  %48 = phi ptr [ @.str.7, %30 ], [ @.str.8, %37 ], [ @.str.9, %44 ]
  %49 = phi i32 [ %31, %30 ], [ %38, %37 ], [ %45, %44 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %48) #5
  br label %66

50:                                               ; preds = %44, %40
  %51 = tail call i32 @ahci_platform_enable_resources(ptr noundef %6) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 188
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %58 = or i32 %57, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %58) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -2113665012) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 33818636) #4, !srcloc !11
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 1
  %62 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %60, ptr noundef nonnull @.str.1, ptr noundef %61, i32 noundef 1, i32 noundef 0) #4
  %63 = tail call i32 @ahci_platform_init_host(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @st_ahci_port_info, ptr noundef nonnull @ahci_platform_sht) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  tail call void @ahci_platform_disable_resources(ptr noundef %6) #4
  br label %66

66:                                               ; preds = %65, %53, %50, %47, %8, %1
  %67 = phi i32 [ %9, %8 ], [ %63, %65 ], [ -12, %1 ], [ %49, %47 ], [ %51, %50 ], [ 0, %53 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_ahci_host_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @reset_control_assert(ptr noundef nonnull %9) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #5
  br label %15

15:                                               ; preds = %14, %11, %1
  tail call void @ahci_platform_disable_resources(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ahci_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @ahci_platform_suspend_host(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @reset_control_assert(ptr noundef nonnull %12) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  br label %19

18:                                               ; preds = %14, %10
  tail call void @ahci_platform_disable_resources(ptr noundef %5) #4
  br label %19

19:                                               ; preds = %18, %17, %1
  %20 = phi i32 [ %15, %17 ], [ 0, %18 ], [ %8, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ahci_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ahci_platform_enable_resources(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @reset_control_deassert(ptr noundef nonnull %12) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14, %8
  %18 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @reset_control_deassert(ptr noundef nonnull %19) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.st_ahci_drv_data, ptr %10, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @reset_control_deassert(ptr noundef nonnull %26) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %21, %14
  %32 = phi ptr [ @.str.7, %14 ], [ @.str.8, %21 ], [ @.str.9, %28 ]
  %33 = phi i32 [ %15, %14 ], [ %22, %21 ], [ %29, %28 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %32) #5
  tail call void @ahci_platform_disable_resources(ptr noundef %5) #4
  br label %41

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 188
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %39 = or i32 %38, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 -2113665012) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 33818636) #4, !srcloc !11
  %40 = tail call i32 @ahci_platform_resume_host(ptr noundef %0) #4
  br label %41

41:                                               ; preds = %34, %31, %1
  %42 = phi i32 [ %33, %31 ], [ %40, %34 ], [ %6, %1 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume_host(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3935380}
!9 = !{i64 2155027301}
!10 = !{i64 2155027604}
!11 = !{i64 3934962}
!12 = !{i64 2155028100}
!13 = !{i64 2155028481}
