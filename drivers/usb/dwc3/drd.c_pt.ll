; ModuleID = '/llk/IR/drivers/usb/dwc3/drd.c_pt.bc'
source_filename = "../drivers/usb/dwc3/drd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initialize peripheral\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"couldn't register cable notifier\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dwc3-otg\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to request irq #%d --> %d\0A\00", align 1
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"linux,extcon-name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_otg_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef 3) #6
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 256
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #6
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 49664, i32 noundef %5) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = and i32 %5, -65
  %24 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !13
  %26 = getelementptr i8, ptr %24, i32 -49408
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = tail call ptr @llvm.thread.pointer() #6
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %41 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %26, i32 noundef 49664, i32 noundef %23) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %42

42:                                               ; preds = %40, %29, %22
  tail call fastcc void @dwc3_otgregs_init(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_set_prtcap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_otgregs_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2816
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #6
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 52224, i32 noundef %5) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = or i32 %5, 8
  %24 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr i8, ptr %24, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !13
  %26 = getelementptr i8, ptr %24, i32 -49408
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = tail call ptr @llvm.thread.pointer() #6
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %41 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %26, i32 noundef 52224, i32 noundef %23) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %42

42:                                               ; preds = %40, %29, %22
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %46 = getelementptr i8, ptr %43, i32 -49408
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = tail call ptr @llvm.thread.pointer() #6
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %61 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %46, i32 noundef 49424, i32 noundef %45) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %62

62:                                               ; preds = %60, %49, %42
  %63 = and i32 %45, -3
  %64 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %65 = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !13
  %66 = getelementptr i8, ptr %64, i32 -49408
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %62
  %70 = tail call ptr @llvm.thread.pointer() #6
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %81 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %66, i32 noundef 49424, i32 noundef %63) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %82

82:                                               ; preds = %80, %69, %62
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr i8, ptr %83, i32 2816
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %86 = getelementptr i8, ptr %83, i32 -49408
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = tail call ptr @llvm.thread.pointer() #6
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %101 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %86, i32 noundef 52224, i32 noundef %85) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %102

102:                                              ; preds = %100, %89, %82
  %103 = and i32 %85, -4
  %104 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %105 = getelementptr i8, ptr %104, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #6, !srcloc !13
  %106 = getelementptr i8, ptr %104, i32 -49408
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = tail call ptr @llvm.thread.pointer() #6
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %121 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %106, i32 noundef 52224, i32 noundef %103) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %122

122:                                              ; preds = %120, %109, %102
  tail call fastcc void @dwc3_otg_clear_events(ptr noundef %0)
  tail call fastcc void @dwc3_otg_disable_events(ptr noundef %0, i32 noundef 268373760)
  tail call fastcc void @dwc3_otg_enable_events(ptr noundef %0, i32 noundef 268373760)
  %123 = load ptr, ptr %2, align 4
  %124 = getelementptr i8, ptr %123, i32 2820
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %126 = getelementptr i8, ptr %123, i32 -49408
  %127 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %122
  %130 = tail call ptr @llvm.thread.pointer() #6
  %131 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = lshr i32 %132, 5
  %134 = getelementptr i32, ptr @__cpu_online_mask, i32 %133
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %132, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %129
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %141 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %126, i32 noundef 52228, i32 noundef %125) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %142

142:                                              ; preds = %140, %129, %122
  %143 = and i32 %125, -84
  %144 = or i32 %143, 64
  %145 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %146 = getelementptr i8, ptr %145, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #6, !srcloc !13
  %147 = getelementptr i8, ptr %145, i32 -49408
  %148 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %142
  %151 = tail call ptr @llvm.thread.pointer() #6
  %152 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 8
  %154 = lshr i32 %153, 5
  %155 = getelementptr i32, ptr @__cpu_online_mask, i32 %154
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %153, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %150
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %162 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %147, i32 noundef 52228, i32 noundef %144) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %163

