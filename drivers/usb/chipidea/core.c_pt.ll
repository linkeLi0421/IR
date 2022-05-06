; ModuleID = '/llk/IR/drivers/usb/chipidea/core.c_pt.bc'
source_filename = "../drivers/usb/chipidea/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hw_phymode_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22hw_phymode_configure\22\09\09\09\09\09"
module asm "__kstrtabns_hw_phymode_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ci_hdrc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ci_hdrc_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_ci_hdrc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ci_hdrc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ci_hdrc_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_ci_hdrc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ci_hdrc_query_available_role:\09\09\09\09\09"
module asm "\09.asciz \09\22ci_hdrc_query_available_role\22\09\09\09\09\09"
module asm "__kstrtabns_ci_hdrc_query_available_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.65, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.65 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__kstrtab_hw_phymode_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_hw_phymode_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_hw_phymode_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hw_phymode_configure to i32), ptr @__kstrtab_hw_phymode_configure, ptr @__kstrtabns_hw_phymode_configure }, section "___ksymtab_gpl+hw_phymode_configure", align 4
@.str = private unnamed_addr constant [36 x i8] c"error resetting controller, ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot enter in %s device mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"lpm = %i\0A\00", align 1
@ci_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ci_hdrc\00", align 1
@__kstrtab_ci_hdrc_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ci_hdrc_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ci_hdrc_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ci_hdrc_add_device to i32), ptr @__kstrtab_ci_hdrc_add_device, ptr @__kstrtabns_ci_hdrc_add_device }, section "___ksymtab_gpl+ci_hdrc_add_device", align 4
@__kstrtab_ci_hdrc_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ci_hdrc_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ci_hdrc_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ci_hdrc_remove_device to i32), ptr @__kstrtab_ci_hdrc_remove_device, ptr @__kstrtabns_ci_hdrc_remove_device }, section "___ksymtab_gpl+ci_hdrc_remove_device", align 4
@__kstrtab_ci_hdrc_query_available_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_ci_hdrc_query_available_role = external dso_local constant [0 x i8], align 1
@__ksymtab_ci_hdrc_query_available_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ci_hdrc_query_available_role to i32), ptr @__kstrtab_ci_hdrc_query_available_role, ptr @__kstrtabns_ci_hdrc_query_available_role }, section "___ksymtab_gpl+ci_hdrc_query_available_role", align 4
@__initcall__kmod_ci_hdrc__254_1455_ci_hdrc_platform_register6 = internal global ptr @ci_hdrc_platform_register, section ".initcall6.init", align 4
@ci_hdrc_driver = internal global %struct.platform_driver { ptr @ci_hdrc_probe, ptr @ci_hdrc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_groups, ptr @ci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ci_hdrc_platform_unregister = internal global ptr @ci_hdrc_platform_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias255 = internal constant [31 x i8] c"ci_hdrc.alias=platform:ci_hdrc\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [42 x i8] c"ci_hdrc.file=drivers/usb/chipidea/ci_hdrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [23 x i8] c"ci_hdrc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [52 x i8] c"ci_hdrc.author=David Lopo <dlopo@chipidea.mips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [41 x i8] c"ci_hdrc.description=ChipIdea HDRC Driver\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Getting regulator error: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"phy-clkgate-delay-us\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"itc-setting\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ahb-burst-config\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to get ahb-burst-config\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"tx-burst-size-dword\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to get tx-burst-size-dword\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"rx-burst-size-dword\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"failed to get rx-burst-size-dword\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"non-zero-ttctrl-ttha\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@ci_role_switch = internal global %struct.usb_role_switch_desc { ptr null, ptr null, ptr null, ptr null, ptr @ci_usb_role_switch_set, ptr @ci_usb_role_switch_get, i8 1, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@ci_groups = internal global [2 x ptr] [ptr @ci_group, ptr null], align 4
@ci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ci_suspend, ptr @ci_resume, ptr @ci_suspend, ptr @ci_resume, ptr @ci_suspend, ptr @ci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_runtime_suspend, ptr @ci_runtime_resume, ptr null }, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"platform data missing\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"can't initialize hardware\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"unable to init phy: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"doesn't support host\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"doesn't support gadget\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"no supported roles\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"init otg fails, ret = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"can't start %s role\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"register ID failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"register VBUS failed\0A\00", align 1
@ci_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ci_attrs, ptr null }, align 4
@ci_attrs = internal global [2 x ptr] [ptr @dev_attr_role, ptr null], align 4
@dev_attr_role = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420 }, ptr @role_show, ptr @role_store }, align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"Current configuration is not dual-role, quit\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"drivers/usb/chipidea/core.c\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_ci_hdrc_platform_unregister, ptr @__initcall__kmod_ci_hdrc__254_1455_ci_hdrc_platform_register6, ptr @__ksymtab_ci_hdrc_add_device, ptr @__ksymtab_ci_hdrc_query_available_role, ptr @__ksymtab_ci_hdrc_remove_device, ptr @__ksymtab_hw_phymode_configure, ptr @ci_hdrc_platform_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_read_intr_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_read_intr_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_port_test_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ugt i8 %1, 7
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %8 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %9 = load i8, ptr %8, align 2, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = and i32 %7, -983041
  %13 = zext i8 %1 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = and i32 %14, 983040
  %16 = or i32 %12, %15
  %17 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #9, !srcloc !12
  br label %18

18:                                               ; preds = %11, %4, %2
  %19 = phi i32 [ -22, %2 ], [ 0, %4 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hw_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = xor i32 %2, -1
  %8 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %11 = and i32 %10, %7
  %12 = and i32 %3, %2
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %13, %6 ], [ %3, %4 ]
  %16 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %17 = load i8, ptr %16, align 2, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 %1
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %15) #9, !srcloc !12
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @hw_port_test_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %5 = lshr i32 %4, 16
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 15
  ret i8 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hw_phymode_configure(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %57 [
    i32 1, label %10
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
  ]

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %1
  %11 = phi i32 [ 33554432, %9 ], [ -1073741824, %8 ], [ -2147483648, %7 ], [ 268435456, %6 ], [ 0, %1 ]
  %12 = phi i32 [ -2147483648, %9 ], [ 1610612736, %8 ], [ 1073741824, %7 ], [ 134217728, %6 ], [ 0, %1 ]
  %13 = phi i1 [ true, %9 ], [ false, %8 ], [ true, %7 ], [ true, %6 ], [ true, %1 ]
  %14 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %10
  %18 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %22 = load i8, ptr %21, align 2, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = and i32 %20, 402653183
  %26 = or i32 %25, %12
  %27 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #9, !srcloc !12
  br label %28

28:                                               ; preds = %24, %17
  br i1 %13, label %57, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %18, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %32 = load i8, ptr %21, align 2, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = or i32 %31, 268435456
  %36 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #9, !srcloc !12
  br label %57

37:                                               ; preds = %10
  %38 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %41 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %42 = load i8, ptr %41, align 2, !range !10
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = and i32 %40, 771751935
  %46 = or i32 %45, %11
  %47 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #9, !srcloc !12
  br label %48

48:                                               ; preds = %44, %37
  br i1 %13, label %57, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %38, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %52 = load i8, ptr %41, align 2, !range !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = or i32 %51, 536870912
  %56 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %55) #9, !srcloc !12
  br label %57

57:                                               ; preds = %54, %49, %48, %34, %29, %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_platform_configure(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 2
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 3
  br i1 %6, label %11, label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 36
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @phy_set_mode_ext(ptr noundef %13, i32 noundef 6, i32 noundef 0) #9
  %15 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %2, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %24 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %25 = load i8, ptr %24, align 2, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = or i32 %23, 16
  %29 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #9, !srcloc !12
  br label %30

30:                                               ; preds = %27, %21, %11, %1
  br i1 %10, label %31, label %50

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 36
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @phy_set_mode_ext(ptr noundef %33, i32 noundef 1, i32 noundef 0) #9
  %35 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %2, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %45 = load i8, ptr %44, align 2, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = or i32 %43, 16
  %49 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #9, !srcloc !12
  br label %50

50:                                               ; preds = %47, %41, %31, %30
  %51 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %52, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 13
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %65 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %66 = load i8, ptr %65, align 2, !range !10
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = or i32 %64, 8388608
  %70 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #9, !srcloc !12
  br label %81

71:                                               ; preds = %57
  %72 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %75 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %76 = load i8, ptr %75, align 2, !range !10
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = or i32 %74, 16777216
  %80 = load ptr, ptr %72, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %79) #9, !srcloc !12
  br label %81

