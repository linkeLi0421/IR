; ModuleID = '/llk/IR/drivers/usb/dwc2/core_intr.c_pt.bc'
source_filename = "../drivers/usb/dwc2/core_intr.c"
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@.str = private unnamed_addr constant [20 x i8] c"Controller is dead\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"exit hibernation failed.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Mode Mismatch Interrupt: currently in %s mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Device Not Connected/Responding!\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Device Not Connected/Responding\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"exit power_down failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"exit partial_power_down failed\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [41 x i8] c"Failed to exit L1 sleep state in 200us.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Host side LPM is not supported.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"enter partial_power_down failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"enter hibernation failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Unexpected LPM interrupt\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_handle_common_intr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = tail call zeroext i1 @dwc2_is_controller_alive(ptr noundef %1) #5
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str) #6
  br label %892

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 34
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = lshr i32 %11, 24
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %8, align 4
  br i1 %18, label %20, label %30

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %19, i32 2056
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = load i8, ptr %12, align 8, !range !10
  %24 = icmp eq i8 %23, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = lshr i32 %26, 8
  %28 = trunc i32 %27 to i16
  %29 = and i16 %28, 16383
  br label %38

30:                                               ; preds = %7
  %31 = getelementptr i8, ptr %19, i32 1032
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %33 = load i8, ptr %12, align 8, !range !10
  %34 = icmp eq i8 %33, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %36 = select i1 %34, i32 %32, i32 %35
  %37 = trunc i32 %36 to i16
  br label %38

38:                                               ; preds = %30, %20
  %39 = phi i16 [ %29, %20 ], [ %37, %30 ]
  %40 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 11
  store i16 %39, ptr %40, align 4
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %44 = load i8, ptr %12, align 8, !range !10
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %47 = select i1 %45, i32 %43, i32 %46
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr i8, ptr %48, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %51 = load i8, ptr %12, align 8, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %54 = select i1 %52, i32 %50, i32 %53
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %58 = load i8, ptr %12, align 8, !range !10
  %59 = icmp eq i8 %58, 0
  %60 = lshr i32 %57, 24
  %61 = select i1 %59, i32 %57, i32 %60
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %47, -117438458
  %65 = and i32 %64, %54
  %66 = select i1 %63, i32 0, i32 %65
  %67 = and i32 %66, -134215674
  %68 = icmp ne i32 %67, 0
  %69 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 8
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %162, label %73

73:                                               ; preds = %38
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i8, ptr %74, i32 88
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %77 = load i8, ptr %12, align 8, !range !10
  %78 = icmp eq i8 %77, 0
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %80 = select i1 %78, i32 %76, i32 %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %78, label %85, label %81

81:                                               ; preds = %73
  %82 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr i8, ptr %83, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #5, !srcloc !11
  br label %88

85:                                               ; preds = %73
  %86 = load ptr, ptr %8, align 4
  %87 = getelementptr i8, ptr %86, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %80) #5, !srcloc !11
  br label %88

88:                                               ; preds = %85, %81
  %89 = lshr i32 %80, 19
  %90 = and i32 %89, 3
  %91 = and i32 %80, 2048
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = and i32 %80, 4096
  %95 = icmp eq i32 %94, 0
  %96 = icmp ne i32 %90, 0
  %97 = or i1 %95, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  tail call fastcc void @dwc_handle_gpwrdn_disc_det(ptr noundef %1, i32 noundef %80) #5
  br label %892

99:                                               ; preds = %93, %88
  %100 = and i32 %80, 128
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %148, label %102

102:                                              ; preds = %99
  %103 = and i32 %80, 256
  %104 = icmp ne i32 %103, 0
  %105 = icmp ne i32 %90, 0
  %106 = and i1 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 2, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 2097152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %892, label %112

112:                                              ; preds = %107
  %113 = load i8, ptr %69, align 8
  %114 = and i8 %113, 8
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %892, label %116

116:                                              ; preds = %112
  %117 = and i32 %80, 2097152
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %143, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @dwc2_exit_hibernation(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.1) #6
  br label %124

124:                                              ; preds = %122, %119
  %125 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85
  %126 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %892, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 67
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %892, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.usb_gadget_driver, ptr %131, i32 0, i32 7
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %892, label %137

137:                                              ; preds = %133
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %138 = load i16, ptr %3, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %140 = load ptr, ptr %130, align 4
  %141 = getelementptr inbounds %struct.usb_gadget_driver, ptr %140, i32 0, i32 7
  %142 = load ptr, ptr %141, align 4
  tail call void %142(ptr noundef %125) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  br label %892

143:                                              ; preds = %116
  %144 = tail call i32 @dwc2_exit_hibernation(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %892, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.1) #6
  br label %892

148:                                              ; preds = %102, %99
  %149 = and i32 %80, 1536
  %150 = icmp eq i32 %149, 1536
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = icmp eq i32 %90, 0
  br i1 %152, label %153, label %892

153:                                              ; preds = %151
  %154 = tail call i32 @dwc2_exit_hibernation(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %892, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.1) #6
  br label %892

158:                                              ; preds = %148
  %159 = and i32 %80, 393216
  %160 = icmp eq i32 %159, 393216
  br i1 %160, label %161, label %892

161:                                              ; preds = %158
  tail call fastcc void @dwc_handle_gpwrdn_disc_det(ptr noundef %1, i32 noundef %80) #5
  br label %892

162:                                              ; preds = %38
  %163 = and i32 %66, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %182, label %165

165:                                              ; preds = %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %166 = load ptr, ptr %8, align 4
  %167 = getelementptr i8, ptr %166, i32 20
  br i1 %59, label %169, label %168

168:                                              ; preds = %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 33554432) #5, !srcloc !11
  br label %170

169:                                              ; preds = %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 2) #5, !srcloc !11
  br label %170