163:                                              ; preds = %161, %150, %142
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_otg_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call fastcc void @dwc3_otg_disable_events(ptr noundef %0, i32 noundef 268373760)
  tail call fastcc void @dwc3_otg_clear_events(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_otg_disable_events(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2828
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #6
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 52236, i32 noundef %6) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %2
  %24 = xor i32 %1, -1
  %25 = and i32 %6, %24
  %26 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %27 = getelementptr i8, ptr %26, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !13
  %28 = getelementptr i8, ptr %26, i32 -49408
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = tail call ptr @llvm.thread.pointer() #6
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %43 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %28, i32 noundef 52236, i32 noundef %25) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %44

44:                                               ; preds = %42, %31, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_otg_clear_events(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2824
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #6
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 52232, i32 noundef %5) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %24 = getelementptr i8, ptr %23, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %5) #6, !srcloc !13
  %25 = getelementptr i8, ptr %23, i32 -49408
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = tail call ptr @llvm.thread.pointer() #6
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %40 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %25, i32 noundef 52236, i32 noundef %5) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %41

41:                                               ; preds = %39, %28, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_otg_host_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2820
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #6
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 52228, i32 noundef %5) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = and i32 %5, -72
  %24 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr i8, ptr %24, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !13
  %26 = getelementptr i8, ptr %24, i32 -49408
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = tail call ptr @llvm.thread.pointer() #6
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %41 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %26, i32 noundef 52228, i32 noundef %23) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %42

42:                                               ; preds = %40, %29, %22
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 2816
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %46 = getelementptr i8, ptr %43, i32 -49408
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = tail call ptr @llvm.thread.pointer() #6
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %61 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %46, i32 noundef 52224, i32 noundef %45) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %62

62:                                               ; preds = %60, %49, %42
  %63 = and i32 %45, -33
  %64 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %65 = getelementptr i8, ptr %64, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !13
  %66 = getelementptr i8, ptr %64, i32 -49408
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %62
  %70 = tail call ptr @llvm.thread.pointer() #6
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %81 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %66, i32 noundef 52224, i32 noundef %63) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %82

82:                                               ; preds = %80, %69, %62
  %83 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %84 = load i48, ptr %83, align 4
  %85 = and i48 %84, 268435456
  %86 = icmp eq i48 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %82
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr i8, ptr %88, i32 256
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %91 = getelementptr i8, ptr %88, i32 -49408
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = tail call ptr @llvm.thread.pointer() #6
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %106 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %91, i32 noundef 49664, i32 noundef %90) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %107

107:                                              ; preds = %105, %94, %87
  %108 = or i32 %90, 64
  %109 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %110 = getelementptr i8, ptr %109, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #6, !srcloc !13
  %111 = getelementptr i8, ptr %109, i32 -49408
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = tail call ptr @llvm.thread.pointer() #6
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = lshr i32 %117, 5
  %119 = getelementptr i32, ptr @__cpu_online_mask, i32 %118
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %117, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %114
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %126 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %111, i32 noundef 49664, i32 noundef %108) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %127

127:                                              ; preds = %125, %114, %107, %82
  %128 = load ptr, ptr %2, align 4
  %129 = getelementptr i8, ptr %128, i32 2820
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %131 = getelementptr i8, ptr %128, i32 -49408
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %127
  %135 = tail call ptr @llvm.thread.pointer() #6
  %136 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 5
  %139 = getelementptr i32, ptr @__cpu_online_mask, i32 %138
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %137, 31
  %142 = shl nuw i32 1, %141
  %143 = and i32 %142, %140
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %134
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %146 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %131, i32 noundef 52228, i32 noundef %130) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %147

147:                                              ; preds = %145, %134, %127
  %148 = or i32 %130, 32
  %149 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %150 = getelementptr i8, ptr %149, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #6, !srcloc !13
  %151 = getelementptr i8, ptr %149, i32 -49408
  %152 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %147
  %155 = tail call ptr @llvm.thread.pointer() #6
  %156 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 5
  %159 = getelementptr i32, ptr @__cpu_online_mask, i32 %158
  %160 = load volatile i32, ptr %159, align 4
  %161 = and i32 %157, 31
  %162 = shl nuw i32 1, %161
  %163 = and i32 %162, %160
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %154
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %166 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %151, i32 noundef 52228, i32 noundef %148) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %167