81:                                               ; preds = %78, %71, %68, %61, %50
  %82 = load ptr, ptr %51, align 4
  %83 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 256
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 9
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %91 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %92 = load i8, ptr %91, align 2, !range !10
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = or i32 %90, 2130706432
  %96 = load ptr, ptr %88, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %95) #9, !srcloc !12
  br label %97

97:                                               ; preds = %94, %87, %81
  %98 = load ptr, ptr %51, align 4
  %99 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %98, i32 0, i32 12
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %104 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %105 = load i8, ptr %104, align 2, !range !10
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = and i32 %103, -16711681
  %109 = shl i32 %100, 16
  %110 = and i32 %109, 16711680
  %111 = or i32 %108, %110
  %112 = load ptr, ptr %101, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %111) #9, !srcloc !12
  br label %113

113:                                              ; preds = %107, %97
  %114 = load ptr, ptr %51, align 4
  %115 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %114, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %114, i32 0, i32 13
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 2
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr i8, ptr %123, i32 144
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %126 = and i32 %125, -8
  %127 = and i32 %121, 7
  %128 = or i32 %126, %127
  %129 = load ptr, ptr %122, align 8
  %130 = getelementptr i8, ptr %129, i32 144
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #9, !srcloc !12
  br label %131

131:                                              ; preds = %119, %113
  %132 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 2
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr i8, ptr %133, i32 144
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %136 = and i32 %135, 7
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %177

138:                                              ; preds = %131
  %139 = load ptr, ptr %51, align 4
  %140 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %139, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 1024
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %139, i32 0, i32 14
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 10
  %148 = load ptr, ptr %147, align 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %150 = load i8, ptr %104, align 2, !range !10
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = and i32 %149, -65281
  %154 = shl i32 %146, 8
  %155 = and i32 %154, 65280
  %156 = or i32 %153, %155
  %157 = load ptr, ptr %147, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %156) #9, !srcloc !12
  br label %158

158:                                              ; preds = %152, %144, %138
  %159 = load ptr, ptr %51, align 4
  %160 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %159, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 2048
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %159, i32 0, i32 15
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 10
  %168 = load ptr, ptr %167, align 4
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %170 = load i8, ptr %104, align 2, !range !10
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = and i32 %169, -256
  %174 = and i32 %166, 255
  %175 = or i32 %173, %174
  %176 = load ptr, ptr %167, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %175) #9, !srcloc !12
  br label %177

177:                                              ; preds = %172, %164, %158, %131
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_device_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %3 = load i8, ptr %2, align 2, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 18
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -1) #9, !srcloc !12
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %12 = load i8, ptr %2, align 2, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = and i32 %11, -2
  %16 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #9, !srcloc !12
  br label %17

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %20 = load i8, ptr %2, align 2, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = or i32 %19, 2
  %24 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #9, !srcloc !12
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %32, %25
  %27 = phi i32 [ %34, %32 ], [ 0, %25 ]
  %28 = load ptr, ptr %9, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #9
  %34 = add nuw nsw i32 %27, 1
  %35 = icmp eq i32 %34, 1002
  br i1 %35, label %36, label %26

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str, i32 noundef -110) #10
  br label %95

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call i32 %42(ptr noundef %0, i32 noundef 0) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %44, %38
  %48 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %51 = load i8, ptr %2, align 2, !range !10
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = and i32 %50, -4
  %55 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #9, !srcloc !12
  br label %56

56:                                               ; preds = %53, %47
  %57 = load ptr, ptr %48, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %59 = load i8, ptr %2, align 2, !range !10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = and i32 %58, -4
  %63 = or i32 %62, 2
  %64 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #9, !srcloc !12
  br label %65

65:                                               ; preds = %61, %56
  %66 = load ptr, ptr %48, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %68 = load i8, ptr %2, align 2, !range !10
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = or i32 %67, 8
  %72 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #9, !srcloc !12
  br label %73

73:                                               ; preds = %70, %65
  %74 = load ptr, ptr %48, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %94, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %0, align 8
  %80 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %87, label %83, !prof !13

83:                                               ; preds = %78
  %84 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 4, i32 %81
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88, !prof !13

87:                                               ; preds = %83, %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ci_role_driver, ptr %85, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.1, ptr noundef %90) #10
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.2, i32 noundef %93) #10
  br label %95

94:                                               ; preds = %73
  tail call void @ci_platform_configure(ptr noundef %0)
  br label %95

95:                                               ; preds = %94, %88, %44, %36
  %96 = phi i32 [ -110, %36 ], [ -19, %88 ], [ 0, %94 ], [ %45, %44 ]
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ci_hdrc_add_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @of_usb_get_phy_mode(ptr noundef %10) #9
  store i32 %11, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call i32 @usb_get_dr_mode(ptr noundef %0) #9
  store i32 %17, ptr %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 3, ptr %13, align 4
  br label %23

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %17, %16 ], [ %14, %12 ]
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %42, label %23

23:                                               ; preds = %20, %19
  %24 = tail call ptr @devm_regulator_get_optional(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %25 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 9
  store ptr %24, ptr %25, align 4
  %26 = ptrtoint ptr %24 to i32
  switch i32 %26, label %28 [
    i32 -517, label %179
    i32 -19, label %27
  ]

27:                                               ; preds = %23
  store ptr null, ptr %25, align 4
  br label %33

28:                                               ; preds = %23
  %29 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %26) #10
  %31 = load ptr, ptr %25, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %176

33:                                               ; preds = %28, %27
  %34 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 11
  %35 = load i8, ptr %34, align 2, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = tail call zeroext i1 @of_usb_host_tpl_support(ptr noundef %39) #9
  %41 = zext i1 %40 to i8
  store i8 %41, ptr %34, align 2
  br label %42

42:                                               ; preds = %37, %33, %20
  %43 = load i32, ptr %13, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 10
  store i16 512, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 10, i32 1
  store i8 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 10, i32 2
  store i8 1, ptr %48, align 1
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @of_usb_update_otg_caps(ptr noundef %50, ptr noundef %46) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %179

53:                                               ; preds = %45, %42
  %54 = tail call i32 @usb_get_maximum_speed(ptr noundef %0) #9
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 64
  store i32 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 18
  %64 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef %63, i32 noundef 1, i32 noundef 0) #9
  %65 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 12
  store i32 1, ptr %65, align 4
  %66 = load ptr, ptr %61, align 8
  %67 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %66, ptr noundef nonnull @.str.7, ptr noundef %65, i32 noundef 1, i32 noundef 0) #9
  %68 = load ptr, ptr %61, align 8
  %69 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 13
  %70 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %68, ptr noundef nonnull @.str.8, ptr noundef %69, i32 noundef 1, i32 noundef 0) #9
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 0) #9
  switch i32 %71, label %76 [
    i32 0, label %72
    i32 -22, label %77
  ]

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 512
  store i32 %75, ptr %73, align 4
  br label %77

76:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  br label %176

77:                                               ; preds = %72, %60
  %78 = load ptr, ptr %61, align 8
  %79 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 14
  %80 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %78, ptr noundef nonnull @.str.10, ptr noundef %79, i32 noundef 1, i32 noundef 0) #9
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 0) #9
  switch i32 %81, label %86 [
    i32 0, label %82
    i32 -22, label %87
  ]

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %84, 1024
  store i32 %85, ptr %83, align 4
  br label %87

86:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  br label %176

87:                                               ; preds = %82, %77
  %88 = load ptr, ptr %61, align 8
  %89 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 15
  %90 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %88, ptr noundef nonnull @.str.12, ptr noundef %89, i32 noundef 1, i32 noundef 0) #9
  %91 = tail call i32 @llvm.smin.i32(i32 %90, i32 0) #9
  switch i32 %91, label %96 [
    i32 0, label %92
    i32 -22, label %97
  ]

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 2048
  store i32 %95, ptr %93, align 4
  br label %97

96:                                               ; preds = %87
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  br label %176

97:                                               ; preds = %92, %87
  %98 = load ptr, ptr %61, align 8
  %99 = tail call ptr @of_find_property(ptr noundef %98, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 256
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load ptr, ptr %61, align 8
  %107 = tail call ptr @of_find_property(ptr noundef %106, ptr noundef nonnull @.str.15, ptr noundef null) #9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 5
  store ptr @ci_cable_notifier, ptr %110, align 4
  %111 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 3
  store ptr inttoptr (i32 -19 to ptr), ptr %111, align 4
  %112 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 5
  store ptr @ci_cable_notifier, ptr %112, align 4
  %113 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 3
  store ptr inttoptr (i32 -19 to ptr), ptr %113, align 4
  br label %145

114:                                              ; preds = %105
  %115 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %0, i32 noundef 0) #9
  %116 = icmp ule ptr %115, inttoptr (i32 -4096 to ptr)
  %117 = ptrtoint ptr %115 to i32
  %118 = icmp eq ptr %115, inttoptr (i32 -19 to ptr)
  %119 = or i1 %116, %118
  br i1 %119, label %120, label %176