170:                                              ; preds = %169, %168
  %171 = load ptr, ptr %1, align 8
  %172 = load ptr, ptr %8, align 4
  %173 = getelementptr i8, ptr %172, i32 20
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %175 = load i8, ptr %12, align 8, !range !10
  %176 = icmp eq i8 %175, 0
  %177 = lshr i32 %174, 24
  %178 = select i1 %176, i32 %174, i32 %177
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, ptr @.str.4, ptr @.str.3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %171, ptr noundef nonnull @.str.2, ptr noundef nonnull %181) #6
  br label %182

182:                                              ; preds = %170, %162
  %183 = and i32 %66, 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %386, label %185

185:                                              ; preds = %182
  %186 = load ptr, ptr %8, align 4
  %187 = getelementptr i8, ptr %186, i32 4
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %189 = load i8, ptr %12, align 8, !range !10
  %190 = icmp eq i8 %189, 0
  %191 = tail call i32 @llvm.bswap.i32(i32 %188) #5
  %192 = select i1 %190, i32 %188, i32 %191
  %193 = load ptr, ptr %8, align 4
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %195 = and i32 %192, 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %239, label %197

197:                                              ; preds = %185
  %198 = load ptr, ptr %8, align 4
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %200 = load i8, ptr %12, align 8, !range !10
  %201 = icmp eq i8 %200, 0
  %202 = lshr i32 %199, 8
  %203 = select i1 %201, i32 %199, i32 %202
  %204 = load ptr, ptr %8, align 4
  %205 = getelementptr i8, ptr %204, i32 20
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %207 = load i8, ptr %12, align 8, !range !10
  %208 = icmp eq i8 %207, 0
  %209 = lshr i32 %206, 24
  %210 = select i1 %208, i32 %206, i32 %209
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %197
  tail call void @dwc2_hsotg_disconnect(ptr noundef %1) #5
  br label %214

214:                                              ; preds = %213, %197
  %215 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 4
  %216 = load i32, ptr %215, align 8
  %217 = icmp eq i32 %216, 5
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 3, ptr %215, align 8
  br label %226

219:                                              ; preds = %214
  %220 = and i32 %203, 2048
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.5) #6
  br label %224

224:                                              ; preds = %222, %219
  %225 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  store i32 0, ptr %225, align 8
  br label %226

226:                                              ; preds = %224, %218
  %227 = load ptr, ptr %8, align 4
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %229 = load i8, ptr %12, align 8, !range !10
  %230 = icmp eq i8 %229, 0
  %231 = tail call i32 @llvm.bswap.i32(i32 %228) #5
  %232 = select i1 %230, i32 %228, i32 %231
  %233 = and i32 %232, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %230, label %237, label %234

234:                                              ; preds = %226
  %235 = tail call i32 @llvm.bswap.i32(i32 %233) #5
  %236 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %235) #5, !srcloc !11
  br label %239

237:                                              ; preds = %226
  %238 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %233) #5, !srcloc !11
  br label %239

239:                                              ; preds = %237, %234, %185
  %240 = and i32 %192, 256
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %276, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %8, align 4
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %245 = load i8, ptr %12, align 8, !range !10
  %246 = icmp eq i8 %245, 0
  %247 = lshr i32 %244, 24
  %248 = select i1 %246, i32 %244, i32 %247
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %276, label %251

251:                                              ; preds = %242
  %252 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 1
  %253 = load i8, ptr %252, align 2
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 8
  %257 = load i8, ptr %256, align 1, !range !10
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 24
  %261 = load i8, ptr %260, align 4
  %262 = or i8 %261, 2
  store i8 %262, ptr %260, align 4
  br label %276

263:                                              ; preds = %255, %251
  %264 = load ptr, ptr %8, align 4
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %266 = load i8, ptr %12, align 8, !range !10
  %267 = icmp eq i8 %266, 0
  %268 = tail call i32 @llvm.bswap.i32(i32 %265) #5
  %269 = select i1 %267, i32 %265, i32 %268
  %270 = and i32 %269, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %267, label %274, label %271

271:                                              ; preds = %263
  %272 = tail call i32 @llvm.bswap.i32(i32 %270) #5
  %273 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %272) #5, !srcloc !11
  br label %276

274:                                              ; preds = %263
  %275 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %270) #5, !srcloc !11
  br label %276

276:                                              ; preds = %274, %271, %259, %242, %239
  %277 = and i32 %192, 512
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %338, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %8, align 4
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %282 = load i8, ptr %12, align 8, !range !10
  %283 = icmp eq i8 %282, 0
  %284 = lshr i32 %281, 8
  %285 = select i1 %283, i32 %281, i32 %284
  %286 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 2, i32 5
  %287 = load i32, ptr %286, align 8
  %288 = icmp ugt i32 %287, 1330917385
  br i1 %288, label %289, label %291

289:                                              ; preds = %279
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %290(i32 noundef 21474800) #5
  br label %291

291:                                              ; preds = %289, %279
  %292 = and i32 %285, 256
  %293 = icmp eq i32 %292, 0
  %294 = load ptr, ptr %8, align 4
  br i1 %293, label %324, label %295

295:                                              ; preds = %291
  %296 = getelementptr i8, ptr %294, i32 20
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %296) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %298 = load i8, ptr %12, align 8, !range !10
  %299 = icmp eq i8 %298, 0
  %300 = lshr i32 %297, 24
  %301 = select i1 %299, i32 %297, i32 %300
  %302 = and i32 %301, 1
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %338, label %304

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 4
  store i32 5, ptr %305, align 8
  %306 = load ptr, ptr %8, align 4
  %307 = getelementptr i8, ptr %306, i32 24
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %309 = load i8, ptr %12, align 8, !range !10
  %310 = icmp eq i8 %309, 0
  %311 = tail call i32 @llvm.bswap.i32(i32 %308) #5
  %312 = select i1 %310, i32 %308, i32 %311
  %313 = and i32 %312, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %310, label %318, label %314