167:                                              ; preds = %165, %154, %147
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_otg_update(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 32
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %323

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %323

10:                                               ; preds = %6
  br i1 %1, label %11, label %14

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 46
  %13 = load i32, ptr %12, align 4
  br label %40

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 2832
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = getelementptr i8, ptr %16, i32 -49408
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %34 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %19, i32 noundef 52240, i32 noundef %18) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %35

35:                                               ; preds = %33, %22, %14
  %36 = and i32 %18, 1
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 46
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %11
  %41 = phi i32 [ %13, %11 ], [ %38, %35 ]
  %42 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 46
  %43 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 45
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %323, label %46

46:                                               ; preds = %40
  switch i32 %44, label %136 [
    i32 1, label %47
    i32 2, label %91
  ]

47:                                               ; preds = %46
  tail call void @dwc3_host_exit(ptr noundef %0) #6
  %48 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #6
  %50 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 2820
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %54 = getelementptr i8, ptr %51, i32 -49408
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = tail call ptr @llvm.thread.pointer() #6
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %69 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %54, i32 noundef 52228, i32 noundef %53) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %70

70:                                               ; preds = %68, %57, %47
  %71 = and i32 %53, -34
  %72 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %73 = getelementptr i8, ptr %72, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !13
  %74 = getelementptr i8, ptr %72, i32 -49408
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = tail call ptr @llvm.thread.pointer() #6
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %89 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %74, i32 noundef 52228, i32 noundef %71) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %90

90:                                               ; preds = %88, %77, %70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #6
  br label %136

91:                                               ; preds = %46
  tail call void @dwc3_gadget_exit(ptr noundef %0) #6
  %92 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %92) #6
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %0) #6
  tail call fastcc void @dwc3_otg_disable_events(ptr noundef %0, i32 noundef 3328) #6
  %94 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 2820
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %98 = getelementptr i8, ptr %95, i32 -49408
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %91
  %102 = tail call ptr @llvm.thread.pointer() #6
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %104, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %109, %107
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %113 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %98, i32 noundef 52228, i32 noundef %97) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %114

114:                                              ; preds = %112, %101, %91
  %115 = and i32 %97, -83
  %116 = or i32 %115, 64
  %117 = load ptr, ptr %94, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %118 = getelementptr i8, ptr %117, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #6, !srcloc !13
  %119 = getelementptr i8, ptr %117, i32 -49408
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %114
  %123 = tail call ptr @llvm.thread.pointer() #6
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %134 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %119, i32 noundef 52228, i32 noundef %116) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %135

135:                                              ; preds = %133, %122, %114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %93) #6
  br label %136

136:                                              ; preds = %135, %90, %46
  %137 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #6
  %139 = load i32, ptr %42, align 4
  store i32 %139, ptr %43, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %138) #6
  %140 = load i32, ptr %42, align 4
  switch i32 %140, label %323 [
    i32 1, label %141
    i32 2, label %168
  ]

141:                                              ; preds = %136
  %142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #6
  tail call fastcc void @dwc3_otgregs_init(ptr noundef %0)
  tail call void @dwc3_otg_host_init(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %142) #6
  %143 = tail call i32 @dwc3_host_init(ptr noundef %0) #6
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %147 = load ptr, ptr %146, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str) #7
  br label %323

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.usb_phy, ptr %150, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.usb_otg, ptr %154, i32 0, i32 8
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = tail call i32 %158(ptr noundef nonnull %154, i1 noundef zeroext true) #6
  br label %162

162:                                              ; preds = %160, %156, %152, %148
  %163 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %323, label %166

