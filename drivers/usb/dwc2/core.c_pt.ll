; ModuleID = '/llk/IR/drivers/usb/dwc2/core.c_pt.bc'
source_filename = "../drivers/usb/dwc2/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [36 x i8] c"%s: no global registers to restore\0A\00", align 1
@__func__.dwc2_restore_global_registers = private unnamed_addr constant [30 x i8] c"dwc2_restore_global_registers\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: HANG! Soft Reset timeout GRSTCTL_CSFTRST\0A\00", align 1
@__func__.dwc2_core_reset = private unnamed_addr constant [16 x i8] c"dwc2_core_reset\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: HANG! Soft Reset timeout GRSTCTL_CSFTRST_DONE\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: HANG! AHB Idle timeout GRSTCTL GRSTCTL_AHBIDLE\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"drivers/usb/dwc2/core.c\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s() Invalid dr_mode=%d\0A\00", align 1
@__func__.dwc2_force_dr_mode = private unnamed_addr constant [19 x i8] c"dwc2_force_dr_mode\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s:  HANG! AHB Idle GRSCTL\0A\00", align 1
@__func__.dwc2_flush_tx_fifo = private unnamed_addr constant [19 x i8] c"dwc2_flush_tx_fifo\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s:  HANG! timeout GRSTCTL GRSTCTL_TXFFLSH\0A\00", align 1
@__func__.dwc2_flush_rx_fifo = private unnamed_addr constant [19 x i8] c"dwc2_flush_rx_fifo\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: HANG! timeout GRSTCTL GRSTCTL_RXFFLSH\0A\00", align 1
@__UNIQUE_ID_description254 = internal constant [40 x i8] c"dwc2.description=DESIGNWARE HS OTG Core\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [27 x i8] c"dwc2.author=Synopsys, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [32 x i8] c"dwc2.file=drivers/usb/dwc2/dwc2\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [26 x i8] c"dwc2.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: Couldn't set %s mode\0A\00", align 1
@__func__.dwc2_wait_for_mode = private unnamed_addr constant [19 x i8] c"dwc2_wait_for_mode\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: Reset failed, aborting\00", align 1
@__func__.dwc2_fs_phy_init = private unnamed_addr constant [17 x i8] c"dwc2_fs_phy_init\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"FS PHY selected at HS!\0A\00", align 1
@__func__.dwc2_hs_phy_init = private unnamed_addr constant [17 x i8] c"dwc2_hs_phy_init\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_backup_global_registers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %10 = select i1 %8, i32 %5, i32 %9
  store i32 %10, ptr %2, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = load i8, ptr %6, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 1
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %22 = load i8, ptr %6, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 2
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %30 = load i8, ptr %6, align 8, !range !10
  %31 = icmp eq i8 %30, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %33 = select i1 %31, i32 %29, i32 %32
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 3
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %38 = load i8, ptr %6, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 4
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 40
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %46 = load i8, ptr %6, align 8, !range !10
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  %49 = select i1 %47, i32 %45, i32 %48
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 5
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 92
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %54 = load i8, ptr %6, align 8, !range !10
  %55 = icmp eq i8 %54, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  %57 = select i1 %55, i32 %53, i32 %56
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 10
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr i8, ptr %59, i32 3588
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %62 = load i8, ptr %6, align 8, !range !10
  %63 = icmp eq i8 %62, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %65 = select i1 %63, i32 %61, i32 %64
  %66 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 9
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr i8, ptr %67, i32 84
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %70 = load i8, ptr %6, align 8, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  %73 = select i1 %71, i32 %69, i32 %72
  %74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 7
  store i32 %73, ptr %74, align 4
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 48
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %78 = load i8, ptr %6, align 8, !range !10
  %79 = icmp eq i8 %78, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  %81 = select i1 %79, i32 %77, i32 %80
  %82 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 6
  store i32 %81, ptr %82, align 4
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 3584
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %86 = load i8, ptr %6, align 8, !range !10
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  %89 = select i1 %87, i32 %85, i32 %88
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 8
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 12
  store i8 1, ptr %91, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_restore_global_registers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 12
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dwc2_restore_global_registers) #6
  br label %163

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29
  store i8 0, ptr %2, align 4
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #5
  %13 = load i32, ptr %8, align 4
  %14 = load i8, ptr %9, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  br label %23

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %13) #5, !srcloc !11
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i8, ptr %9, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #5, !srcloc !11
  br label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %25) #5, !srcloc !11
  br label %37

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = load i8, ptr %9, align 8, !range !10
  %41 = icmp eq i8 %40, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #5, !srcloc !11
  br label %51

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %39) #5, !srcloc !11
  br label %51

51:                                               ; preds = %47, %42
  %52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = load i8, ptr %9, align 8, !range !10
  %55 = icmp eq i8 %54, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %57) #5, !srcloc !11
  br label %65

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %53) #5, !srcloc !11
  br label %65

65:                                               ; preds = %61, %56
  %66 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = load i8, ptr %9, align 8, !range !10
  %69 = icmp eq i8 %68, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #5, !srcloc !11
  br label %79

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %67) #5, !srcloc !11
  br label %79

79:                                               ; preds = %75, %70
  %80 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = load i8, ptr %9, align 8, !range !10
  %83 = icmp eq i8 %82, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %85) #5, !srcloc !11
  br label %93

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %81) #5, !srcloc !11
  br label %93

93:                                               ; preds = %89, %84
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = load i8, ptr %9, align 8, !range !10
  %97 = icmp eq i8 %96, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = tail call i32 @llvm.bswap.i32(i32 %95) #5
  %100 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %99) #5, !srcloc !11
  br label %107

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %95) #5, !srcloc !11
  br label %107