120:                                              ; preds = %114
  %121 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %0, i32 noundef 1) #9
  %122 = icmp ule ptr %121, inttoptr (i32 -4096 to ptr)
  %123 = ptrtoint ptr %121 to i32
  %124 = icmp eq ptr %121, inttoptr (i32 -19 to ptr)
  %125 = or i1 %122, %124
  br i1 %125, label %126, label %176

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 5
  store ptr @ci_cable_notifier, ptr %127, align 4
  %128 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16, i32 3
  store ptr %115, ptr %128, align 4
  %129 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 16
  %132 = tail call i32 @extcon_get_state(ptr noundef %115, i32 noundef 1) #9
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i8
  store i8 %134, ptr %131, align 4
  br label %135

135:                                              ; preds = %130, %126
  %136 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17
  %137 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 5
  store ptr @ci_cable_notifier, ptr %137, align 4
  %138 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 3
  store ptr %121, ptr %138, align 4
  %139 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = tail call i32 @extcon_get_state(ptr noundef %121, i32 noundef 2) #9
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  store i8 1, ptr %136, align 4
  br label %145

144:                                              ; preds = %140
  store i8 0, ptr %136, align 4
  br label %145

145:                                              ; preds = %144, %143, %135, %109
  %146 = tail call zeroext i1 @device_property_present(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %149 = load ptr, ptr %148, align 4
  store ptr %149, ptr @ci_role_switch, align 4
  br label %150

150:                                              ; preds = %147, %145
  %151 = tail call ptr @devm_pinctrl_get(ptr noundef %0) #9
  %152 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 19
  store ptr %151, ptr %152, align 4
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %171, label %154

154:                                              ; preds = %150
  %155 = tail call ptr @pinctrl_lookup_state(ptr noundef %151, ptr noundef nonnull @.str.17) #9
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 20
  store ptr %155, ptr %158, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = load ptr, ptr %152, align 4
  %161 = tail call ptr @pinctrl_lookup_state(ptr noundef %160, ptr noundef nonnull @.str.18) #9
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 21
  store ptr %161, ptr %164, align 4
  br label %165

165:                                              ; preds = %163, %159
  %166 = load ptr, ptr %152, align 4
  %167 = tail call ptr @pinctrl_lookup_state(ptr noundef %166, ptr noundef nonnull @.str.19) #9
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 22
  store ptr %167, ptr %170, align 4
  br label %171

171:                                              ; preds = %169, %165, %150
  %172 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 24
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  store ptr @ci_hdrc_enter_lpm_common, ptr %172, align 4
  br label %182

176:                                              ; preds = %120, %114, %96, %86, %76, %30
  %177 = phi i32 [ %71, %76 ], [ %81, %86 ], [ %91, %96 ], [ %32, %30 ], [ %117, %114 ], [ %123, %120 ]
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176, %45, %23
  %180 = phi i32 [ %177, %176 ], [ %51, %45 ], [ %26, %23 ]
  %181 = inttoptr i32 %180 to ptr
  br label %206

182:                                              ; preds = %176, %175, %171
  %183 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ci_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #9
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = inttoptr i32 %183 to ptr
  br label %206

187:                                              ; preds = %182
  %188 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.3, i32 noundef %183) #9
  %189 = icmp eq ptr %188, null
  br i1 %189, label %203, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.platform_device, ptr %188, i32 0, i32 3
  %192 = getelementptr inbounds %struct.platform_device, ptr %188, i32 0, i32 3, i32 1
  store ptr %0, ptr %192, align 4
  tail call void @device_set_of_node_from_dev(ptr noundef %191, ptr noundef %0) #9
  %193 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %188, ptr noundef %1, i32 noundef %2) #9
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = tail call i32 @platform_device_add_data(ptr noundef nonnull %188, ptr noundef %3, i32 noundef 140) #9
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = tail call i32 @platform_device_add(ptr noundef nonnull %188) #9
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %198, %195, %190
  %202 = phi i32 [ %193, %190 ], [ %196, %195 ], [ %199, %198 ]
  tail call void @platform_device_put(ptr noundef nonnull %188) #9
  br label %203

203:                                              ; preds = %201, %187
  %204 = phi i32 [ %202, %201 ], [ -12, %187 ]
  tail call void @ida_free(ptr noundef nonnull @ci_ida, i32 noundef %183) #9
  %205 = inttoptr i32 %204 to ptr
  br label %206

206:                                              ; preds = %203, %198, %185, %179
  %207 = phi ptr [ %181, %179 ], [ %186, %185 ], [ %205, %203 ], [ %188, %198 ]
  ret ptr %207
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_hdrc_remove_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @ida_free(ptr noundef nonnull @ci_ida, i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ci_hdrc_query_available_role(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %8, label %14, label %12

12:                                               ; preds = %5
  %13 = select i1 %11, i32 1, i32 3
  br label %16

14:                                               ; preds = %5
  %15 = select i1 %11, i32 0, i32 2
  br label %16

16:                                               ; preds = %14, %12, %1
  %17 = phi i32 [ 0, %1 ], [ %15, %14 ], [ %13, %12 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ci_hdrc_platform_register() #5 section ".init.text" {
  tail call void @ci_hdrc_host_driver_init() #9
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ci_hdrc_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ci_hdrc_platform_unregister() #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ci_hdrc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_usb_host_tpl_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_update_otg_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_cable_notifier(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i32 %1, 0
  %8 = zext i1 %7 to i8
  store i8 %8, ptr %4, align 4
  %9 = getelementptr i8, ptr %0, i32 -11
  store i8 1, ptr %9, align 1
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !15
  %11 = getelementptr inbounds %struct.ci_hdrc, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @ci_irq_handler(i32 noundef %12, ptr noundef %6) #9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ci_hdrc_enter_lpm_common(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 12, i32 13
  %7 = select i1 %5, i32 8388608, i32 4194304
  %8 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 %6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %1, i1 %12, i1 false
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %8, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %18 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %19 = load i8, ptr %18, align 2, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = icmp eq i32 %15, 0
  %23 = select i1 %22, i32 8388608, i32 4194304
  %24 = or i32 %17, %23
  %25 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #9, !srcloc !12
  br label %40

26:                                               ; preds = %2
  %27 = select i1 %1, i1 true, i1 %12
  br i1 %27, label %40, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %3, align 8
  %30 = load ptr, ptr %8, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %32 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %33 = load i8, ptr %32, align 2, !range !10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = icmp eq i32 %29, 0
  %37 = select i1 %36, i32 -8388609, i32 -4194305
  %38 = and i32 %31, %37
  %39 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #9, !srcloc !12
  br label %40

40:                                               ; preds = %35, %28, %26, %21, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 43
  %4 = load i8, ptr %3, align 8, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  tail call void @disable_irq_nosync(i32 noundef %0) #9
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 44
  store i8 1, ptr %7, align 1
  %8 = load ptr, ptr %1, align 8
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 5) #9
  br label %66

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 6
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @hw_read_otgsc(ptr noundef %1, i32 noundef -1) #9
  %16 = load i8, ptr %11, align 8, !range !10
  %17 = icmp eq i8 %16, 0
  %18 = and i32 %15, 16777216
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  %21 = and i32 %15, 65536
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 39
  store i8 1, ptr %25, align 4
  tail call void @hw_write_otgsc(ptr noundef %1, i32 noundef 65536, i32 noundef 65536) #9
  %26 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  tail call void @disable_irq_nosync(i32 noundef %27) #9
  %28 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %31 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %30) #9
  br i1 %31, label %66, label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %26, align 8
  tail call void @enable_irq(i32 noundef %33) #9
  br label %66

34:                                               ; preds = %14
  %35 = and i32 %15, 134217728
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %17, i1 true, i1 %36
  %38 = and i32 %15, 524288
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 40
  store i8 1, ptr %42, align 1
  tail call void @hw_write_otgsc(ptr noundef %1, i32 noundef 524288, i32 noundef 524288) #9
  %43 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %44 = load i32, ptr %43, align 8
  tail call void @disable_irq_nosync(i32 noundef %44) #9
  %45 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %48 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %46, ptr noundef %47) #9
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = load i32, ptr %43, align 8
  tail call void @enable_irq(i32 noundef %50) #9
  br label %66