314:                                              ; preds = %304
  %315 = tail call i32 @llvm.bswap.i32(i32 %313) #5
  %316 = load ptr, ptr %8, align 4
  %317 = getelementptr i8, ptr %316, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %315) #5, !srcloc !11
  br label %321

318:                                              ; preds = %304
  %319 = load ptr, ptr %8, align 4
  %320 = getelementptr i8, ptr %319, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %313) #5, !srcloc !11
  br label %321

321:                                              ; preds = %318, %314
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %322 = load i16, ptr %3, align 4
  %323 = add i16 %322, 1
  store i16 %323, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  tail call void @dwc2_hcd_start(ptr noundef %1) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  store i32 5, ptr %305, align 8
  br label %338

324:                                              ; preds = %291
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %294) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %326 = load i8, ptr %12, align 8, !range !10
  %327 = icmp eq i8 %326, 0
  %328 = tail call i32 @llvm.bswap.i32(i32 %325) #5
  %329 = select i1 %327, i32 %325, i32 %328
  %330 = and i32 %329, -2561
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %327, label %334, label %331

331:                                              ; preds = %324
  %332 = tail call i32 @llvm.bswap.i32(i32 %330) #5
  %333 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %333, i32 %332) #5, !srcloc !11
  br label %336

334:                                              ; preds = %324
  %335 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %330) #5, !srcloc !11
  br label %336

336:                                              ; preds = %334, %331
  %337 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %337, ptr noundef nonnull @.str.6) #6
  br label %338

338:                                              ; preds = %336, %321, %295, %276
  %339 = and i32 %192, 131072
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %376, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %8, align 4
  %343 = getelementptr i8, ptr %342, i32 20
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %343) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %345 = load i8, ptr %12, align 8, !range !10
  %346 = icmp eq i8 %345, 0
  %347 = lshr i32 %344, 24
  %348 = select i1 %346, i32 %344, i32 %347
  %349 = and i32 %348, 1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %341
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %352 = load i16, ptr %3, align 4
  %353 = add i16 %352, 1
  store i16 %353, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  tail call void @dwc2_hcd_disconnect(ptr noundef %1, i1 noundef zeroext false) #5
  br label %373

354:                                              ; preds = %341
  %355 = load ptr, ptr %8, align 4
  %356 = getelementptr i8, ptr %355, i32 24
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %358 = load i8, ptr %12, align 8, !range !10
  %359 = icmp eq i8 %358, 0
  %360 = tail call i32 @llvm.bswap.i32(i32 %357) #5
  %361 = select i1 %359, i32 %357, i32 %360
  %362 = and i32 %361, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %359, label %367, label %363

363:                                              ; preds = %354
  %364 = tail call i32 @llvm.bswap.i32(i32 %362) #5
  %365 = load ptr, ptr %8, align 4
  %366 = getelementptr i8, ptr %365, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %364) #5, !srcloc !11
  br label %370

367:                                              ; preds = %354
  %368 = load ptr, ptr %8, align 4
  %369 = getelementptr i8, ptr %368, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %362) #5, !srcloc !11
  br label %370

370:                                              ; preds = %367, %363
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %371 = load i16, ptr %3, align 4
  %372 = add i16 %371, 1
  store i16 %372, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  tail call void @dwc2_hcd_start(ptr noundef %1) #5
  br label %373

373:                                              ; preds = %370, %351
  %374 = phi i32 [ 11, %351 ], [ 9, %370 ]
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %375 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 4
  store i32 %374, ptr %375, align 8
  br label %376

376:                                              ; preds = %373, %338
  %377 = load i8, ptr %12, align 8, !range !10
  %378 = icmp eq i8 %377, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %378, label %383, label %379

379:                                              ; preds = %376
  %380 = tail call i32 @llvm.bswap.i32(i32 %192) #5
  %381 = load ptr, ptr %8, align 4
  %382 = getelementptr i8, ptr %381, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %380) #5, !srcloc !11
  br label %386

383:                                              ; preds = %376
  %384 = load ptr, ptr %8, align 4
  %385 = getelementptr i8, ptr %384, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 %192) #5, !srcloc !11
  br label %386

386:                                              ; preds = %383, %379, %182
  %387 = and i32 %66, 268435456
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %419, label %389

389:                                              ; preds = %386
  %390 = load i8, ptr %12, align 8, !range !10
  %391 = icmp eq i8 %390, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %392 = load ptr, ptr %8, align 4
  %393 = getelementptr i8, ptr %392, i32 20
  br i1 %391, label %395, label %394

394:                                              ; preds = %389
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %393, i32 16) #5, !srcloc !11
  br label %396

395:                                              ; preds = %389
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %393, i32 268435456) #5, !srcloc !11
  br label %396

396:                                              ; preds = %395, %394
  %397 = load ptr, ptr %8, align 4
  %398 = getelementptr i8, ptr %397, i32 24
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %398) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %400 = load i8, ptr %12, align 8, !range !10
  %401 = icmp eq i8 %400, 0
  %402 = tail call i32 @llvm.bswap.i32(i32 %399) #5
  %403 = select i1 %401, i32 %399, i32 %402
  %404 = and i32 %403, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %401, label %409, label %405

405:                                              ; preds = %396
  %406 = tail call i32 @llvm.bswap.i32(i32 %404) #5
  %407 = load ptr, ptr %8, align 4
  %408 = getelementptr i8, ptr %407, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %406) #5, !srcloc !11
  br label %412

409:                                              ; preds = %396
  %410 = load ptr, ptr %8, align 4
  %411 = getelementptr i8, ptr %410, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 %404) #5, !srcloc !11
  br label %412

412:                                              ; preds = %409, %405
  %413 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 25
  %414 = load ptr, ptr %413, align 8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %419, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 26
  %418 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef nonnull %414, ptr noundef %417) #5
  br label %419