107:                                              ; preds = %103, %98
  %108 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 9
  %109 = load i32, ptr %108, align 4
  %110 = load i8, ptr %9, align 8, !range !10
  %111 = icmp eq i8 %110, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  %114 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %113) #5, !srcloc !11
  br label %121

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %109) #5, !srcloc !11
  br label %121

121:                                              ; preds = %117, %112
  %122 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 7
  %123 = load i32, ptr %122, align 4
  %124 = load i8, ptr %9, align 8, !range !10
  %125 = icmp eq i8 %124, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = tail call i32 @llvm.bswap.i32(i32 %123) #5
  %128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %127) #5, !srcloc !11
  br label %135

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %123) #5, !srcloc !11
  br label %135

135:                                              ; preds = %131, %126
  %136 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 8
  %137 = load i32, ptr %136, align 4
  %138 = load i8, ptr %9, align 8, !range !10
  %139 = icmp eq i8 %138, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = tail call i32 @llvm.bswap.i32(i32 %137) #5
  %142 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %141) #5, !srcloc !11
  br label %149

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i8, ptr %147, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %137) #5, !srcloc !11
  br label %149

149:                                              ; preds = %145, %140
  %150 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = load i8, ptr %9, align 8, !range !10
  %153 = icmp eq i8 %152, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = tail call i32 @llvm.bswap.i32(i32 %151) #5
  %156 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %155) #5, !srcloc !11
  br label %163

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %151) #5, !srcloc !11
  br label %163

163:                                              ; preds = %159, %154, %5
  %164 = phi i32 [ -22, %5 ], [ 0, %154 ], [ 0, %159 ]
  ret i32 %164
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_exit_partial_power_down(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @dwc2_host_exit_partial_power_down(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #5
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @dwc2_gadget_exit_partial_power_down(ptr noundef %0, i1 noundef zeroext %2) #5
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_exit_partial_power_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_enter_partial_power_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = lshr i32 %5, 24
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @dwc2_host_enter_partial_power_down(ptr noundef %0) #5
  br label %17

15:                                               ; preds = %1
  %16 = tail call i32 @dwc2_gadget_enter_partial_power_down(ptr noundef %0) #5
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_enter_partial_power_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_enter_partial_power_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hib_restore_common(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 88
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %10, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !11
  br label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #5, !srcloc !11
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #5
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 88
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %26 = load i8, ptr %8, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = and i32 %29, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %27, label %35, label %31

31:                                               ; preds = %21
  %32 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !11
  br label %38

35:                                               ; preds = %21
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #5, !srcloc !11
  br label %38

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #5
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 88
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %43 = load i8, ptr %8, align 8, !range !10
  %44 = icmp eq i8 %43, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = or i32 %46, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %44, label %52, label %48

48:                                               ; preds = %38
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !11
  br label %55

52:                                               ; preds = %38
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %47) #5, !srcloc !11
  br label %55

55:                                               ; preds = %52, %48
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #5
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 88
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %60 = load i8, ptr %8, align 8, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  %63 = select i1 %61, i32 %59, i32 %62
  %64 = and i32 %63, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %61, label %69, label %65

65:                                               ; preds = %55
  %66 = tail call i32 @llvm.bswap.i32(i32 %64) #5
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i8, ptr %67, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #5, !srcloc !11
  br label %72

69:                                               ; preds = %55
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr i8, ptr %70, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %64) #5, !srcloc !11
  br label %72

72:                                               ; preds = %69, %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 10737400) #5
  %74 = icmp eq i32 %2, 0
  %75 = icmp ne i32 %1, 0
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 15032360) #5
  br label %79

79:                                               ; preds = %77, %72
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 88
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %83 = load i8, ptr %8, align 8, !range !10
  %84 = icmp eq i8 %83, 0
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  %86 = select i1 %84, i32 %82, i32 %85
  %87 = or i32 %86, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %84, label %92, label %88

88:                                               ; preds = %79
  %89 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr i8, ptr %90, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #5, !srcloc !11
  br label %95

92:                                               ; preds = %79
  %93 = load ptr, ptr %4, align 4
  %94 = getelementptr i8, ptr %93, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %87) #5, !srcloc !11
  br label %95

95:                                               ; preds = %92, %88
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 2147480) #5
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr i8, ptr %97, i32 88
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %100 = load i8, ptr %8, align 8, !range !10
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #5
  %103 = select i1 %101, i32 %99, i32 %102
  %104 = and i32 %103, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %101, label %109, label %105

105:                                              ; preds = %95
  %106 = tail call i32 @llvm.bswap.i32(i32 %104) #5
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr i8, ptr %107, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #5, !srcloc !11
  br label %112

109:                                              ; preds = %95
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr i8, ptr %110, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %104) #5, !srcloc !11
  br label %112

112:                                              ; preds = %109, %105
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 2147480) #5
  %114 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 30
  %115 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 31
  %116 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 8
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, -16384
  %119 = select i1 %74, i32 402653184, i32 1610612736
  %120 = and i32 %117, %119
  %121 = icmp eq i32 %120, 0
  %122 = or i32 %118, 131072
  %123 = select i1 %121, i32 %122, i32 %118
  %124 = load i8, ptr %8, align 8, !range !10
  %125 = icmp eq i8 %124, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %125, label %130, label %126

126:                                              ; preds = %112
  %127 = tail call i32 @llvm.bswap.i32(i32 %123) #5
  %128 = load ptr, ptr %4, align 4
  %129 = getelementptr i8, ptr %128, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #5, !srcloc !11
  br label %133

130:                                              ; preds = %112
  %131 = load ptr, ptr %4, align 4
  %132 = getelementptr i8, ptr %131, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %123) #5, !srcloc !11
  br label %133