51:                                               ; preds = %34, %10
  %52 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = icmp ugt i32 %53, 1
  br i1 %56, label %61, label %57, !prof !13

57:                                               ; preds = %55
  %58 = getelementptr %struct.ci_hdrc, ptr %1, i32 0, i32 4, i32 %53
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62, !prof !13

61:                                               ; preds = %57, %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ci_role_driver, ptr %59, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef %1) #9
  br label %66

66:                                               ; preds = %62, %51, %49, %41, %32, %24, %6
  %67 = phi i32 [ 1, %6 ], [ %65, %62 ], [ 0, %51 ], [ 1, %24 ], [ 1, %32 ], [ 1, %41 ], [ 1, %49 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_otgsc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_write_otgsc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_usb_role_switch_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %10 [
    i32 0, label %11
    i32 1, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 33
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = phi i32 [ 0, %10 ], [ 1, %2 ], [ 2, %6 ]
  %13 = icmp eq i32 %1, 2
  %14 = select i1 %13, i32 1, i32 2
  %15 = icmp eq i32 %1, 1
  %16 = select i1 %15, i32 0, i32 %14
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 %16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp eq i32 %12, %1
  %23 = or i1 %22, %21
  br i1 %23, label %78, label %26

24:                                               ; preds = %11
  %25 = icmp eq i32 %12, %1
  br i1 %25, label %78, label %26

26:                                               ; preds = %24, %18
  %27 = load ptr, ptr %3, align 8
  %28 = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 4) #9
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 1
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  switch i32 %12, label %56 [
    i32 2, label %31
    i32 1, label %35
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %33, i32 0, i32 16
  br label %39

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %37, i32 0, i32 17
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi ptr [ %34, %31 ], [ %38, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ci_hdrc_cable, ptr %40, i32 0, i32 1
  store i8 1, ptr %43, align 1
  store i8 0, ptr %40, align 4
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !15
  %45 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @ci_irq_handler(i32 noundef %46, ptr noundef %3) #9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #9, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #9
  %48 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ne ptr %49, null
  %51 = icmp ne i32 %1, 0
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  tail call void @flush_workqueue(ptr noundef nonnull %49) #9
  br label %54

54:                                               ; preds = %53, %42
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  br label %56

56:                                               ; preds = %54, %39, %26
  %57 = phi i32 [ %55, %54 ], [ %30, %39 ], [ %30, %26 ]
  switch i32 %1, label %75 [
    i32 2, label %58
    i32 1, label %62
  ]

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %60, i32 0, i32 16
  br label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %64, i32 0, i32 17
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi ptr [ %61, %58 ], [ %65, %62 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ci_hdrc_cable, ptr %67, i32 0, i32 1
  store i8 1, ptr %70, align 1
  store i8 1, ptr %67, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !15
  %72 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %73 = load i32, ptr %72, align 8
  %74 = tail call i32 @ci_irq_handler(i32 noundef %73, ptr noundef %3) #9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #9, !srcloc !16
  br label %75

75:                                               ; preds = %69, %66, %56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %57) #9
  %76 = load ptr, ptr %3, align 8
  %77 = tail call i32 @__pm_runtime_idle(ptr noundef %76, i32 noundef 4) #9
  br label %78

78:                                               ; preds = %75, %24, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_usb_role_switch_get(ptr noundef %0) #0 {
  %2 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.ci_hdrc, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %2, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %11 [
    i32 0, label %12
    i32 1, label %7
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ci_hdrc, ptr %2, i32 0, i32 33
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = phi i32 [ 0, %11 ], [ 1, %1 ], [ 2, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_host_driver_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20) #10
  br label %536

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %8) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %536

13:                                               ; preds = %7
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4528, i32 noundef 3520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %536, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 1
  store i32 0, ptr %17, align 4
  store ptr %2, ptr %14, align 8
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 32
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %18, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 41
  %23 = trunc i32 %21 to i8
  %24 = lshr i8 %23, 5
  %25 = and i8 %24, 1
  store i8 %25, ptr %22, align 2
  %26 = load i32, ptr %20, align 4
  %27 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 42
  %28 = trunc i32 %26 to i8
  %29 = lshr i8 %28, 2
  %30 = and i8 %29, 1
  store i8 %30, ptr %27, align 1
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 2
  store ptr %9, ptr %33, align 8
  %34 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 3
  store ptr %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %18, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %9, i32 %36
  store ptr %37, ptr %34, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %39 = and i32 %38, 255
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 4
  store ptr %40, ptr %41, align 8
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 0
  store ptr %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %42, i32 8
  %45 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %42, i32 36
  %47 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 2
  store ptr %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %42, i32 56
  %49 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 3
  store ptr %48, ptr %49, align 4
  %50 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 4
  store ptr %40, ptr %50, align 4
  %51 = getelementptr i8, ptr %40, i32 4
  %52 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 5
  store ptr %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %40, i32 8
  %54 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 6
  store ptr %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %40, i32 20
  %56 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 7
  store ptr %55, ptr %56, align 4
  %57 = getelementptr i8, ptr %40, i32 24
  %58 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 8
  store ptr %57, ptr %58, align 4
  %59 = getelementptr i8, ptr %40, i32 28
  %60 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 9
  store ptr %59, ptr %60, align 4
  %61 = getelementptr i8, ptr %40, i32 32
  %62 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 10
  store ptr %61, ptr %62, align 4
  %63 = getelementptr i8, ptr %40, i32 48
  %64 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 11
  store ptr %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %40, i32 68
  %66 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 12
  store ptr %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %40, i32 132
  %68 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 13
  store ptr %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %40, i32 100
  %70 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 14
  store ptr %69, ptr %70, align 4
  %71 = getelementptr i8, ptr %40, i32 104
  %72 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 15
  store ptr %71, ptr %72, align 4
  %73 = getelementptr i8, ptr %40, i32 108
  %74 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 16
  store ptr %73, ptr %74, align 4
  %75 = getelementptr i8, ptr %40, i32 112
  %76 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 17
  store ptr %75, ptr %76, align 4
  %77 = getelementptr i8, ptr %40, i32 116
  %78 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 18
  store ptr %77, ptr %78, align 4
  %79 = getelementptr i8, ptr %40, i32 120
  %80 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 19
  store ptr %79, ptr %80, align 4
  %81 = getelementptr i8, ptr %40, i32 124
  %82 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 20
  store ptr %81, ptr %82, align 4
  %83 = getelementptr i8, ptr %40, i32 128
  %84 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 21
  store ptr %83, ptr %84, align 4
  %85 = getelementptr i8, ptr %51, i32 128
  %86 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 22
  store ptr %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %53, i32 128
  %88 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 23
  store ptr %87, ptr %88, align 4
  %89 = getelementptr i8, ptr %40, i32 12
  %90 = getelementptr i8, ptr %89, i32 128
  %91 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 24
  store ptr %90, ptr %91, align 4
  %92 = getelementptr i8, ptr %40, i32 16
  %93 = getelementptr i8, ptr %92, i32 128
  %94 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 25
  store ptr %93, ptr %94, align 4
  %95 = getelementptr i8, ptr %55, i32 128
  %96 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 26
  store ptr %95, ptr %96, align 4
  %97 = getelementptr i8, ptr %57, i32 128
  %98 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 27
  store ptr %97, ptr %98, align 4
  %99 = getelementptr i8, ptr %59, i32 128
  %100 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 28
  store ptr %99, ptr %100, align 4
  %101 = getelementptr i8, ptr %61, i32 128
  %102 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 29
  store ptr %101, ptr %102, align 4
  %103 = getelementptr i8, ptr %40, i32 36
  %104 = getelementptr i8, ptr %103, i32 128
  %105 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 30
  store ptr %104, ptr %105, align 4
  %106 = getelementptr i8, ptr %40, i32 40
  %107 = getelementptr i8, ptr %106, i32 128
  %108 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 31
  store ptr %107, ptr %108, align 4
  %109 = getelementptr i8, ptr %40, i32 44
  %110 = getelementptr i8, ptr %109, i32 128
  %111 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 32
  store ptr %110, ptr %111, align 4
  %112 = getelementptr i8, ptr %63, i32 128
  %113 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 33
  store ptr %112, ptr %113, align 4
  %114 = getelementptr i8, ptr %40, i32 52
  %115 = getelementptr i8, ptr %114, i32 128
  %116 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 34
  store ptr %115, ptr %116, align 4
  %117 = getelementptr i8, ptr %40, i32 56
  %118 = getelementptr i8, ptr %117, i32 128
  %119 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 35
  store ptr %118, ptr %119, align 4
  %120 = getelementptr i8, ptr %40, i32 60
  %121 = getelementptr i8, ptr %120, i32 128
  %122 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 36
  store ptr %121, ptr %122, align 4
  %123 = getelementptr i8, ptr %40, i32 64
  %124 = getelementptr i8, ptr %123, i32 128
  %125 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 6, i32 37
  store ptr %124, ptr %125, align 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %127 = lshr i32 %126, 17
  %128 = and i32 %127, 1
  store i32 %128, ptr %32, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %16
  %131 = load ptr, ptr %41, align 8
  %132 = load ptr, ptr %47, align 4
  br label %172

133:                                              ; preds = %16
  %134 = load ptr, ptr %34, align 4
  store ptr %134, ptr %43, align 4
  %135 = getelementptr i8, ptr %134, i32 8
  store ptr %135, ptr %45, align 4
  %136 = getelementptr i8, ptr %134, i32 36
  store ptr %136, ptr %47, align 4
  %137 = getelementptr i8, ptr %134, i32 252
  store ptr %137, ptr %49, align 4
  %138 = load ptr, ptr %41, align 4
  store ptr %138, ptr %50, align 4
  %139 = getelementptr i8, ptr %138, i32 4
  store ptr %139, ptr %52, align 4
  %140 = getelementptr i8, ptr %138, i32 8
  store ptr %140, ptr %54, align 4
  %141 = getelementptr i8, ptr %138, i32 20
  store ptr %141, ptr %56, align 4
  %142 = getelementptr i8, ptr %138, i32 24
  store ptr %142, ptr %58, align 4
  %143 = getelementptr i8, ptr %138, i32 28
  store ptr %143, ptr %60, align 4
  %144 = getelementptr i8, ptr %138, i32 32
  store ptr %144, ptr %62, align 4
  %145 = getelementptr i8, ptr %138, i32 48
  store ptr %145, ptr %64, align 4
  %146 = getelementptr i8, ptr %138, i32 68
  store ptr %146, ptr %66, align 4
  %147 = getelementptr i8, ptr %138, i32 132
  store ptr %147, ptr %68, align 4
  %148 = getelementptr i8, ptr %138, i32 196
  store ptr %148, ptr %70, align 4
  %149 = getelementptr i8, ptr %138, i32 200
  store ptr %149, ptr %72, align 4
  %150 = getelementptr i8, ptr %138, i32 216
  store ptr %150, ptr %74, align 4
  %151 = getelementptr i8, ptr %138, i32 220
  store ptr %151, ptr %76, align 4
  %152 = getelementptr i8, ptr %138, i32 224
  store ptr %152, ptr %78, align 4
  %153 = getelementptr i8, ptr %138, i32 228
  store ptr %153, ptr %80, align 4
  %154 = getelementptr i8, ptr %138, i32 232
  store ptr %154, ptr %82, align 4
  %155 = getelementptr i8, ptr %138, i32 236
  store ptr %155, ptr %84, align 4
  %156 = getelementptr i8, ptr %138, i32 240
  store ptr %156, ptr %86, align 4
  %157 = getelementptr i8, ptr %138, i32 244
  store ptr %157, ptr %88, align 4
  %158 = getelementptr i8, ptr %138, i32 248
  store ptr %158, ptr %91, align 4
  %159 = getelementptr i8, ptr %138, i32 252
  store ptr %159, ptr %94, align 4
  %160 = getelementptr i8, ptr %138, i32 256
  store ptr %160, ptr %96, align 4
  %161 = getelementptr i8, ptr %138, i32 260
  store ptr %161, ptr %98, align 4
  %162 = getelementptr i8, ptr %138, i32 264
  store ptr %162, ptr %100, align 4
  %163 = getelementptr i8, ptr %138, i32 268
  store ptr %163, ptr %102, align 4
  %164 = getelementptr i8, ptr %138, i32 272
  store ptr %164, ptr %105, align 4
  %165 = getelementptr i8, ptr %138, i32 276
  store ptr %165, ptr %108, align 4
  %166 = getelementptr i8, ptr %138, i32 280
  store ptr %166, ptr %111, align 4
  %167 = getelementptr i8, ptr %138, i32 284
  store ptr %167, ptr %113, align 4
  %168 = getelementptr i8, ptr %138, i32 288
  store ptr %168, ptr %116, align 4
  %169 = getelementptr i8, ptr %138, i32 292
  store ptr %169, ptr %119, align 4
  %170 = getelementptr i8, ptr %138, i32 296
  store ptr %170, ptr %122, align 4
  %171 = getelementptr i8, ptr %138, i32 300
  store ptr %171, ptr %125, align 4
  br label %172

172:                                              ; preds = %133, %130
  %173 = phi ptr [ %132, %130 ], [ %136, %133 ]
  %174 = phi ptr [ %131, %130 ], [ %138, %133 ]
  %175 = load ptr, ptr %33, align 8
  %176 = ptrtoint ptr %174 to i32
  %177 = ptrtoint ptr %175 to i32
  %178 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 5
  %179 = add i32 %176, 37
  %180 = sub i32 %179, %177
  %181 = lshr i32 %180, 2
  store i32 %181, ptr %178, align 4
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %183 = shl i32 %182, 1
  %184 = and i32 %183, 62
  %185 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 21
  store i32 %184, ptr %185, align 8
  %186 = icmp ugt i32 %184, 32
  br i1 %186, label %211, label %187

187:                                              ; preds = %172
  %188 = load ptr, ptr %19, align 4
  %189 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %188, i32 0, i32 24
  %190 = load ptr, ptr %189, align 4
  tail call void %190(ptr noundef nonnull %14, i1 noundef zeroext false) #9
  %191 = load i8, ptr %22, align 2, !range !10
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 0) #9, !srcloc !12
  %195 = load i8, ptr %22, align 2
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 -1) #9, !srcloc !12
  br label %199

199:                                              ; preds = %197, %193, %187
  %200 = load ptr, ptr %33, align 8
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %202 = lshr i32 %201, 25
  %203 = and i32 %202, 15
  switch i32 %203, label %212 [
    i32 2, label %204
    i32 0, label %210
  ]

204:                                              ; preds = %199
  %205 = load ptr, ptr %33, align 8
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %207 = lshr i32 %206, 21
  %208 = and i32 %207, 15
  %209 = add nuw nsw i32 %208, 20
  br label %212

210:                                              ; preds = %199
  br label %212

211:                                              ; preds = %172
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.21) #10
  br label %536