419:                                              ; preds = %416, %412, %386
  %420 = and i32 %66, 536870912
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %434, label %422

422:                                              ; preds = %419
  %423 = load i8, ptr %12, align 8, !range !10
  %424 = icmp eq i8 %423, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %425 = load ptr, ptr %8, align 4
  %426 = getelementptr i8, ptr %425, i32 20
  br i1 %424, label %428, label %427

427:                                              ; preds = %422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 32) #5, !srcloc !11
  br label %429

428:                                              ; preds = %422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 536870912) #5, !srcloc !11
  br label %429

429:                                              ; preds = %428, %427
  %430 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 4
  %431 = load i32, ptr %430, align 8
  %432 = icmp eq i32 %431, 9
  br i1 %432, label %433, label %434

433:                                              ; preds = %429
  tail call void @dwc2_hcd_disconnect(ptr noundef %1, i1 noundef zeroext false) #5
  br label %434

434:                                              ; preds = %433, %429, %419
  %435 = and i32 %66, 1073741824
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %495, label %437

437:                                              ; preds = %434
  %438 = load i8, ptr %12, align 8, !range !10
  %439 = icmp eq i8 %438, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %440 = load ptr, ptr %8, align 4
  %441 = getelementptr i8, ptr %440, i32 20
  br i1 %439, label %443, label %442

442:                                              ; preds = %437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 64) #5, !srcloc !11
  br label %444

443:                                              ; preds = %437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 1073741824) #5, !srcloc !11
  br label %444

444:                                              ; preds = %443, %442
  %445 = load ptr, ptr %8, align 4
  %446 = getelementptr i8, ptr %445, i32 20
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %448 = load i8, ptr %12, align 8, !range !10
  %449 = icmp eq i8 %448, 0
  %450 = lshr i32 %447, 24
  %451 = select i1 %449, i32 %447, i32 %450
  %452 = and i32 %451, 1
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %477

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  %456 = load i32, ptr %455, align 8
  %457 = icmp eq i32 %456, 2
  br i1 %457, label %458, label %476

458:                                              ; preds = %454
  %459 = load i8, ptr %69, align 8
  %460 = and i8 %459, 16
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %458
  %463 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #5
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %467, label %465

465:                                              ; preds = %462
  %466 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %466, ptr noundef nonnull @.str.7) #6
  br label %467

467:                                              ; preds = %465, %462, %458
  %468 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 15
  %469 = load i32, ptr %468, align 4
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %467
  %472 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 9
  %473 = load i8, ptr %472, align 1, !range !10
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %471
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %1, i32 noundef 0) #5
  br label %476

476:                                              ; preds = %475, %471, %467, %454
  tail call void @dwc2_hsotg_disconnect(ptr noundef %1) #5
  br label %495

477:                                              ; preds = %444
  %478 = load ptr, ptr %8, align 4
  %479 = getelementptr i8, ptr %478, i32 1088
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %479) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %481 = load i8, ptr %12, align 8, !range !10
  %482 = icmp eq i8 %481, 0
  %483 = tail call i32 @llvm.bswap.i32(i32 %480) #5
  %484 = select i1 %482, i32 %480, i32 %483
  %485 = and i32 %484, -4143
  %486 = or i32 %485, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %482, label %491, label %487

487:                                              ; preds = %477
  %488 = tail call i32 @llvm.bswap.i32(i32 %486) #5
  %489 = load ptr, ptr %8, align 4
  %490 = getelementptr i8, ptr %489, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %490, i32 %488) #5, !srcloc !11
  br label %494

491:                                              ; preds = %477
  %492 = load ptr, ptr %8, align 4
  %493 = getelementptr i8, ptr %492, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %493, i32 %486) #5, !srcloc !11
  br label %494

494:                                              ; preds = %491, %487
  tail call void @dwc2_hcd_connect(ptr noundef %1) #5
  br label %495

495:                                              ; preds = %494, %476, %434
  %496 = icmp sgt i32 %66, -1
  br i1 %496, label %673, label %497

497:                                              ; preds = %495
  %498 = load i8, ptr %12, align 8, !range !10
  %499 = icmp eq i8 %498, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %500 = load ptr, ptr %8, align 4
  %501 = getelementptr i8, ptr %500, i32 20
  br i1 %499, label %503, label %502

502:                                              ; preds = %497
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %501, i32 128) #5, !srcloc !11
  br label %504

503:                                              ; preds = %497
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %501, i32 -2147483648) #5, !srcloc !11
  br label %504

504:                                              ; preds = %503, %502
  %505 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  %506 = load i32, ptr %505, align 8
  %507 = icmp eq i32 %506, 1
  %508 = load ptr, ptr %8, align 4
  br i1 %507, label %509, label %573

509:                                              ; preds = %504
  %510 = getelementptr i8, ptr %508, i32 84
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %510) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %512 = load i8, ptr %12, align 8, !range !10
  %513 = load ptr, ptr %8, align 4
  %514 = getelementptr i8, ptr %513, i32 20
  %515 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %514) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %516 = load i8, ptr %12, align 8, !range !10
  %517 = icmp eq i8 %516, 0
  %518 = lshr i32 %515, 24
  %519 = select i1 %517, i32 %515, i32 %518
  %520 = and i32 %519, 1
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %557

522:                                              ; preds = %509
  %523 = icmp eq i8 %512, 0
  %524 = tail call i32 @llvm.bswap.i32(i32 %511) #5
  %525 = select i1 %523, i32 %511, i32 %524
  %526 = and i32 %525, -4225
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %517, label %531, label %527

527:                                              ; preds = %522
  %528 = tail call i32 @llvm.bswap.i32(i32 %526) #5
  %529 = load ptr, ptr %8, align 4
  %530 = getelementptr i8, ptr %529, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %530, i32 %528) #5, !srcloc !11
  br label %534

531:                                              ; preds = %522
  %532 = load ptr, ptr %8, align 4
  %533 = getelementptr i8, ptr %532, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %533, i32 %526) #5, !srcloc !11
  br label %534