133:                                              ; preds = %130, %126
  %134 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = or i32 %135, 1
  %137 = load i8, ptr %8, align 8, !range !10
  %138 = icmp eq i8 %137, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = tail call i32 @llvm.bswap.i32(i32 %136) #5
  %141 = load ptr, ptr %4, align 4
  %142 = getelementptr i8, ptr %141, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #5, !srcloc !11
  br label %146

143:                                              ; preds = %133
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr i8, ptr %144, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %136) #5, !srcloc !11
  br label %146

146:                                              ; preds = %143, %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %147 = load ptr, ptr %4, align 4
  %148 = getelementptr i8, ptr %147, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 -1) #5
  %149 = load i8, ptr %8, align 8, !range !10
  %150 = icmp eq i8 %149, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %151 = load ptr, ptr %4, align 4
  %152 = getelementptr i8, ptr %151, i32 24
  br i1 %150, label %154, label %153

153:                                              ; preds = %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 256) #5, !srcloc !11
  br label %155

154:                                              ; preds = %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 65536) #5, !srcloc !11
  br label %155

155:                                              ; preds = %154, %153
  %156 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 29, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = load i8, ptr %8, align 8, !range !10
  %159 = icmp eq i8 %158, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @llvm.bswap.i32(i32 %157) #5
  %162 = load ptr, ptr %4, align 4
  %163 = getelementptr i8, ptr %162, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #5, !srcloc !11
  br label %167

164:                                              ; preds = %155
  %165 = load ptr, ptr %4, align 4
  %166 = getelementptr i8, ptr %165, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %157) #5, !srcloc !11
  br label %167

167:                                              ; preds = %164, %160
  br i1 %74, label %204, label %168

168:                                              ; preds = %167
  %169 = load i32, ptr %115, align 4
  %170 = load i8, ptr %8, align 8, !range !10
  %171 = icmp eq i8 %170, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  %174 = load ptr, ptr %4, align 4
  %175 = getelementptr i8, ptr %174, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #5, !srcloc !11
  br label %179

176:                                              ; preds = %168
  %177 = load ptr, ptr %4, align 4
  %178 = getelementptr i8, ptr %177, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %169) #5, !srcloc !11
  br label %179

179:                                              ; preds = %176, %172
  %180 = icmp eq i32 %1, 0
  %181 = or i32 %123, 512
  %182 = select i1 %180, i32 %123, i32 %181
  %183 = load i8, ptr %8, align 8, !range !10
  %184 = icmp eq i8 %183, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = tail call i32 @llvm.bswap.i32(i32 %182) #5
  %187 = load ptr, ptr %4, align 4
  %188 = getelementptr i8, ptr %187, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #5, !srcloc !11
  br label %192

189:                                              ; preds = %179
  %190 = load ptr, ptr %4, align 4
  %191 = getelementptr i8, ptr %190, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %182) #5, !srcloc !11
  br label %192

192:                                              ; preds = %189, %185
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 2147480) #5
  %194 = or i32 %182, 8192
  %195 = load i8, ptr %8, align 8, !range !10
  %196 = icmp eq i8 %195, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = tail call i32 @llvm.bswap.i32(i32 %194) #5
  %199 = load ptr, ptr %4, align 4
  %200 = getelementptr i8, ptr %199, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #5, !srcloc !11
  br label %240

201:                                              ; preds = %192
  %202 = load ptr, ptr %4, align 4
  %203 = getelementptr i8, ptr %202, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %194) #5, !srcloc !11
  br label %240

204:                                              ; preds = %167
  %205 = load i32, ptr %114, align 4
  %206 = load i8, ptr %8, align 8, !range !10
  %207 = icmp eq i8 %206, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = tail call i32 @llvm.bswap.i32(i32 %205) #5
  %210 = load ptr, ptr %4, align 4
  %211 = getelementptr i8, ptr %210, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %209) #5, !srcloc !11
  br label %215

212:                                              ; preds = %204
  %213 = load ptr, ptr %4, align 4
  %214 = getelementptr i8, ptr %213, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %205) #5, !srcloc !11
  br label %215

215:                                              ; preds = %212, %208
  %216 = icmp eq i32 %1, 0
  %217 = or i32 %123, 520
  %218 = select i1 %216, i32 %217, i32 %123
  %219 = load i8, ptr %8, align 8, !range !10
  %220 = icmp eq i8 %219, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = tail call i32 @llvm.bswap.i32(i32 %218) #5
  %223 = load ptr, ptr %4, align 4
  %224 = getelementptr i8, ptr %223, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %222) #5, !srcloc !11
  br label %228

225:                                              ; preds = %215
  %226 = load ptr, ptr %4, align 4
  %227 = getelementptr i8, ptr %226, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %218) #5, !srcloc !11
  br label %228

228:                                              ; preds = %225, %221
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 2147480) #5
  %230 = or i32 %218, 8192
  %231 = load i8, ptr %8, align 8, !range !10
  %232 = icmp eq i8 %231, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %232, label %237, label %233

233:                                              ; preds = %228
  %234 = tail call i32 @llvm.bswap.i32(i32 %230) #5
  %235 = load ptr, ptr %4, align 4
  %236 = getelementptr i8, ptr %235, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %234) #5, !srcloc !11
  br label %240

237:                                              ; preds = %228
  %238 = load ptr, ptr %4, align 4
  %239 = getelementptr i8, ptr %238, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %230) #5, !srcloc !11
  br label %240

240:                                              ; preds = %237, %233, %201, %197
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %241(i32 noundef 2147480) #5
  br label %242