212:                                              ; preds = %210, %204, %199
  %213 = phi i32 [ %209, %204 ], [ 10, %210 ], [ 99, %199 ]
  %214 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 45
  store i32 %213, ptr %214, align 4
  %215 = tail call i32 @ci_ulpi_init(ptr noundef nonnull %14) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %536

217:                                              ; preds = %212
  %218 = load ptr, ptr %19, align 4
  %219 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 36
  store ptr %220, ptr %223, align 8
  br label %271

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %218, i32 0, i32 4
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  store ptr %226, ptr %229, align 4
  br label %271

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = tail call ptr @devm_phy_get(ptr noundef %232, ptr noundef nonnull @.str.22) #9
  %234 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 36
  store ptr %233, ptr %234, align 8
  %235 = icmp eq ptr %233, inttoptr (i32 -517 to ptr)
  br i1 %235, label %534, label %236

236:                                              ; preds = %230
  %237 = icmp ugt ptr %233, inttoptr (i32 -4096 to ptr)
  br i1 %237, label %238, label %239

238:                                              ; preds = %236
  store ptr null, ptr %234, align 8
  br label %241

239:                                              ; preds = %236
  %240 = icmp eq ptr %233, null
  br i1 %240, label %241, label %249

241:                                              ; preds = %239, %238
  %242 = load ptr, ptr %231, align 4
  %243 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %242, ptr noundef nonnull @.str.23, i8 noundef zeroext 0) #9
  %244 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  store ptr %243, ptr %244, align 4
  %245 = icmp eq ptr %243, inttoptr (i32 -517 to ptr)
  br i1 %245, label %534, label %246

246:                                              ; preds = %241
  %247 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  br i1 %247, label %248, label %249

248:                                              ; preds = %246
  store ptr null, ptr %244, align 4
  br label %249

249:                                              ; preds = %248, %246, %239
  %250 = load ptr, ptr %234, align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %271

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = load ptr, ptr %231, align 4
  %258 = tail call ptr @devm_usb_get_phy(ptr noundef %257, i32 noundef 1) #9
  store ptr %258, ptr %253, align 4
  %259 = icmp eq ptr %258, inttoptr (i32 -517 to ptr)
  br i1 %259, label %534, label %260