534:                                              ; preds = %531, %527
  br label %535

535:                                              ; preds = %546, %534
  %536 = phi i32 [ %548, %546 ], [ 0, %534 ]
  %537 = load ptr, ptr %8, align 4
  %538 = getelementptr i8, ptr %537, i32 84
  %539 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %538) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %540 = load i8, ptr %12, align 8, !range !10
  %541 = icmp eq i8 %540, 0
  %542 = tail call i32 @llvm.bswap.i32(i32 %539) #5
  %543 = select i1 %541, i32 %539, i32 %542
  %544 = and i32 %543, 122880
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %552, label %546

546:                                              ; preds = %535
  %547 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %547(i32 noundef 214748) #5
  %548 = add nuw nsw i32 %536, 1
  %549 = icmp eq i32 %548, 200
  br i1 %549, label %550, label %535

550:                                              ; preds = %546
  %551 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %551, ptr noundef nonnull @.str.10) #6
  br label %673

552:                                              ; preds = %535
  tail call void @dwc2_gadget_init_lpm(ptr noundef %1) #5
  store i32 0, ptr %505, align 8
  %553 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85
  %554 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85, i32 5
  %555 = load i32, ptr %554, align 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %673, label %559

557:                                              ; preds = %509
  %558 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %558, ptr noundef nonnull @.str.11) #6
  br label %673

559:                                              ; preds = %552
  %560 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 67
  %561 = load ptr, ptr %560, align 4
  %562 = icmp eq ptr %561, null
  br i1 %562, label %673, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.usb_gadget_driver, ptr %561, i32 0, i32 7
  %565 = load ptr, ptr %564, align 4
  %566 = icmp eq ptr %565, null
  br i1 %566, label %673, label %567

567:                                              ; preds = %563
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %568 = load i16, ptr %3, align 4
  %569 = add i16 %568, 1
  store i16 %569, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %570 = load ptr, ptr %560, align 4
  %571 = getelementptr inbounds %struct.usb_gadget_driver, ptr %570, i32 0, i32 7
  %572 = load ptr, ptr %571, align 4
  tail call void %572(ptr noundef %553) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  br label %673

573:                                              ; preds = %504
  %574 = getelementptr i8, ptr %508, i32 20
  %575 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %574) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %576 = load i8, ptr %12, align 8, !range !10
  %577 = icmp eq i8 %576, 0
  %578 = lshr i32 %575, 24
  %579 = select i1 %577, i32 %575, i32 %578
  %580 = and i32 %579, 1
  %581 = icmp eq i32 %580, 0
  %582 = load i32, ptr %505, align 8
  %583 = icmp eq i32 %582, 2
  br i1 %581, label %584, label %639

584:                                              ; preds = %573
  br i1 %583, label %585, label %638

585:                                              ; preds = %584
  %586 = load i8, ptr %69, align 8
  %587 = and i8 %586, 16
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %629, label %589

589:                                              ; preds = %585
  %590 = load ptr, ptr %8, align 4
  %591 = getelementptr i8, ptr %590, i32 2052
  %592 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %591) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %593 = load i8, ptr %12, align 8, !range !10
  %594 = icmp eq i8 %593, 0
  %595 = tail call i32 @llvm.bswap.i32(i32 %592) #5
  %596 = select i1 %594, i32 %592, i32 %595
  %597 = and i32 %596, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %594, label %602, label %598

598:                                              ; preds = %589
  %599 = tail call i32 @llvm.bswap.i32(i32 %597) #5
  %600 = load ptr, ptr %8, align 4
  %601 = getelementptr i8, ptr %600, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %601, i32 %599) #5, !srcloc !11
  br label %605

602:                                              ; preds = %589
  %603 = load ptr, ptr %8, align 4
  %604 = getelementptr i8, ptr %603, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %604, i32 %597) #5, !srcloc !11
  br label %605

605:                                              ; preds = %602, %598
  %606 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #5
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %605
  %609 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %609, ptr noundef nonnull @.str.8) #6
  br label %610

610:                                              ; preds = %608, %605
  %611 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85
  %612 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85, i32 5
  %613 = load i32, ptr %612, align 4
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %629, label %615

615:                                              ; preds = %610
  %616 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 67
  %617 = load ptr, ptr %616, align 4
  %618 = icmp eq ptr %617, null
  br i1 %618, label %629, label %619

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.usb_gadget_driver, ptr %617, i32 0, i32 7
  %621 = load ptr, ptr %620, align 4
  %622 = icmp eq ptr %621, null
  br i1 %622, label %629, label %623

623:                                              ; preds = %619
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %624 = load i16, ptr %3, align 4
  %625 = add i16 %624, 1
  store i16 %625, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %626 = load ptr, ptr %616, align 4
  %627 = getelementptr inbounds %struct.usb_gadget_driver, ptr %626, i32 0, i32 7
  %628 = load ptr, ptr %627, align 4
  tail call void %628(ptr noundef %611) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  br label %629

629:                                              ; preds = %623, %619, %615, %610, %585
  %630 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 15
  %631 = load i32, ptr %630, align 4
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %673

633:                                              ; preds = %629
  %634 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 9
  %635 = load i8, ptr %634, align 1, !range !10
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %673, label %637

637:                                              ; preds = %633
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %1, i32 noundef 0) #5
  br label %673

638:                                              ; preds = %584
  store i32 0, ptr %505, align 8
  br label %673

639:                                              ; preds = %573
  br i1 %583, label %640, label %672

640:                                              ; preds = %639
  %641 = load i8, ptr %69, align 8
  %642 = and i8 %641, 16
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %649, label %644

644:                                              ; preds = %640
  %645 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #5
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %644
  %648 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %648, ptr noundef nonnull @.str.8) #6
  br label %649