242:                                              ; preds = %253, %240
  %243 = phi i32 [ 0, %240 ], [ %255, %253 ]
  %244 = load ptr, ptr %4, align 4
  %245 = getelementptr i8, ptr %244, i32 20
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %247 = load i8, ptr %8, align 8, !range !10
  %248 = icmp eq i8 %247, 0
  %249 = shl i32 %246, 8
  %250 = select i1 %248, i32 %246, i32 %249
  %251 = and i32 %250, 65536
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %242
  %254 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %254(i32 noundef 214748) #5
  %255 = add nuw nsw i32 %243, 1
  %256 = icmp eq i32 %255, 20000
  br i1 %256, label %262, label %242

257:                                              ; preds = %242
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %258 = load ptr, ptr %4, align 4
  %259 = getelementptr i8, ptr %258, i32 20
  br i1 %248, label %261, label %260

260:                                              ; preds = %257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 256) #5, !srcloc !11
  br label %262

261:                                              ; preds = %257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 65536) #5, !srcloc !11
  br label %262

262:                                              ; preds = %261, %260, %253
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_wait_bit_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi i32 [ 0, %7 ], [ %22, %20 ]
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = load i8, ptr %8, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = and i32 %17, %2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #5
  %22 = add nuw i32 %10, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %9

24:                                               ; preds = %20, %9, %4
  %25 = phi i32 [ -110, %4 ], [ -110, %20 ], [ 0, %9 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_enter_hibernation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @dwc2_host_enter_hibernation(ptr noundef %0) #5
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 @dwc2_gadget_enter_hibernation(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_enter_hibernation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_enter_hibernation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_exit_hibernation(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @dwc2_host_exit_hibernation(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  br label %10

8:                                                ; preds = %4
  %9 = tail call i32 @dwc2_gadget_exit_hibernation(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_exit_hibernation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_exit_hibernation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_core_reset(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %6, 24
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, 7
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %61

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = load i8, ptr %7, align 8, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = shl i32 %17, 8
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = and i32 %21, 1048576
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 64
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %28 = load i8, ptr %7, align 8, !range !10
  %29 = icmp eq i8 %28, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %31 = select i1 %29, i32 %27, i32 %30
  %32 = icmp ugt i32 %31, 1330917641
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load ptr, ptr %3, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %36 = load i8, ptr %7, align 8, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %35, 8
  %39 = select i1 %37, i32 %35, i32 %38
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %33, %24
  %43 = load ptr, ptr %3, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %45 = load i8, ptr %7, align 8, !range !10
  %46 = icmp eq i8 %45, 0
  %47 = shl i32 %44, 8
  %48 = select i1 %46, i32 %44, i32 %47
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %52 = load i8, ptr %7, align 8, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = shl i32 %51, 24
  %55 = select i1 %53, i32 %51, i32 %54
  %56 = and i32 %48, 65536
  %57 = icmp ne i32 %56, 0
  %58 = and i32 %55, 536870912
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br label %61

61:                                               ; preds = %42, %33, %14, %2
  %62 = phi i1 [ %60, %42 ], [ true, %33 ], [ true, %2 ], [ true, %14 ]
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr i8, ptr %63, i32 16
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %66 = load i8, ptr %7, align 8, !range !10
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %69 = select i1 %67, i32 %65, i32 %68
  %70 = or i32 %69, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %67, label %75, label %71

71:                                               ; preds = %61
  %72 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #5, !srcloc !11
  br label %78

75:                                               ; preds = %61
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %70) #5, !srcloc !11
  br label %78

78:                                               ; preds = %75, %71
  %79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65534
  %82 = icmp ult i32 %81, 16906
  br i1 %82, label %83, label %100

83:                                               ; preds = %94, %78
  %84 = phi i32 [ %96, %94 ], [ 0, %78 ]
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr i8, ptr %85, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %88 = load i8, ptr %7, align 8, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = lshr i32 %87, 24
  %91 = select i1 %89, i32 %87, i32 %90
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %134, label %94

94:                                               ; preds = %83
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748) #5
  %96 = add nuw nsw i32 %84, 1
  %97 = icmp eq i32 %96, 10000
  br i1 %97, label %98, label %83

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dwc2_core_reset) #6
  br label %155

100:                                              ; preds = %111, %78
  %101 = phi i32 [ %113, %111 ], [ 0, %78 ]
  %102 = load ptr, ptr %3, align 4
  %103 = getelementptr i8, ptr %102, i32 16
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %105 = load i8, ptr %7, align 8, !range !10
  %106 = icmp eq i8 %105, 0
  %107 = shl i32 %104, 24
  %108 = select i1 %106, i32 %104, i32 %107
  %109 = and i32 %108, 536870912
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748) #5
  %113 = add nuw nsw i32 %101, 1
  %114 = icmp eq i32 %113, 10000
  br i1 %114, label %115, label %100

115:                                              ; preds = %111
  %116 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dwc2_core_reset) #6
  br label %155

117:                                              ; preds = %100
  %118 = load ptr, ptr %3, align 4
  %119 = getelementptr i8, ptr %118, i32 16
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %121 = load i8, ptr %7, align 8, !range !10
  %122 = icmp eq i8 %121, 0
  %123 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  %124 = select i1 %122, i32 %120, i32 %123
  %125 = and i32 %124, -536870914
  %126 = or i32 %125, 536870912
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %122, label %131, label %127

127:                                              ; preds = %117
  %128 = tail call i32 @llvm.bswap.i32(i32 %126) #5
  %129 = load ptr, ptr %3, align 4
  %130 = getelementptr i8, ptr %129, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #5, !srcloc !11
  br label %134

131:                                              ; preds = %117
  %132 = load ptr, ptr %3, align 4
  %133 = getelementptr i8, ptr %132, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %126) #5, !srcloc !11
  br label %134