260:                                              ; preds = %256
  %261 = icmp ugt ptr %258, inttoptr (i32 -4096 to ptr)
  br i1 %261, label %268, label %262

262:                                              ; preds = %260, %252
  %263 = phi ptr [ %258, %260 ], [ %254, %252 ]
  %264 = load ptr, ptr %234, align 8
  %265 = icmp eq ptr %264, null
  %266 = icmp eq ptr %263, null
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %534, label %271

268:                                              ; preds = %260
  store ptr null, ptr %253, align 4
  %269 = load ptr, ptr %234, align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %534, label %271

271:                                              ; preds = %268, %262, %249, %228, %222
  %272 = load ptr, ptr %19, align 4
  %273 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %272, i32 0, i32 6
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, 4096
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %355

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %272, i32 0, i32 5
  %279 = load i32, ptr %278, align 4
  switch i32 %279, label %325 [
    i32 1, label %280
    i32 2, label %280
    i32 5, label %280
    i32 3, label %303
    i32 4, label %303
  ]

280:                                              ; preds = %277, %277, %277
  %281 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 36
  %282 = load ptr, ptr %281, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %291, label %284

284:                                              ; preds = %280
  %285 = tail call i32 @phy_init(ptr noundef nonnull %282) #9
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %353

287:                                              ; preds = %284
  %288 = load ptr, ptr %281, align 8
  %289 = tail call i32 @phy_power_on(ptr noundef %288) #9
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %302, label %348

291:                                              ; preds = %280
  %292 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %302, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.usb_phy, ptr %293, i32 0, i32 22
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %295
  %300 = tail call i32 %297(ptr noundef nonnull %293) #9
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %353

302:                                              ; preds = %299, %295, %291, %287
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  tail call void @hw_phymode_configure(ptr noundef nonnull %14) #9
  br label %355

303:                                              ; preds = %277, %277
  tail call void @hw_phymode_configure(ptr noundef nonnull %14) #9
  %304 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 36
  %305 = load ptr, ptr %304, align 8
  %306 = icmp eq ptr %305, null
  br i1 %306, label %314, label %307

307:                                              ; preds = %303
  %308 = tail call i32 @phy_init(ptr noundef nonnull %305) #9
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %353

310:                                              ; preds = %307
  %311 = load ptr, ptr %304, align 8
  %312 = tail call i32 @phy_power_on(ptr noundef %311) #9
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %355, label %348

314:                                              ; preds = %303
  %315 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %355, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.usb_phy, ptr %316, i32 0, i32 22
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %355, label %322

322:                                              ; preds = %318
  %323 = tail call i32 %320(ptr noundef nonnull %316) #9
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %355, label %353

325:                                              ; preds = %277
  %326 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 36
  %327 = load ptr, ptr %326, align 8
  %328 = icmp eq ptr %327, null
  br i1 %328, label %336, label %329

329:                                              ; preds = %325
  %330 = tail call i32 @phy_init(ptr noundef nonnull %327) #9
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %353

332:                                              ; preds = %329
  %333 = load ptr, ptr %326, align 8
  %334 = tail call i32 @phy_power_on(ptr noundef %333) #9
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %347, label %348

336:                                              ; preds = %325
  %337 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %347, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.usb_phy, ptr %338, i32 0, i32 22
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = tail call i32 %342(ptr noundef nonnull %338) #9
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344, %340, %336, %332
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  br label %355

348:                                              ; preds = %332, %310, %287
  %349 = phi ptr [ %281, %287 ], [ %304, %310 ], [ %326, %332 ]
  %350 = phi i32 [ %289, %287 ], [ %312, %310 ], [ %334, %332 ]
  %351 = load ptr, ptr %349, align 8
  %352 = tail call i32 @phy_exit(ptr noundef %351) #9
  br label %353

353:                                              ; preds = %348, %344, %329, %322, %307, %299, %284
  %354 = phi i32 [ %345, %344 ], [ %330, %329 ], [ %308, %307 ], [ %285, %284 ], [ %323, %322 ], [ %300, %299 ], [ %350, %348 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %354) #10
  br label %536

355:                                              ; preds = %347, %322, %318, %314, %310, %302, %271
  %356 = load i32, ptr %8, align 4
  %357 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 2, i32 1
  store i32 %356, ptr %357, align 4
  %358 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %359 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 3
  store i32 %358, ptr %359, align 8
  %360 = icmp slt i32 %358, 0
  br i1 %360, label %510, label %361

361:                                              ; preds = %355
  %362 = load ptr, ptr %19, align 4
  %363 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %362, i32 0, i32 6
  %364 = load i32, ptr %363, align 4
  %365 = and i32 %364, 16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 6
  store i8 0, ptr %368, align 8
  br label %377

369:                                              ; preds = %361
  %370 = load ptr, ptr %47, align 4
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %372 = and i32 %371, 384
  %373 = icmp eq i32 %372, 384
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 6
  store i8 %374, ptr %375, align 8
  br i1 %373, label %376, label %377

376:                                              ; preds = %369
  tail call void @hw_write_otgsc(ptr noundef nonnull %14, i32 noundef 2139029504, i32 noundef 8323072) #9
  br label %377

377:                                              ; preds = %376, %369, %367
  %378 = load ptr, ptr %19, align 4
  %379 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %378, i32 0, i32 7
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, -3
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %383, label %386

383:                                              ; preds = %377
  %384 = tail call i32 @ci_hdrc_host_init(ptr noundef nonnull %14) #9
  switch i32 %384, label %510 [
    i32 0, label %386
    i32 -6, label %385
  ]

385:                                              ; preds = %383
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.25) #10
  br label %386

386:                                              ; preds = %385, %383, %377
  %387 = and i32 %380, -2
  %388 = icmp eq i32 %387, 2
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = tail call i32 @ci_hdrc_gadget_init(ptr noundef nonnull %14) #9
  switch i32 %390, label %508 [
    i32 0, label %392
    i32 -6, label %391
  ]

391:                                              ; preds = %389
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.26) #10
  br label %392

392:                                              ; preds = %391, %389, %386
  %393 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 4
  %394 = load ptr, ptr %393, align 4
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %401

396:                                              ; preds = %392
  %397 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 4, i32 1
  %398 = load ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27) #10
  br label %506

401:                                              ; preds = %396, %392
  %402 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 6
  %403 = load i8, ptr %402, align 8, !range !10
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %413, label %405

405:                                              ; preds = %401
  %406 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 4, i32 1
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, null
  br i1 %408, label %413, label %409

409:                                              ; preds = %405
  %410 = tail call i32 @ci_hdrc_otg_init(ptr noundef nonnull %14) #9
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %409
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %410) #10
  br label %506

413:                                              ; preds = %409, %405, %401
  %414 = load ptr, ptr @ci_role_switch, align 4
  %415 = icmp eq ptr %414, null
  br i1 %415, label %422, label %416

416:                                              ; preds = %413
  store ptr %14, ptr getelementptr inbounds (%struct.usb_role_switch_desc, ptr @ci_role_switch, i32 0, i32 7), align 4
  %417 = tail call ptr @usb_role_switch_register(ptr noundef %2, ptr noundef nonnull @ci_role_switch) #9
  %418 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 13
  store ptr %417, ptr %418, align 8
  %419 = icmp ugt ptr %417, inttoptr (i32 -4096 to ptr)
  br i1 %419, label %420, label %422

420:                                              ; preds = %416
  %421 = ptrtoint ptr %417 to i32
  br label %497

422:                                              ; preds = %416, %413
  %423 = load ptr, ptr %393, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %439, label %425

425:                                              ; preds = %422
  %426 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 4, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %439, label %429

429:                                              ; preds = %425
  %430 = load i8, ptr %402, align 8, !range !10
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %436, label %432

432:                                              ; preds = %429
  %433 = tail call i32 @ci_otg_role(ptr noundef nonnull %14) #9
  %434 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 5
  store i32 %433, ptr %434, align 4
  tail call void @hw_write_otgsc(ptr noundef nonnull %14, i32 noundef 16777216, i32 noundef 16777216) #9
  %435 = load i32, ptr %434, align 4
  br label %442

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 5
  store i32 1, ptr %437, align 4
  %438 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 5
  br label %446

439:                                              ; preds = %425, %422
  %440 = zext i1 %424 to i32
  %441 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 5
  store i32 %440, ptr %441, align 4
  br label %442