649:                                              ; preds = %647, %644, %640
  %650 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 15
  %651 = load i32, ptr %650, align 4
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %658

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 9
  %655 = load i8, ptr %654, align 1, !range !10
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %658, label %657

657:                                              ; preds = %653
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %1, i32 noundef 1) #5
  br label %658

658:                                              ; preds = %657, %653, %649
  %659 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 10
  %660 = load i8, ptr %659, align 2
  %661 = and i8 %660, 1
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %667, label %663

663:                                              ; preds = %658
  %664 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 59
  %665 = load ptr, ptr @system_wq, align 4
  %666 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %665, ptr noundef %664) #5
  br label %667

667:                                              ; preds = %663, %658
  %668 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 27
  %669 = load volatile i32, ptr @jiffies, align 64
  %670 = add i32 %669, 8
  %671 = tail call i32 @mod_timer(ptr noundef %668, i32 noundef %670) #5
  br label %673

672:                                              ; preds = %639
  store i32 0, ptr %505, align 8
  br label %673

673:                                              ; preds = %672, %667, %638, %637, %633, %629, %567, %563, %559, %557, %552, %550, %495
  %674 = and i32 %66, 2048
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %767, label %676

676:                                              ; preds = %673
  %677 = load i8, ptr %12, align 8, !range !10
  %678 = icmp eq i8 %677, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %679 = load ptr, ptr %8, align 4
  %680 = getelementptr i8, ptr %679, i32 20
  br i1 %678, label %682, label %681

681:                                              ; preds = %676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %680, i32 524288) #5, !srcloc !11
  br label %683

682:                                              ; preds = %676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %680, i32 2048) #5, !srcloc !11
  br label %683

683:                                              ; preds = %682, %681
  %684 = load ptr, ptr %8, align 4
  %685 = getelementptr i8, ptr %684, i32 20
  %686 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %685) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %687 = load i8, ptr %12, align 8, !range !10
  %688 = icmp eq i8 %687, 0
  %689 = lshr i32 %686, 24
  %690 = select i1 %688, i32 %686, i32 %689
  %691 = and i32 %690, 1
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %759

693:                                              ; preds = %683
  %694 = load ptr, ptr %8, align 4
  %695 = getelementptr i8, ptr %694, i32 2056
  %696 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %695) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %697 = load i8, ptr %12, align 8, !range !10
  %698 = icmp eq i8 %697, 0
  %699 = lshr i32 %696, 24
  %700 = select i1 %698, i32 %696, i32 %699
  %701 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 86
  %702 = load i8, ptr %701, align 8
  %703 = and i8 %702, 2
  %704 = icmp eq i8 %703, 0
  %705 = and i32 %700, 1
  %706 = icmp eq i32 %705, 0
  %707 = select i1 %704, i1 true, i1 %706
  br i1 %707, label %767, label %708

708:                                              ; preds = %693
  %709 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 15
  %710 = load i32, ptr %709, align 4
  switch i32 %710, label %739 [
    i32 1, label %711
    i32 2, label %729
    i32 0, label %734
  ]

711:                                              ; preds = %708
  %712 = tail call i32 @dwc2_enter_partial_power_down(ptr noundef %1) #5
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %716, label %714

714:                                              ; preds = %711
  %715 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %715, ptr noundef nonnull @.str.12) #6
  br label %716

716:                                              ; preds = %714, %711
  %717 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %717(i32 noundef 21474800) #5
  %718 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 13
  %719 = load ptr, ptr %718, align 4
  %720 = icmp eq ptr %719, null
  %721 = icmp ugt ptr %719, inttoptr (i32 -4096 to ptr)
  %722 = or i1 %720, %721
  br i1 %722, label %739, label %723

723:                                              ; preds = %716
  %724 = getelementptr inbounds %struct.usb_phy, ptr %719, i32 0, i32 26
  %725 = load ptr, ptr %724, align 4
  %726 = icmp eq ptr %725, null
  br i1 %726, label %739, label %727

727:                                              ; preds = %723
  %728 = tail call i32 %725(ptr noundef nonnull %719, i32 noundef 1) #5
  br label %739

729:                                              ; preds = %708
  %730 = tail call i32 @dwc2_enter_hibernation(ptr noundef %1, i32 noundef 0) #5
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %739, label %732

732:                                              ; preds = %729
  %733 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %733, ptr noundef nonnull @.str.13) #6
  br label %739

734:                                              ; preds = %708
  %735 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 3, i32 16
  %736 = load i8, ptr %735, align 8, !range !10
  %737 = icmp eq i8 %736, 0
  br i1 %737, label %738, label %739

738:                                              ; preds = %734
  tail call void @dwc2_gadget_enter_clock_gating(ptr noundef %1) #5
  br label %739

739:                                              ; preds = %738, %734, %732, %729, %727, %723, %716, %708
  %740 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  store i32 2, ptr %740, align 8
  %741 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85
  %742 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85, i32 5
  %743 = load i32, ptr %742, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %767, label %745

745:                                              ; preds = %739
  %746 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 67
  %747 = load ptr, ptr %746, align 4
  %748 = icmp eq ptr %747, null
  br i1 %748, label %767, label %749

749:                                              ; preds = %745
  %750 = getelementptr inbounds %struct.usb_gadget_driver, ptr %747, i32 0, i32 6
  %751 = load ptr, ptr %750, align 4
  %752 = icmp eq ptr %751, null
  br i1 %752, label %767, label %753

753:                                              ; preds = %749
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %754 = load i16, ptr %3, align 4
  %755 = add i16 %754, 1
  store i16 %755, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %756 = load ptr, ptr %746, align 4
  %757 = getelementptr inbounds %struct.usb_gadget_driver, ptr %756, i32 0, i32 6
  %758 = load ptr, ptr %757, align 4
  tail call void %758(ptr noundef %741) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  br label %767