134:                                              ; preds = %131, %127, %83
  %135 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 71
  store i32 0, ptr %135, align 8
  br label %136

136:                                              ; preds = %146, %134
  %137 = phi i32 [ 0, %134 ], [ %148, %146 ]
  %138 = load ptr, ptr %3, align 4
  %139 = getelementptr i8, ptr %138, i32 16
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %141 = load i8, ptr %7, align 8, !range !10
  %142 = icmp eq i8 %141, 0
  %143 = shl i32 %140, 24
  %144 = select i1 %142, i32 %140, i32 %143
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %146, label %152

146:                                              ; preds = %136
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748) #5
  %148 = add nuw nsw i32 %137, 1
  %149 = icmp eq i32 %148, 10000
  br i1 %149, label %150, label %136

150:                                              ; preds = %146
  %151 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dwc2_core_reset) #6
  br label %155

152:                                              ; preds = %136
  %153 = or i1 %62, %1
  br i1 %153, label %155, label %154

154:                                              ; preds = %152
  tail call fastcc void @dwc2_wait_for_mode(ptr noundef %0, i1 noundef zeroext true)
  br label %155

155:                                              ; preds = %154, %152, %150, %115, %98
  %156 = phi i32 [ -16, %98 ], [ -16, %150 ], [ -16, %115 ], [ 0, %152 ], [ 0, %154 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hsotg_wait_bit_clear(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi i32 [ 0, %7 ], [ %22, %20 ]
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = load i8, ptr %8, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = and i32 %17, %2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #5
  %22 = add nuw i32 %10, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %9

24:                                               ; preds = %20, %9, %4
  %25 = phi i32 [ -110, %4 ], [ -110, %20 ], [ 0, %9 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_wait_for_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i64 @ktime_get() #5
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %7, 24
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = xor i1 %14, %1
  br i1 %15, label %42, label %16

16:                                               ; preds = %31, %2
  %17 = tail call i64 @ktime_get() #5
  %18 = sub i64 %17, %3
  %19 = tail call i64 @llvm.abs.i64(i64 %18, i1 false) #5
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #7, !srcloc !12
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #7, !srcloc !13
  %22 = extractvalue { i64, i32 } %21, 0
  %23 = icmp slt i64 %18, 0
  %24 = lshr i64 %22, 18
  %25 = sub nsw i64 0, %24
  %26 = select i1 %23, i64 %25, i64 %24
  %27 = icmp sgt i64 %26, 109
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load ptr, ptr %0, align 8
  %30 = select i1 %1, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dwc2_wait_for_mode, ptr noundef nonnull %30) #6
  br label %42

31:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %35 = load i8, ptr %8, align 8, !range !10
  %36 = icmp eq i8 %35, 0
  %37 = lshr i32 %34, 24
  %38 = select i1 %36, i32 %34, i32 %37
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = xor i1 %40, %1
  br i1 %41, label %42, label %16

42:                                               ; preds = %31, %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_force_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %6, 24
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, 7
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  br i1 %1, label %17, label %20

17:                                               ; preds = %14
  %18 = icmp eq i32 %16, 2
  br i1 %18, label %19, label %23, !prof !14

19:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 550, i32 noundef 9, ptr noundef null) #5
  br label %43

20:                                               ; preds = %14
  %21 = icmp eq i32 %16, 1
  br i1 %21, label %22, label %23, !prof !14

22:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 553, i32 noundef 9, ptr noundef null) #5
  br label %43

23:                                               ; preds = %20, %17
  %24 = phi i32 [ -1073741825, %17 ], [ -536870913, %20 ]
  %25 = phi i32 [ 536870912, %17 ], [ 1073741824, %20 ]
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %29 = load i8, ptr %7, align 8, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = and i32 %32, %24
  %34 = or i32 %33, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %30, label %39, label %35

35:                                               ; preds = %23
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !11
  br label %42

39:                                               ; preds = %23
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %34) #5, !srcloc !11
  br label %42

42:                                               ; preds = %39, %35
  tail call fastcc void @dwc2_wait_for_mode(ptr noundef %0, i1 noundef zeroext %1)
  br label %43

43:                                               ; preds = %42, %22, %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_hw_is_otg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = lshr i32 %5, 24
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 7
  %12 = icmp ult i32 %11, 3
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_force_dr_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %85 [
    i32 1, label %4
    i32 2, label %17
    i32 3, label %18
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %10 = load i8, ptr %9, align 8, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = lshr i32 %8, 24
  %13 = select i1 %11, i32 %8, i32 %12
  %14 = and i32 %13, 7
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %87, label %16

16:                                               ; preds = %4
  tail call void @msleep(i32 noundef 50) #5
  br label %87

17:                                               ; preds = %1
  tail call void @dwc2_force_mode(ptr noundef %0, i1 noundef zeroext false)
  br label %87

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 72
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %24 = load i8, ptr %23, align 8, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = lshr i32 %22, 24
  %27 = select i1 %25, i32 %22, i32 %26
  %28 = and i32 %27, 7
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %30, label %87

30:                                               ; preds = %18
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr i8, ptr %31, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %34 = load i8, ptr %23, align 8, !range !10
  %35 = icmp eq i8 %34, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %37 = select i1 %35, i32 %33, i32 %36
  %38 = and i32 %37, -1610612737
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %35, label %43, label %39

39:                                               ; preds = %30
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %41 = load ptr, ptr %19, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !11
  br label %46

43:                                               ; preds = %30
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %38) #5, !srcloc !11
  br label %46

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr i8, ptr %47, i32 72
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %50 = load i8, ptr %23, align 8, !range !10
  %51 = icmp eq i8 %50, 0
  %52 = lshr i32 %49, 24
  %53 = select i1 %51, i32 %49, i32 %52
  %54 = and i32 %53, 7
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %87