166:                                              ; preds = %162
  %167 = tail call i32 @phy_set_mode_ext(ptr noundef nonnull %164, i32 noundef 1, i32 noundef 0) #6
  br label %323

168:                                              ; preds = %136
  %169 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #6
  tail call fastcc void @dwc3_otgregs_init(ptr noundef %0)
  %170 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr i8, ptr %171, i32 2816
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %174 = getelementptr i8, ptr %171, i32 -49408
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %168
  %178 = tail call ptr @llvm.thread.pointer() #6
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %189 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %174, i32 noundef 52224, i32 noundef %173) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %190

190:                                              ; preds = %188, %177, %168
  %191 = or i32 %173, 8
  %192 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %193 = getelementptr i8, ptr %192, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #6, !srcloc !13
  %194 = getelementptr i8, ptr %192, i32 -49408
  %195 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %190
  %198 = tail call ptr @llvm.thread.pointer() #6
  %199 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 2
  %200 = load i32, ptr %199, align 8
  %201 = lshr i32 %200, 5
  %202 = getelementptr i32, ptr @__cpu_online_mask, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %200, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %197
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %209 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %194, i32 noundef 52224, i32 noundef %191) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %210

210:                                              ; preds = %208, %197, %190
  %211 = load ptr, ptr %170, align 4
  %212 = getelementptr i8, ptr %211, i32 2820
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %214 = getelementptr i8, ptr %211, i32 -49408
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %210
  %218 = tail call ptr @llvm.thread.pointer() #6
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %229 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %214, i32 noundef 52228, i32 noundef %213) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %230

230:                                              ; preds = %228, %217, %210
  %231 = and i32 %213, -88
  %232 = or i32 %231, 64
  %233 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %234 = getelementptr i8, ptr %233, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %232) #6, !srcloc !13
  %235 = getelementptr i8, ptr %233, i32 -49408
  %236 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %230
  %239 = tail call ptr @llvm.thread.pointer() #6
  %240 = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 2
  %241 = load i32, ptr %240, align 8
  %242 = lshr i32 %241, 5
  %243 = getelementptr i32, ptr @__cpu_online_mask, i32 %242
  %244 = load volatile i32, ptr %243, align 4
  %245 = and i32 %241, 31
  %246 = shl nuw i32 1, %245
  %247 = and i32 %246, %244
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %238
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %250 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %235, i32 noundef 52228, i32 noundef %232) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %251

251:                                              ; preds = %249, %238, %230
  tail call fastcc void @dwc3_otg_enable_events(ptr noundef %0, i32 noundef 512) #6
  %252 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %253 = load i48, ptr %252, align 4
  %254 = and i48 %253, 268435456
  %255 = icmp eq i48 %254, 0
  br i1 %255, label %256, label %296

256:                                              ; preds = %251
  %257 = load ptr, ptr %170, align 4
  %258 = getelementptr i8, ptr %257, i32 256
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %260 = getelementptr i8, ptr %257, i32 -49408
  %261 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %256
  %264 = tail call ptr @llvm.thread.pointer() #6
  %265 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 2
  %266 = load i32, ptr %265, align 8
  %267 = lshr i32 %266, 5
  %268 = getelementptr i32, ptr @__cpu_online_mask, i32 %267
  %269 = load volatile i32, ptr %268, align 4
  %270 = and i32 %266, 31
  %271 = shl nuw i32 1, %270
  %272 = and i32 %271, %269
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %263
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %275 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %260, i32 noundef 49664, i32 noundef %259) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %276

276:                                              ; preds = %274, %263, %256
  %277 = or i32 %259, 64
  %278 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %279 = getelementptr i8, ptr %278, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %277) #6, !srcloc !13
  %280 = getelementptr i8, ptr %278, i32 -49408
  %281 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %276
  %284 = tail call ptr @llvm.thread.pointer() #6
  %285 = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 2
  %286 = load i32, ptr %285, align 8
  %287 = lshr i32 %286, 5
  %288 = getelementptr i32, ptr @__cpu_online_mask, i32 %287
  %289 = load volatile i32, ptr %288, align 4
  %290 = and i32 %286, 31
  %291 = shl nuw i32 1, %290
  %292 = and i32 %291, %289
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %283
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %295 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %280, i32 noundef 49664, i32 noundef %277) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %296