759:                                              ; preds = %683
  %760 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 4
  %761 = load i32, ptr %760, align 8
  %762 = icmp eq i32 %761, 11
  br i1 %762, label %763, label %767

763:                                              ; preds = %759
  %764 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  store i32 2, ptr %764, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %765 = load i16, ptr %3, align 4
  %766 = add i16 %765, 1
  store i16 %766, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  tail call void @dwc2_hcd_start(ptr noundef %1) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  store i32 9, ptr %760, align 8
  br label %767

767:                                              ; preds = %763, %759, %753, %749, %745, %739, %693, %673
  %768 = and i32 %66, 134217728
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %860, label %770

770:                                              ; preds = %767
  %771 = load i8, ptr %12, align 8, !range !10
  %772 = icmp eq i8 %771, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %773 = load ptr, ptr %8, align 4
  %774 = getelementptr i8, ptr %773, i32 20
  br i1 %772, label %776, label %775

775:                                              ; preds = %770
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %774, i32 8) #5, !srcloc !11
  br label %777

776:                                              ; preds = %770
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %774, i32 134217728) #5, !srcloc !11
  br label %777

777:                                              ; preds = %776, %775
  %778 = load ptr, ptr %8, align 4
  %779 = getelementptr i8, ptr %778, i32 84
  %780 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %779) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %781 = load i8, ptr %12, align 8, !range !10
  %782 = icmp eq i8 %781, 0
  %783 = tail call i32 @llvm.bswap.i32(i32 %780) #5
  %784 = select i1 %782, i32 %780, i32 %783
  %785 = and i32 %784, 1
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %789

787:                                              ; preds = %777
  %788 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %788, ptr noundef nonnull @.str.14) #6
  br label %860

789:                                              ; preds = %777
  %790 = lshr i32 %784, 2
  %791 = and i32 %790, 15
  %792 = lshr i32 %784, 8
  %793 = and i32 %792, 15
  %794 = and i32 %784, 128
  %795 = load ptr, ptr %8, align 4
  %796 = getelementptr i8, ptr %795, i32 20
  %797 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %796) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %798 = load i8, ptr %12, align 8, !range !10
  %799 = icmp eq i8 %798, 0
  %800 = lshr i32 %797, 24
  %801 = select i1 %799, i32 %797, i32 %800
  %802 = and i32 %801, 1
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %860

804:                                              ; preds = %789
  %805 = and i32 %784, 4096
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %811, label %807

807:                                              ; preds = %804
  %808 = icmp uge i32 %791, %793
  %809 = icmp ne i32 %794, 0
  %810 = select i1 %808, i1 true, i1 %809
  br i1 %810, label %829, label %813

811:                                              ; preds = %804
  %812 = icmp eq i32 %794, 0
  br i1 %812, label %813, label %829

813:                                              ; preds = %811, %807
  %814 = load ptr, ptr %8, align 4
  %815 = getelementptr i8, ptr %814, i32 3584
  %816 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %815) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %817 = load i8, ptr %12, align 8, !range !10
  %818 = icmp eq i8 %817, 0
  %819 = tail call i32 @llvm.bswap.i32(i32 %816) #5
  %820 = select i1 %818, i32 %816, i32 %819
  %821 = or i32 %820, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %818, label %826, label %822

822:                                              ; preds = %813
  %823 = tail call i32 @llvm.bswap.i32(i32 %821) #5
  %824 = load ptr, ptr %8, align 4
  %825 = getelementptr i8, ptr %824, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %825, i32 %823) #5, !srcloc !11
  br label %829

826:                                              ; preds = %813
  %827 = load ptr, ptr %8, align 4
  %828 = getelementptr i8, ptr %827, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %828, i32 %821) #5, !srcloc !11
  br label %829

829:                                              ; preds = %826, %822, %811, %807
  %830 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %830(i32 noundef 2147480) #5
  %831 = load ptr, ptr %8, align 4
  %832 = getelementptr i8, ptr %831, i32 84
  %833 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %832) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %834 = load i8, ptr %12, align 8, !range !10
  %835 = icmp eq i8 %834, 0
  %836 = lshr i32 %833, 8
  %837 = select i1 %835, i32 %833, i32 %836
  %838 = and i32 %837, 32768
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %860, label %840

840:                                              ; preds = %829
  %841 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 28
  store i32 1, ptr %841, align 8
  %842 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85
  %843 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 85, i32 5
  %844 = load i32, ptr %843, align 4
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %860, label %846

846:                                              ; preds = %840
  %847 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 67
  %848 = load ptr, ptr %847, align 4
  %849 = icmp eq ptr %848, null
  br i1 %849, label %860, label %850

850:                                              ; preds = %846
  %851 = getelementptr inbounds %struct.usb_gadget_driver, ptr %848, i32 0, i32 6
  %852 = load ptr, ptr %851, align 4
  %853 = icmp eq ptr %852, null
  br i1 %853, label %860, label %854

854:                                              ; preds = %850
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %855 = load i16, ptr %3, align 4
  %856 = add i16 %855, 1
  store i16 %856, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %857 = load ptr, ptr %847, align 4
  %858 = getelementptr inbounds %struct.usb_gadget_driver, ptr %857, i32 0, i32 6
  %859 = load ptr, ptr %858, align 4
  tail call void %859(ptr noundef %842) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  br label %860

860:                                              ; preds = %854, %850, %846, %840, %829, %789, %787, %767
  %861 = and i32 %66, 16777216
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %892, label %863

863:                                              ; preds = %860
  %864 = load ptr, ptr %8, align 4
  %865 = getelementptr i8, ptr %864, i32 20
  %866 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %865) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %867 = load i8, ptr %12, align 8, !range !10
  %868 = icmp eq i8 %867, 0
  %869 = lshr i32 %866, 24
  %870 = select i1 %868, i32 %866, i32 %869
  %871 = and i32 %870, 1
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %892