56:                                               ; preds = %46
  %57 = load ptr, ptr %19, align 4
  %58 = getelementptr i8, ptr %57, i32 80
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %60 = load i8, ptr %23, align 8, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = shl i32 %59, 8
  %63 = select i1 %61, i32 %59, i32 %62
  %64 = and i32 %63, 1048576
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr %19, align 4
  %68 = getelementptr i8, ptr %67, i32 64
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %70 = load i8, ptr %23, align 8, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  %73 = select i1 %71, i32 %69, i32 %72
  %74 = icmp ugt i32 %73, 1330917641
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load ptr, ptr %19, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %78 = load i8, ptr %23, align 8, !range !10
  %79 = icmp eq i8 %78, 0
  %80 = lshr i32 %77, 8
  %81 = select i1 %79, i32 %77, i32 %80
  %82 = and i32 %81, 32768
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75, %66
  tail call void @msleep(i32 noundef 100) #5
  br label %87

85:                                               ; preds = %1
  %86 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dwc2_force_dr_mode, i32 noundef %3) #6
  br label %87

87:                                               ; preds = %85, %84, %75, %56, %46, %18, %17, %16, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_enable_acg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 9
  %3 = load i8, ptr %2, align 2, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 3588
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = or i32 %14, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %12, label %20, label %16

16:                                               ; preds = %5
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  br label %23

20:                                               ; preds = %5
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %15) #5, !srcloc !11
  br label %23

23:                                               ; preds = %20, %16, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @dwc2_dump_host_registers(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @dwc2_dump_global_registers(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_flush_tx_fifo(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  br label %5

5:                                                ; preds = %15, %2
  %6 = phi i32 [ 0, %2 ], [ %17, %15 ]
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %10 = load i8, ptr %4, align 8, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = shl i32 %9, 24
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %17 = add nuw nsw i32 %6, 1
  %18 = icmp eq i32 %17, 10000
  br i1 %18, label %19, label %5

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dwc2_flush_tx_fifo) #6
  %21 = load i8, ptr %4, align 8, !range !10
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i8 [ %21, %19 ], [ %10, %5 ]
  %24 = shl i32 %1, 6
  %25 = and i32 %24, 1984
  %26 = or i32 %25, 32
  %27 = icmp eq i8 %23, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !11
  br label %35

32:                                               ; preds = %22
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %26) #5, !srcloc !11
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %47, %35
  %37 = phi i32 [ %49, %47 ], [ 0, %35 ]
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %41 = load i8, ptr %4, align 8, !range !10
  %42 = icmp eq i8 %41, 0
  %43 = lshr i32 %40, 24
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = and i32 %44, 32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #5
  %49 = add nuw nsw i32 %37, 1
  %50 = icmp eq i32 %49, 10000
  br i1 %50, label %51, label %36

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dwc2_flush_tx_fifo) #6
  br label %53

53:                                               ; preds = %51, %36
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_flush_rx_fifo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ 0, %1 ], [ %16, %14 ]
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = load i8, ptr %3, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = shl i32 %8, 24
  %12 = select i1 %10, i32 %8, i32 %11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #5
  %16 = add nuw nsw i32 %5, 1
  %17 = icmp eq i32 %16, 10000
  br i1 %17, label %18, label %4

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dwc2_flush_rx_fifo) #6
  %20 = load i8, ptr %3, align 8, !range !10
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i8 [ %20, %18 ], [ %9, %4 ]
  %23 = icmp eq i8 %22, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  br i1 %23, label %27, label %26

26:                                               ; preds = %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 268435456) #5, !srcloc !11
  br label %28

27:                                               ; preds = %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16) #5, !srcloc !11
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %40, %28
  %30 = phi i32 [ %42, %40 ], [ 0, %28 ]
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %34 = load i8, ptr %3, align 8, !range !10
  %35 = icmp eq i8 %34, 0
  %36 = lshr i32 %33, 24
  %37 = select i1 %35, i32 %33, i32 %36
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #5
  %42 = add nuw nsw i32 %30, 1
  %43 = icmp eq i32 %42, 10000
  br i1 %43, label %44, label %29

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dwc2_flush_rx_fifo) #6
  br label %46