296:                                              ; preds = %294, %283, %276, %251
  %297 = tail call i32 @dwc3_event_buffers_setup(ptr noundef %0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %169) #6
  %298 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 23
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %311, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.usb_phy, ptr %299, i32 0, i32 5
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.usb_otg, ptr %303, i32 0, i32 8
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = tail call i32 %307(ptr noundef nonnull %303, i1 noundef zeroext false) #6
  br label %311

311:                                              ; preds = %309, %305, %301, %296
  %312 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 25
  %313 = load ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315

315:                                              ; preds = %311
  %316 = tail call i32 @phy_set_mode_ext(ptr noundef nonnull %313, i32 noundef 6, i32 noundef 0) #6
  br label %317

317:                                              ; preds = %315, %311
  %318 = tail call i32 @dwc3_gadget_init(ptr noundef %0) #6
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %322 = load ptr, ptr %321, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %322, ptr noundef nonnull @.str.1) #7
  br label %323

323:                                              ; preds = %320, %317, %166, %162, %145, %136, %40, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_host_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_event_buffers_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_event_buffers_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_drd_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.usb_role_switch_desc, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !16
  %7 = tail call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.7) #6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %6, i32 noundef 0) #6
  br label %36

10:                                               ; preds = %1
  %11 = call i32 @device_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 4
  %15 = call ptr @extcon_get_extcon_dev(ptr noundef %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %36

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #6, !annotation !16
  %20 = call i32 @__of_parse_phandle_with_args(ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #6
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %3, align 4
  %23 = select i1 %21, ptr %22, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  %24 = call zeroext i1 @of_graph_is_present(ptr noundef %23) #6
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = call ptr @of_graph_get_remote_node(ptr noundef %23, i32 noundef -1, i32 noundef -1) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call ptr @extcon_find_edev_by_node(ptr noundef nonnull %26) #6
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  call void @of_node_put(ptr noundef %26) #6
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi ptr [ %31, %30 ], [ null, %17 ]
  call void @of_node_put(ptr noundef %23) #6
  br label %36

34:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %35 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 35
  store ptr inttoptr (i32 -517 to ptr), ptr %35, align 4
  br label %40

36:                                               ; preds = %32, %13, %8
  %37 = phi ptr [ %9, %8 ], [ %33, %32 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %38 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 35
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %34
  %41 = phi ptr [ inttoptr (i32 -517 to ptr), %34 ], [ %37, %36 ]
  %42 = ptrtoint ptr %41 to i32
  br label %114

43:                                               ; preds = %36
  %44 = load ptr, ptr %5, align 4
  %45 = call zeroext i1 @device_property_present(ptr noundef %44, ptr noundef nonnull @.str.2) #6
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #6
  %47 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %47, i8 0, i32 32, i1 false) #6
  %48 = load ptr, ptr %5, align 4
  %49 = call i32 @usb_get_role_switch_default_mode(ptr noundef %48) #6
  %50 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 39
  %51 = icmp eq i32 %49, 1
  %52 = select i1 %51, i32 1, i32 2
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr %5, align 4
  %54 = call ptr @dev_fwnode(ptr noundef %53) #6
  store ptr %54, ptr %2, align 4
  %55 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %2, i32 0, i32 4
  store ptr @dwc3_usb_role_switch_set, ptr %55, align 4
  %56 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %2, i32 0, i32 5
  store ptr @dwc3_usb_role_switch_get, ptr %56, align 4
  %57 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %2, i32 0, i32 7
  store ptr %0, ptr %57, align 4
  %58 = load ptr, ptr %5, align 4
  %59 = call ptr @usb_role_switch_register(ptr noundef %58, ptr noundef nonnull %2) #6
  %60 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 38
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %63, label %62

62:                                               ; preds = %46
  call void @dwc3_set_mode(ptr noundef %0, i32 noundef %52) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #6
  br label %113

63:                                               ; preds = %46
  %64 = ptrtoint ptr %59 to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #6
  %65 = icmp slt ptr %59, null
  br i1 %65, label %114, label %113

66:                                               ; preds = %43
  %67 = load ptr, ptr %38, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 36
  store ptr @dwc3_drd_notifier, ptr %70, align 4
  %71 = call i32 @extcon_register_notifier(ptr noundef nonnull %67, i32 noundef 2, ptr noundef %70) #6
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.3) #7
  br label %114

75:                                               ; preds = %69
  %76 = load ptr, ptr %38, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %113, label %78

78:                                               ; preds = %75
  %79 = call i32 @extcon_get_state(ptr noundef nonnull %76, i32 noundef 2) #6
  %80 = icmp slt i32 %79, 1
  %81 = select i1 %80, i32 2, i32 1
  call void @dwc3_set_mode(ptr noundef %0, i32 noundef %81) #6
  br label %113

82:                                               ; preds = %66
  call void @dwc3_set_prtcap(ptr noundef %0, i32 noundef 3) #6
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i8, ptr %83, i32 -16
  %85 = call i32 @platform_get_irq_byname_optional(ptr noundef %84, ptr noundef nonnull @.str.10) #6
  %86 = icmp sgt i32 %85, 0
  %87 = icmp eq i32 %85, -517
  %88 = or i1 %86, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %82
  %90 = call i32 @platform_get_irq_byname_optional(ptr noundef %84, ptr noundef nonnull @.str.11) #6
  %91 = icmp sgt i32 %90, 0
  %92 = icmp eq i32 %90, -517
  %93 = or i1 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = call i32 @platform_get_irq(ptr noundef %84, i32 noundef 0) #6
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = icmp eq i32 %95, 0
  %99 = select i1 %98, i32 -22, i32 %95
  br label %114

100:                                              ; preds = %89, %82
  %101 = phi i32 [ %85, %82 ], [ %90, %89 ]
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100, %94
  %104 = phi i32 [ %101, %100 ], [ %95, %94 ]
  %105 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 44
  store i32 %104, ptr %105, align 4
  call fastcc void @dwc3_otg_disable_events(ptr noundef %0, i32 noundef 268373760)
  call fastcc void @dwc3_otg_clear_events(ptr noundef %0)
  %106 = load i32, ptr %105, align 4
  %107 = call i32 @request_threaded_irq(i32 noundef %106, ptr noundef nonnull @dwc3_otg_irq, ptr noundef nonnull @dwc3_otg_thread_irq, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %0) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %5, align 4
  %111 = load i32, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.5, i32 noundef %111, i32 noundef %107) #7
  br label %114