873:                                              ; preds = %863
  %874 = load ptr, ptr %8, align 4
  %875 = getelementptr i8, ptr %874, i32 1088
  %876 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %875) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %877 = load i8, ptr %12, align 8, !range !10
  %878 = icmp eq i8 %877, 0
  %879 = tail call i32 @llvm.bswap.i32(i32 %876) #5
  %880 = select i1 %878, i32 %876, i32 %879
  %881 = and i32 %880, 8
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %892, label %883

883:                                              ; preds = %873
  %884 = and i32 %880, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %878, label %889, label %885

885:                                              ; preds = %883
  %886 = tail call i32 @llvm.bswap.i32(i32 %884) #5
  %887 = load ptr, ptr %8, align 4
  %888 = getelementptr i8, ptr %887, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %888, i32 %886) #5, !srcloc !11
  br label %892

889:                                              ; preds = %883
  %890 = load ptr, ptr %8, align 4
  %891 = getelementptr i8, ptr %890, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %891, i32 %884) #5, !srcloc !11
  br label %892

892:                                              ; preds = %889, %885, %873, %863, %860, %161, %158, %156, %153, %151, %146, %143, %137, %133, %129, %124, %112, %107, %98, %5
  %893 = phi i1 [ %68, %863 ], [ %68, %860 ], [ false, %5 ], [ true, %98 ], [ true, %107 ], [ true, %112 ], [ true, %124 ], [ true, %129 ], [ true, %133 ], [ true, %137 ], [ true, %143 ], [ true, %146 ], [ true, %151 ], [ true, %153 ], [ true, %156 ], [ true, %158 ], [ true, %161 ], [ true, %873 ], [ true, %885 ], [ true, %889 ]
  %894 = zext i1 %893 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %895 = load i16, ptr %3, align 4
  %896 = add i16 %895, 1
  store i16 %896, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  ret i32 %894
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_is_controller_alive(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc_handle_gpwrdn_disc_det(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 88
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = and i32 %11, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %9, label %17, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !11
  br label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #5, !srcloc !11
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #5
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 88
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %25 = load i8, ptr %7, align 8, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = and i32 %28, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %26, label %34, label %30

30:                                               ; preds = %20
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #5, !srcloc !11
  br label %37

34:                                               ; preds = %20
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %29) #5, !srcloc !11
  br label %37

37:                                               ; preds = %34, %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #5
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 88
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %42 = load i8, ptr %7, align 8, !range !10
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  %45 = select i1 %43, i32 %41, i32 %44
  %46 = and i32 %45, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %43, label %51, label %47

47:                                               ; preds = %37
  %48 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !11
  br label %54

51:                                               ; preds = %37
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %46) #5, !srcloc !11
  br label %54

54:                                               ; preds = %51, %47
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 1073740) #5
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr i8, ptr %56, i32 88
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %59 = load i8, ptr %7, align 8, !range !10
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  %62 = select i1 %60, i32 %58, i32 %61
  %63 = or i32 %62, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %60, label %68, label %64

64:                                               ; preds = %54
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr i8, ptr %66, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #5, !srcloc !11
  br label %71

68:                                               ; preds = %54
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %63) #5, !srcloc !11
  br label %71

71:                                               ; preds = %68, %64
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 1073740) #5
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr i8, ptr %73, i32 88
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %76 = load i8, ptr %7, align 8, !range !10
  %77 = icmp eq i8 %76, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %75) #5
  %79 = select i1 %77, i32 %75, i32 %78
  %80 = and i32 %79, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %77, label %85, label %81

81:                                               ; preds = %71
  %82 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #5, !srcloc !11
  br label %88

85:                                               ; preds = %71
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr i8, ptr %86, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %80) #5, !srcloc !11
  br label %88

88:                                               ; preds = %85, %81
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr i8, ptr %89, i32 88
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %92 = load i8, ptr %7, align 8, !range !10
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  %95 = select i1 %93, i32 %91, i32 %94
  %96 = and i32 %95, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %93, label %101, label %97

97:                                               ; preds = %88
  %98 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr i8, ptr %99, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #5, !srcloc !11
  br label %104

101:                                              ; preds = %88
  %102 = load ptr, ptr %3, align 4
  %103 = getelementptr i8, ptr %102, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %96) #5, !srcloc !11
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %106 = load i8, ptr %105, align 8
  %107 = and i8 %106, -9
  store i8 %107, ptr %105, align 8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 9
  store i8 0, ptr %108, align 1
  %109 = and i32 %1, 2097152
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 4
  br i1 %110, label %114, label %112

112:                                              ; preds = %104
  store i32 3, ptr %111, align 8
  %113 = tail call i32 @dwc2_core_init(ptr noundef %0, i1 noundef zeroext false) #5
  tail call void @dwc2_enable_global_interrupts(ptr noundef %0) #5
  tail call void @dwc2_hsotg_core_init_disconnected(ptr noundef %0, i1 noundef zeroext false) #5
  tail call void @dwc2_hsotg_core_connect(ptr noundef %0) #5
  br label %116

114:                                              ; preds = %104
  store i32 9, ptr %111, align 8
  %115 = tail call i32 @dwc2_core_init(ptr noundef %0, i1 noundef zeroext false) #5
  tail call void @dwc2_enable_global_interrupts(ptr noundef %0) #5
  tail call void @dwc2_hcd_start(ptr noundef %0) #5
  br label %116

116:                                              ; preds = %114, %112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_hibernation(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_core_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_enable_global_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_init_disconnected(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_disconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_init_lpm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_enter_partial_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_enter_hibernation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_enter_clock_gating(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3482224}
!9 = !{i64 2154464984}
!10 = !{i8 0, i8 2}
!11 = !{i64 3481806}
!12 = !{i64 2148949518}
!13 = !{i64 2148945342}
!14 = !{i64 2148945417, i64 2148945444, i64 2148945491, i64 2148945513, i64 2148945541, i64 2148945561}
!15 = !{i64 2148972521}