442:                                              ; preds = %439, %432
  %443 = phi i32 [ %435, %432 ], [ %440, %439 ]
  %444 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 5
  %445 = icmp eq i32 %443, 1
  br i1 %445, label %446, label %449

446:                                              ; preds = %442, %436
  %447 = phi ptr [ %438, %436 ], [ %444, %442 ]
  tail call fastcc void @hw_write(ptr noundef nonnull %14, i32 noundef 4, i32 noundef 1, i32 noundef 0)
  tail call void @ci_handle_vbus_change(ptr noundef nonnull %14) #9
  %448 = load i32, ptr %447, align 4
  br label %449

449:                                              ; preds = %446, %442
  %450 = phi ptr [ %447, %446 ], [ %444, %442 ]
  %451 = phi i32 [ %448, %446 ], [ %443, %442 ]
  %452 = icmp ugt i32 %451, 1
  br i1 %452, label %461, label %453

453:                                              ; preds = %449
  %454 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 4, i32 %451
  %455 = load ptr, ptr %454, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %461, label %457

457:                                              ; preds = %453
  %458 = load ptr, ptr %455, align 4
  %459 = tail call i32 %458(ptr noundef nonnull %14) #9
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %473, label %461

461:                                              ; preds = %457, %453, %449
  %462 = phi i32 [ %459, %457 ], [ -6, %453 ], [ -22, %449 ]
  %463 = load i32, ptr %450, align 4
  %464 = icmp ugt i32 %463, 1
  br i1 %464, label %469, label %465, !prof !13

465:                                              ; preds = %461
  %466 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 4, i32 %463
  %467 = load ptr, ptr %466, align 4
  %468 = icmp eq ptr %467, null
  br i1 %468, label %469, label %470, !prof !13

469:                                              ; preds = %465, %461
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.ci_role_driver, ptr %467, i32 0, i32 3
  %472 = load ptr, ptr %471, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef %472) #10
  br label %491

473:                                              ; preds = %457
  store i32 %451, ptr %450, align 4
  %474 = load i32, ptr %359, align 8
  %475 = load ptr, ptr %19, align 4
  %476 = load ptr, ptr %475, align 4
  %477 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %474, ptr noundef nonnull @ci_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %476, ptr noundef nonnull %14) #9
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %491

479:                                              ; preds = %473
  %480 = tail call fastcc i32 @ci_extcon_register(ptr noundef nonnull %14)
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %491

482:                                              ; preds = %479
  %483 = load i8, ptr %27, align 1, !range !10
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %490, label %485

485:                                              ; preds = %482
  %486 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 2000) #9
  %487 = load ptr, ptr %14, align 8
  %488 = tail call i64 @ktime_get_mono_fast_ns() #9
  %489 = getelementptr inbounds %struct.device, ptr %487, i32 0, i32 11, i32 22
  store volatile i64 %488, ptr %489, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #9
  br label %490

490:                                              ; preds = %485, %482
  tail call void @device_set_wakeup_capable(ptr noundef %2, i1 noundef zeroext true) #9
  tail call void @dbg_create_files(ptr noundef nonnull %14) #9
  br label %536

491:                                              ; preds = %479, %473, %470
  %492 = phi i32 [ %477, %473 ], [ %480, %479 ], [ %462, %470 ]
  %493 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 13
  %494 = load ptr, ptr %493, align 8
  %495 = icmp eq ptr %494, null
  br i1 %495, label %497, label %496

496:                                              ; preds = %491
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %494) #9
  br label %497

497:                                              ; preds = %496, %491, %420
  %498 = phi i32 [ %421, %420 ], [ %492, %496 ], [ %492, %491 ]
  %499 = load i8, ptr %402, align 8, !range !10
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %506, label %501

501:                                              ; preds = %497
  %502 = getelementptr %struct.ci_hdrc, ptr %14, i32 0, i32 4, i32 1
  %503 = load ptr, ptr %502, align 4
  %504 = icmp eq ptr %503, null
  br i1 %504, label %506, label %505

505:                                              ; preds = %501
  tail call void @ci_hdrc_otg_destroy(ptr noundef nonnull %14) #9
  br label %506

506:                                              ; preds = %505, %501, %497, %412, %400
  %507 = phi i32 [ %410, %412 ], [ %498, %505 ], [ %498, %501 ], [ %498, %497 ], [ -19, %400 ]
  tail call void @ci_hdrc_gadget_destroy(ptr noundef nonnull %14) #9
  br label %508

508:                                              ; preds = %506, %389
  %509 = phi i32 [ %507, %506 ], [ %390, %389 ]
  tail call void @ci_hdrc_host_destroy(ptr noundef nonnull %14) #9
  br label %510

510:                                              ; preds = %508, %383, %355
  %511 = phi i32 [ %509, %508 ], [ %358, %355 ], [ %384, %383 ]
  %512 = load ptr, ptr %19, align 4
  %513 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %512, i32 0, i32 6
  %514 = load i32, ptr %513, align 4
  %515 = and i32 %514, 4096
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %534

517:                                              ; preds = %510
  %518 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 36
  %519 = load ptr, ptr %518, align 8
  %520 = icmp eq ptr %519, null
  br i1 %520, label %525, label %521

521:                                              ; preds = %517
  %522 = tail call i32 @phy_power_off(ptr noundef nonnull %519) #9
  %523 = load ptr, ptr %518, align 8
  %524 = tail call i32 @phy_exit(ptr noundef %523) #9
  br label %534

525:                                              ; preds = %517
  %526 = getelementptr inbounds %struct.ci_hdrc, ptr %14, i32 0, i32 37
  %527 = load ptr, ptr %526, align 4
  %528 = icmp eq ptr %527, null
  br i1 %528, label %534, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.usb_phy, ptr %527, i32 0, i32 23
  %531 = load ptr, ptr %530, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %534, label %533

533:                                              ; preds = %529
  tail call void %531(ptr noundef nonnull %527) #9
  br label %534

534:                                              ; preds = %533, %529, %525, %521, %510, %268, %262, %256, %241, %230
  %535 = phi i32 [ -517, %230 ], [ -517, %241 ], [ -517, %256 ], [ %511, %510 ], [ %511, %521 ], [ %511, %525 ], [ %511, %529 ], [ %511, %533 ], [ -6, %268 ], [ -6, %262 ]
  tail call void @ci_ulpi_exit(ptr noundef nonnull %14) #9
  br label %536

536:                                              ; preds = %534, %490, %353, %212, %211, %13, %11, %6
  %537 = phi i32 [ %12, %11 ], [ -19, %211 ], [ %354, %353 ], [ %535, %534 ], [ 0, %490 ], [ -19, %6 ], [ -12, %13 ], [ %215, %212 ]
  ret i32 %537
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %5) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 42
  %10 = load i8, ptr %9, align 1, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %13, i1 noundef zeroext true) #9
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !18
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #9, !srcloc !19
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  br label %20

20:                                               ; preds = %19, %12, %8
  tail call void @dbg_remove_files(ptr noundef %3) #9
  tail call void @ci_hdrc_gadget_destroy(ptr noundef %3) #9
  tail call void @ci_hdrc_host_destroy(ptr noundef %3) #9
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 6
  %22 = load i8, ptr %21, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.ci_hdrc, ptr %3, i32 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @ci_hdrc_otg_destroy(ptr noundef %3) #9
  br label %29

29:                                               ; preds = %28, %24, %20
  %30 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %31, i32 0, i32 24
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %3, i1 noundef zeroext true) #9
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %34, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4096
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 36
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @phy_power_off(ptr noundef nonnull %41) #9
  %45 = load ptr, ptr %40, align 8
  %46 = tail call i32 @phy_exit(ptr noundef %45) #9
  br label %56

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 37
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.usb_phy, ptr %49, i32 0, i32 23
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void %53(ptr noundef nonnull %49) #9
  br label %56