112:                                              ; preds = %103
  call void @dwc3_otg_init(ptr noundef %0)
  call void @dwc3_set_mode(ptr noundef %0, i32 noundef 3) #6
  br label %113

113:                                              ; preds = %112, %78, %75, %63, %62
  br label %114

114:                                              ; preds = %113, %109, %100, %97, %73, %63, %40
  %115 = phi i32 [ %42, %40 ], [ 0, %113 ], [ %71, %73 ], [ -19, %109 ], [ %64, %63 ], [ %101, %100 ], [ %99, %97 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_drd_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -476
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 2, i32 1
  tail call void @dwc3_set_mode(ptr noundef %4, i32 noundef %6) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_otg_irq(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2824
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #6
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 52232, i32 noundef %6) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %2
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %23
  %26 = and i32 %6, 268373760
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %30 = getelementptr i8, ptr %29, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %6) #6, !srcloc !13
  %31 = getelementptr i8, ptr %29, i32 -49408
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = tail call ptr @llvm.thread.pointer() #6
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %46 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %31, i32 noundef 52232, i32 noundef %6) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %74

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 45
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  %51 = icmp sgt i32 %6, -1
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 47
  store i8 1, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %57 = getelementptr i8, ptr %56, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %6) #6, !srcloc !13
  %58 = getelementptr i8, ptr %56, i32 -49408
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = tail call ptr @llvm.thread.pointer() #6
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %73 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %58, i32 noundef 52232, i32 noundef %6) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %74