46:                                               ; preds = %44, %29
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_is_controller_alive(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = icmp ne i32 %10, -1
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_enable_global_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #5, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_disable_global_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %8, label %16, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !11
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #5, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_op_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = lshr i32 %5, 24
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 7
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_hw_is_host(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = lshr i32 %5, 24
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 7
  %12 = add nsw i32 %11, -5
  %13 = icmp ult i32 %12, 2
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dwc2_hw_is_device(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = lshr i32 %5, 24
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = and i32 %10, 7
  %12 = add nsw i32 %11, -3
  %13 = icmp ult i32 %12, 2
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_init_fs_ls_pclk_sel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 983040
  %5 = icmp eq i32 %4, 393216
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 10
  %8 = load i8, ptr %7, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ 1, %6 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 1024
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %22 = load i8, ptr %21, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %25 = select i1 %23, i32 %20, i32 %24
  %26 = and i32 %25, -4
  %27 = or i32 %26, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %23, label %32, label %28

28:                                               ; preds = %15
  %29 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !11
  br label %35

32:                                               ; preds = %15
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr i8, ptr %33, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %27) #5, !srcloc !11
  br label %35

35:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_phy_init(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = add i8 %4, -1
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %7, label %152

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %152

11:                                               ; preds = %7
  br i1 %1, label %12, label %59

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %18 = load i8, ptr %17, align 8, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %12
  %25 = or i32 %21, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %19, label %30, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !11
  br label %33

30:                                               ; preds = %24
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %25) #5, !srcloc !11
  br label %33

33:                                               ; preds = %30, %26
  %34 = tail call i32 @dwc2_core_reset(ptr noundef %0, i1 noundef zeroext false) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %150

36:                                               ; preds = %33, %12
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 23
  %38 = load i8, ptr %37, align 1, !range !10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr i8, ptr %41, i32 56
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %44 = load i8, ptr %17, align 8, !range !10
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %47 = select i1 %45, i32 %43, i32 %46
  %48 = and i32 %47, 65536
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = or i32 %47, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %45, label %56, label %52

52:                                               ; preds = %50
  %53 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr i8, ptr %54, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #5, !srcloc !11
  br label %59

56:                                               ; preds = %50
  %57 = load ptr, ptr %13, align 4
  %58 = getelementptr i8, ptr %57, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %51) #5, !srcloc !11
  br label %59

59:                                               ; preds = %56, %52, %40, %36, %11
  %60 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 20
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %65 = load i8, ptr %64, align 8, !range !10
  %66 = icmp eq i8 %65, 0
  %67 = lshr i32 %63, 24
  %68 = select i1 %66, i32 %63, i32 %67
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 983040
  %75 = icmp eq i32 %74, 393216
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 10
  %78 = load i8, ptr %77, align 1, !range !10
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %71
  %81 = load i8, ptr %8, align 2
  %82 = icmp eq i8 %81, 0
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i32 [ 1, %76 ], [ %83, %80 ]
  %86 = load ptr, ptr %60, align 4
  %87 = getelementptr i8, ptr %86, i32 1024
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %89 = load i8, ptr %64, align 8, !range !10
  %90 = icmp eq i8 %89, 0
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  %92 = select i1 %90, i32 %88, i32 %91
  %93 = and i32 %92, -4
  %94 = or i32 %93, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %90, label %99, label %95

95:                                               ; preds = %84
  %96 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  %97 = load ptr, ptr %60, align 4
  %98 = getelementptr i8, ptr %97, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #5, !srcloc !11
  br label %102

99:                                               ; preds = %84
  %100 = load ptr, ptr %60, align 4
  %101 = getelementptr i8, ptr %100, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %94) #5, !srcloc !11
  br label %102

102:                                              ; preds = %99, %95, %59
  %103 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 8
  %104 = load i8, ptr %103, align 1, !range !10
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %239, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %60, align 4
  %108 = getelementptr i8, ptr %107, i32 12
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %110 = load i8, ptr %64, align 8, !range !10
  %111 = icmp eq i8 %110, 0
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  %113 = select i1 %111, i32 %109, i32 %112
  %114 = or i32 %113, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %111, label %119, label %115

115:                                              ; preds = %106
  %116 = tail call i32 @llvm.bswap.i32(i32 %114) #5
  %117 = load ptr, ptr %60, align 4
  %118 = getelementptr i8, ptr %117, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #5, !srcloc !11
  br label %122

119:                                              ; preds = %106
  %120 = load ptr, ptr %60, align 4
  %121 = getelementptr i8, ptr %120, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %114) #5, !srcloc !11
  br label %122

122:                                              ; preds = %119, %115
  %123 = load ptr, ptr %60, align 4
  %124 = getelementptr i8, ptr %123, i32 48
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %126 = load i8, ptr %64, align 8, !range !10
  %127 = icmp eq i8 %126, 0
  %128 = tail call i32 @llvm.bswap.i32(i32 %125) #5
  %129 = select i1 %127, i32 %125, i32 %128
  %130 = and i32 %129, -209715201
  %131 = or i32 %130, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %127, label %136, label %132

132:                                              ; preds = %122
  %133 = tail call i32 @llvm.bswap.i32(i32 %131) #5
  %134 = load ptr, ptr %60, align 4
  %135 = getelementptr i8, ptr %134, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #5, !srcloc !11
  br label %139

136:                                              ; preds = %122
  %137 = load ptr, ptr %60, align 4
  %138 = getelementptr i8, ptr %137, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %131) #5, !srcloc !11
  br label %139

139:                                              ; preds = %136, %132
  %140 = or i32 %130, 75497472
  %141 = load i8, ptr %64, align 8, !range !10
  %142 = icmp eq i8 %141, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  %145 = load ptr, ptr %60, align 4
  %146 = getelementptr i8, ptr %145, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #5, !srcloc !11
  br label %239

147:                                              ; preds = %139
  %148 = load ptr, ptr %60, align 4
  %149 = getelementptr i8, ptr %148, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %140) #5, !srcloc !11
  br label %239

150:                                              ; preds = %33
  %151 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_fs_phy_init) #6
  br label %284

152:                                              ; preds = %7, %2
  br i1 %1, label %153, label %202

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 12
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %158 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %159 = load i8, ptr %158, align 8, !range !10
  %160 = icmp eq i8 %159, 0
  %161 = tail call i32 @llvm.bswap.i32(i32 %157) #5
  %162 = select i1 %160, i32 %157, i32 %161
  %163 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  %164 = load i8, ptr %163, align 2
  switch i8 %164, label %184 [
    i8 2, label %165
    i8 1, label %177
  ]

165:                                              ; preds = %153
  %166 = and i32 %162, -153
  %167 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 4
  %168 = load i8, ptr %167, align 1, !range !10
  %169 = icmp eq i8 %168, 0
  %170 = select i1 %169, i32 16, i32 144
  %171 = or i32 %170, %166
  %172 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 36
  %173 = load i8, ptr %172, align 1, !range !10
  %174 = icmp eq i8 %173, 0
  %175 = or i32 %171, 18874368
  %176 = select i1 %174, i32 %171, i32 %175
  br label %186