56:                                               ; preds = %55, %51, %47, %43, %29
  tail call void @ci_ulpi_exit(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_ulpi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_gadget_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_otg_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_otg_role(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_handle_vbus_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ci_extcon_register(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 4
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 17, i32 5
  %13 = tail call i32 @devm_extcon_register_notifier(ptr noundef %11, ptr noundef nonnull %6, i32 noundef 2, ptr noundef %12) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10, %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %16, i32 0, i32 16, i32 4
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %16, i32 0, i32 16, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %16, i32 0, i32 16, i32 5
  %26 = tail call i32 @devm_extcon_register_notifier(ptr noundef %24, ptr noundef nonnull %19, i32 noundef 1, ptr noundef %25) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %10
  %29 = phi ptr [ @.str.30, %10 ], [ @.str.31, %23 ]
  %30 = phi i32 [ %13, %10 ], [ %26, %23 ]
  %31 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %29) #10
  br label %32

32:                                               ; preds = %28, %23, %15
  %33 = phi i32 [ 0, %23 ], [ 0, %15 ], [ %30, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_create_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_otg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_gadget_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_host_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_ulpi_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_remove_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @role_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = icmp ugt i32 %7, 1
  br i1 %10, label %15, label %11, !prof !13

11:                                               ; preds = %9
  %12 = getelementptr %struct.ci_hdrc, ptr %5, i32 0, i32 4, i32 %7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %11, %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ci_role_driver, ptr %13, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i32 [ %19, %16 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @role_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.ci_hdrc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.ci_hdrc, ptr %6, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ci_role_driver, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @strlen(ptr noundef %16)
  %18 = tail call i32 @strncmp(ptr noundef %2, ptr noundef %16, i32 noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %21

20:                                               ; preds = %10, %4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.34) #10
  br label %57

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ci_role_driver, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strlen(ptr noundef %23)
  %25 = tail call i32 @strncmp(ptr noundef %2, ptr noundef %23, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %21, %14
  %28 = phi i32 [ 0, %14 ], [ 1, %21 ]
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %6, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  %34 = getelementptr inbounds %struct.ci_hdrc, ptr %6, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  tail call void @disable_irq(i32 noundef %35) #9
  %36 = load i32, ptr %29, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  store i32 2, ptr %29, align 4
  %39 = getelementptr %struct.ci_hdrc, ptr %6, i32 0, i32 4, i32 %36
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ci_role_driver, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %6) #9
  br label %43

43:                                               ; preds = %38, %32
  %44 = getelementptr %struct.ci_hdrc, ptr %6, i32 0, i32 4, i32 %28
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 4
  %49 = tail call i32 %48(ptr noundef %6) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  store i32 %28, ptr %29, align 4
  br i1 %19, label %53, label %52

52:                                               ; preds = %51
  tail call void @ci_handle_vbus_change(ptr noundef %6) #9
  br label %53

53:                                               ; preds = %52, %51, %47, %43
  %54 = phi i32 [ %3, %52 ], [ %3, %51 ], [ -6, %43 ], [ %49, %47 ]
  %55 = load i32, ptr %34, align 8
  tail call void @enable_irq(i32 noundef %55) #9
  %56 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #9
  br label %57

57:                                               ; preds = %53, %27, %21, %20
  %58 = phi i32 [ -1, %20 ], [ -22, %27 ], [ %54, %53 ], [ -22, %21 ]
  ret i32 %58
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @flush_workqueue(ptr noundef nonnull %5) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 43
  %10 = load i8, ptr %9, align 8, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #9
  %14 = load i8, ptr %9, align 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1370, i32 noundef 9, ptr noundef null) #9
  br label %65

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 37
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usb_phy, ptr %28, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef nonnull %28, i1 noundef zeroext true) #9
  br label %36

36:                                               ; preds = %34, %30, %26
  %37 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 1) #9
  br label %40

40:                                               ; preds = %36, %22, %17
  %41 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  tail call void @disable_irq(i32 noundef %42) #9
  %43 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %44, i32 0, i32 24
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %3, i1 noundef zeroext true) #9
  %47 = load ptr, ptr %43, align 4
  %48 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %47, i32 0, i32 18
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = add i32 %49, 50
  tail call void @usleep_range_state(i32 noundef %49, i32 noundef %52, i32 noundef 2) #9
  br label %53

53:                                               ; preds = %51, %40
  %54 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 37
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.usb_phy, ptr %55, i32 0, i32 26
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 %59(ptr noundef nonnull %55, i32 noundef 1) #9
  br label %63

63:                                               ; preds = %61, %57, %53
  store i8 1, ptr %9, align 8
  %64 = load i32, ptr %41, align 8
  tail call void @enable_irq(i32 noundef %64) #9
  br label %65

65:                                               ; preds = %63, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_resume(ptr noundef %0) #0 {
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
  %13 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #9
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = tail call fastcc i32 @ci_controller_resume(ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 42
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #9
  %24 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %0) #9
  br label %25

25:                                               ; preds = %23, %19, %16
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 43
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1416, i32 noundef 9, ptr noundef null) #9
  br label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_phy, ptr %10, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef nonnull %10, i1 noundef zeroext true) #9
  br label %18

18:                                               ; preds = %16, %12, %8
  %19 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  tail call void @disable_irq(i32 noundef %20) #9
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %22, i32 0, i32 24
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %3, i1 noundef zeroext true) #9
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %25, i32 0, i32 18
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = add i32 %27, 50
  tail call void @usleep_range_state(i32 noundef %27, i32 noundef %30, i32 noundef 2) #9
  br label %31

31:                                               ; preds = %29, %18
  %32 = load ptr, ptr %9, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.usb_phy, ptr %32, i32 0, i32 26
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef nonnull %32, i32 noundef 1) #9
  br label %40

40:                                               ; preds = %38, %34, %31
  store i8 1, ptr %4, align 8
  %41 = load i32, ptr %19, align 8
  tail call void @enable_irq(i32 noundef %41) #9
  br label %42

42:                                               ; preds = %40, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @ci_controller_resume(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ci_controller_resume(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 43
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1323, i32 noundef 9, ptr noundef null) #9
  br label %84

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 24
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %3, i1 noundef zeroext false) #9
  %13 = tail call i32 @ci_ulpi_resume(ptr noundef %3) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef nonnull %17, i32 noundef 0) #9
  %25 = load ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %25, %23 ], [ %17, %19 ]
  %29 = getelementptr inbounds %struct.usb_phy, ptr %28, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %30(ptr noundef nonnull %28, i1 noundef zeroext false) #9
  br label %34

34:                                               ; preds = %32, %27, %23
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  br label %35

35:                                               ; preds = %34, %15
  store i8 0, ptr %4, align 8
  %36 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 44
  %37 = load i8, ptr %36, align 1, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %84, label %39

39:                                               ; preds = %35
  store i8 0, ptr %36, align 1
  %40 = load ptr, ptr %3, align 8
  %41 = tail call i64 @ktime_get_mono_fast_ns() #9
  %42 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 11, i32 22
  store volatile i64 %41, ptr %42, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = tail call i32 @__pm_runtime_suspend(ptr noundef %43, i32 noundef 13) #9
  %45 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  tail call void @enable_irq(i32 noundef %46) #9
  %47 = tail call i32 @hw_read_otgsc(ptr noundef %3, i32 noundef -1) #9
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %48, i32 0, i32 17, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %66, label %52

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 6
  %54 = load i8, ptr %53, align 8, !range !10
  %55 = icmp eq i8 %54, 0
  %56 = and i32 %47, 16777216
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  %59 = and i32 %47, 65536
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !15
  %64 = load i32, ptr %45, align 8
  %65 = tail call i32 @ci_irq_handler(i32 noundef %64, ptr noundef %3) #9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #9, !srcloc !16
  br label %66

66:                                               ; preds = %62, %52, %39
  %67 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %48, i32 0, i32 16, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 6
  %72 = load i8, ptr %71, align 8, !range !10
  %73 = icmp eq i8 %72, 0
  %74 = and i32 %47, 134217728
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  %77 = and i32 %47, 524288
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !15
  %82 = load i32, ptr %45, align 8
  %83 = tail call i32 @ci_irq_handler(i32 noundef %82, ptr noundef %3) #9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #9, !srcloc !16
  br label %84

84:                                               ; preds = %80, %70, %66, %35, %8, %7
  %85 = phi i32 [ 0, %7 ], [ %13, %8 ], [ 0, %35 ], [ 0, %66 ], [ 0, %70 ], [ 0, %80 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_ulpi_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 4993418}
!9 = !{i64 2152532871}
!10 = !{i8 0, i8 2}
!11 = !{i64 2152534093}
!12 = !{i64 4993000}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153901670, i64 2153902160, i64 2153901707, i64 2153901763, i64 2153901797, i64 2153901821, i64 2153901862, i64 2153901883, i64 2153901911, i64 2153901945}
!15 = !{i64 317336, i64 317397}
!16 = !{i64 320353}
!17 = !{i64 2147923787}
!18 = !{i64 422097, i64 2147912068, i64 2147912094, i64 2147912141, i64 2147912163, i64 2147912191, i64 2147912211}
!19 = !{i64 408666, i64 408691, i64 408713, i64 408729, i64 408741, i64 408761, i64 408785, i64 408801, i64 408813}
!20 = !{i64 2147923913}