74:                                               ; preds = %72, %61, %55, %45, %34, %28, %23
  %75 = phi i32 [ 0, %23 ], [ 0, %28 ], [ 0, %34 ], [ 0, %45 ], [ 2, %55 ], [ 2, %61 ], [ 2, %72 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_otg_thread_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.dwc3, ptr %1, i32 0, i32 47
  %5 = load i8, ptr %4, align 4, !range !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @dwc3_otg_host_init(ptr noundef %1)
  store i8 0, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %9 = load i16, ptr %3, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  tail call void @dwc3_set_mode(ptr noundef %1, i32 noundef 3) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_drd_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 35
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 36
  %12 = tail call i32 @extcon_unregister_notifier(ptr noundef nonnull %8, i32 noundef 2, ptr noundef %11) #6
  br label %13

13:                                               ; preds = %10, %6
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 33
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %23 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
  ]

17:                                               ; preds = %13
  tail call void @dwc3_host_exit(ptr noundef %0) #6
  br label %23

18:                                               ; preds = %13
  tail call void @dwc3_gadget_exit(ptr noundef %0) #6
  tail call void @dwc3_event_buffers_cleanup(ptr noundef %0) #6
  br label %23

19:                                               ; preds = %13
  tail call fastcc void @dwc3_otg_disable_events(ptr noundef %0, i32 noundef 268373760) #6
  tail call fastcc void @dwc3_otg_clear_events(ptr noundef %0) #6
  %20 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 46
  store i32 0, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #6
  tail call void @dwc3_otg_update(ptr noundef %0, i1 noundef zeroext true)
  br label %23

23:                                               ; preds = %19, %18, %17, %13
  %24 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 44
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %0) #6
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_otg_enable_events(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2828
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #6
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 52236, i32 noundef %6) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %2
  %24 = or i32 %6, %1
  %25 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %26 = getelementptr i8, ptr %25, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !13
  %27 = getelementptr i8, ptr %25, i32 -49408
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = tail call ptr @llvm.thread.pointer() #6
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %27, i32 noundef 52236, i32 noundef %24) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  br label %43

43:                                               ; preds = %41, %30, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_extcon_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_graph_is_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_find_edev_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_role_switch_default_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_usb_role_switch_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #6
  switch i32 %1, label %5 [
    i32 1, label %10
    i32 2, label %4
  ]

4:                                                ; preds = %2
  br label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 39
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %5, %4, %2
  %11 = phi i32 [ 2, %4 ], [ %1, %2 ], [ %9, %5 ]
  tail call void @dwc3_set_mode(ptr noundef %3, i32 noundef %11) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_usb_role_switch_get(ptr noundef %0) #0 {
  %2 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 33
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %11 [
    i32 1, label %16
    i32 2, label %7
    i32 3, label %8
  ]

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 45
  %10 = load i32, ptr %9, align 4
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 39
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i32 1, i32 2
  br label %16

16:                                               ; preds = %11, %8, %7, %1
  %17 = phi i32 [ %10, %8 ], [ 2, %7 ], [ %6, %1 ], [ %15, %11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 5088432}
!9 = !{i64 2154310630}
!10 = !{i64 2154056862}
!11 = !{i64 2154057032}
!12 = !{i64 2154311005}
!13 = !{i64 5088014}
!14 = !{i64 2154072828}
!15 = !{i64 2154073000}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
!18 = !{i64 2149234847}
!19 = !{i64 2149230671}
!20 = !{i64 2149230746, i64 2149230773, i64 2149230820, i64 2149230842, i64 2149230870, i64 2149230890}
!21 = !{i64 2149257850}