177:                                              ; preds = %153
  %178 = and i32 %162, -25
  %179 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 3
  %180 = load i8, ptr %179, align 8
  %181 = icmp eq i8 %180, 16
  %182 = or i32 %178, 8
  %183 = select i1 %181, i32 %182, i32 %178
  br label %186

184:                                              ; preds = %153
  %185 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.13) #6
  br label %202

186:                                              ; preds = %177, %165
  %187 = phi i32 [ %183, %177 ], [ %176, %165 ]
  %188 = icmp eq i32 %187, %162
  br i1 %188, label %202, label %189

189:                                              ; preds = %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %160, label %194, label %190

190:                                              ; preds = %189
  %191 = tail call i32 @llvm.bswap.i32(i32 %187) #5
  %192 = load ptr, ptr %154, align 4
  %193 = getelementptr i8, ptr %192, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #5, !srcloc !11
  br label %197

194:                                              ; preds = %189
  %195 = load ptr, ptr %154, align 4
  %196 = getelementptr i8, ptr %195, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %187) #5, !srcloc !11
  br label %197

197:                                              ; preds = %194, %190
  %198 = tail call i32 @dwc2_core_reset(ptr noundef %0, i1 noundef zeroext false) #5
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_hs_phy_init) #6
  br label %284

202:                                              ; preds = %197, %186, %184, %152
  %203 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 20
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %207 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %208 = load i8, ptr %207, align 8, !range !10
  %209 = icmp eq i8 %208, 0
  %210 = lshr i32 %206, 24
  %211 = select i1 %209, i32 %206, i32 %210
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %202
  %215 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 1
  %216 = load i8, ptr %215, align 2
  %217 = icmp eq i8 %216, 1
  br i1 %217, label %218, label %239

218:                                              ; preds = %214
  %219 = load ptr, ptr %203, align 4
  %220 = getelementptr i8, ptr %219, i32 12
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %222 = load i8, ptr %207, align 8, !range !10
  %223 = icmp eq i8 %222, 0
  %224 = tail call i32 @llvm.bswap.i32(i32 %221) #5
  %225 = select i1 %223, i32 %221, i32 %224
  %226 = and i32 %225, -15361
  %227 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 3
  %228 = load i8, ptr %227, align 8
  %229 = icmp eq i8 %228, 16
  %230 = select i1 %229, i32 5120, i32 9216
  %231 = or i32 %226, %230
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %223, label %236, label %232

232:                                              ; preds = %218
  %233 = tail call i32 @llvm.bswap.i32(i32 %231) #5
  %234 = load ptr, ptr %203, align 4
  %235 = getelementptr i8, ptr %234, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #5, !srcloc !11
  br label %239

236:                                              ; preds = %218
  %237 = load ptr, ptr %203, align 4
  %238 = getelementptr i8, ptr %237, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %231) #5, !srcloc !11
  br label %239

239:                                              ; preds = %236, %232, %214, %202, %147, %143, %102
  %240 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 3
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 983040
  %243 = icmp eq i32 %242, 393216
  br i1 %243, label %244, label %266

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 10
  %246 = load i8, ptr %245, align 1, !range !10
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %266, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr i8, ptr %250, i32 12
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %253 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %254 = load i8, ptr %253, align 8, !range !10
  %255 = icmp eq i8 %254, 0
  %256 = tail call i32 @llvm.bswap.i32(i32 %252) #5
  %257 = select i1 %255, i32 %252, i32 %256
  %258 = or i32 %257, 655360
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %255, label %263, label %259

259:                                              ; preds = %248
  %260 = tail call i32 @llvm.bswap.i32(i32 %258) #5
  %261 = load ptr, ptr %249, align 4
  %262 = getelementptr i8, ptr %261, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #5, !srcloc !11
  br label %284

263:                                              ; preds = %248
  %264 = load ptr, ptr %249, align 4
  %265 = getelementptr i8, ptr %264, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %258) #5, !srcloc !11
  br label %284

266:                                              ; preds = %244, %239
  %267 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr i8, ptr %268, i32 12
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %271 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %272 = load i8, ptr %271, align 8, !range !10
  %273 = icmp eq i8 %272, 0
  %274 = tail call i32 @llvm.bswap.i32(i32 %270) #5
  %275 = select i1 %273, i32 %270, i32 %274
  %276 = and i32 %275, -655361
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %273, label %281, label %277

277:                                              ; preds = %266
  %278 = tail call i32 @llvm.bswap.i32(i32 %276) #5
  %279 = load ptr, ptr %267, align 4
  %280 = getelementptr i8, ptr %279, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #5, !srcloc !11
  br label %284

281:                                              ; preds = %266
  %282 = load ptr, ptr %267, align 4
  %283 = getelementptr i8, ptr %282, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %276) #5, !srcloc !11
  br label %284

284:                                              ; preds = %281, %277, %263, %259, %200, %150
  %285 = phi i32 [ %34, %150 ], [ %198, %200 ], [ 0, %259 ], [ 0, %263 ], [ 0, %277 ], [ 0, %281 ]
  ret i32 %285
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 3491891}
!9 = !{i64 2154474651}
!10 = !{i8 0, i8 2}
!11 = !{i64 3491473}
!12 = !{i64 872799, i64 872826}
!13 = !{i64 873494, i64 873521, i64 873554, i64 873575, i64 873602, i64 873628}
!14 = !{!"branch_weights", i32 1, i32 2000}
