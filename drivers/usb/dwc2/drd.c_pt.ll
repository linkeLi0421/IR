; ModuleID = '/llk/IR/drivers/usb/dwc2/drd.c_pt.bc'
source_filename = "../drivers/usb/dwc2/drd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
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

@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to register role switch: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_drd_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.usb_role_switch_desc, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 32, i1 false)
  %4 = load ptr, ptr %0, align 8
  %5 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str) #6
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = tail call i32 @usb_get_role_switch_default_mode(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 7
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %2, i32 0, i32 7
  store ptr %0, ptr %10, align 4
  %11 = load ptr, ptr %0, align 8
  %12 = tail call ptr @dev_fwnode(ptr noundef %11) #6
  store ptr %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %2, i32 0, i32 4
  store ptr @dwc2_drd_role_sw_set, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %2, i32 0, i32 6
  store i8 1, ptr %14, align 4
  %15 = load ptr, ptr %0, align 8
  %16 = call ptr @usb_role_switch_register(ptr noundef %15, ptr noundef nonnull %2) #6
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = ptrtoint ptr %16 to i32
  %20 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %19) #7
  br label %49

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 6
  store ptr %16, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #6
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %29 = load i8, ptr %28, align 8, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = call i32 @llvm.bswap.i32(i32 %27) #6
  %32 = select i1 %30, i32 %27, i32 %31
  %33 = and i32 %32, -33021
  %34 = load i32, ptr %9, align 4
  %35 = icmp eq i32 %34, 1
  %36 = icmp eq i32 %34, 2
  %37 = select i1 %36, i32 32988, i32 32852
  %38 = select i1 %35, i32 32892, i32 %37
  %39 = or i32 %38, %33
  call void asm sideeffect "dsb st", "~{memory}"() #6
  call void @arm_heavy_mb() #6
  br i1 %30, label %43, label %40

40:                                               ; preds = %21
  %41 = call i32 @llvm.bswap.i32(i32 %39) #6
  %42 = load ptr, ptr %25, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #6, !srcloc !11
  br label %45

43:                                               ; preds = %21
  %44 = load ptr, ptr %25, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %39) #6, !srcloc !11
  br label %45

45:                                               ; preds = %43, %40
  call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #6
  %46 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  call void @dwc2_force_mode(ptr noundef %0, i1 noundef zeroext %48) #6
  br label %49

49:                                               ; preds = %45, %18, %1
  %50 = phi i32 [ %19, %18 ], [ 0, %45 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #6
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_role_switch_default_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_drd_role_sw_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #6
  switch i32 %1, label %16 [
    i32 2, label %4
    i32 1, label %8
    i32 0, label %12
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %151, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %151, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 78
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %151

16:                                               ; preds = %12, %8, %4, %2
  %17 = phi i1 [ true, %12 ], [ false, %4 ], [ false, %8 ], [ false, %2 ]
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 8
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 21
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @clk_prepare(ptr noundef nonnull %24) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %151

29:                                               ; preds = %26
  %30 = tail call i32 @clk_enable(ptr noundef nonnull %24) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %148

32:                                               ; preds = %29, %22, %16
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #6
  br i1 %17, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %38, i32 2, i32 0
  %40 = icmp eq i32 %37, 1
  br i1 %40, label %43, label %63

41:                                               ; preds = %32
  %42 = icmp eq i32 %1, 1
  br i1 %42, label %43, label %63

43:                                               ; preds = %41, %35
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %48 = load i8, ptr %47, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %51 = select i1 %49, i32 %46, i32 %50
  %52 = and i32 %51, 262144
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #6
  br label %139

55:                                               ; preds = %43
  %56 = and i32 %51, -33021
  %57 = or i32 %56, 32892
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %49, label %61, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %60 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #6, !srcloc !11
  br label %130

61:                                               ; preds = %55
  %62 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %57) #6, !srcloc !11
  br label %130

63:                                               ; preds = %41, %35
  %64 = phi i32 [ %1, %41 ], [ %39, %35 ]
  %65 = icmp eq i32 %64, 2
  %66 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  br i1 %65, label %68, label %91

68:                                               ; preds = %63
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %71 = load i8, ptr %70, align 8, !range !10
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %74 = select i1 %72, i32 %69, i32 %73
  %75 = and i32 %74, 524288
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = and i32 %74, -33021
  %79 = or i32 %78, 32988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %72, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @llvm.bswap.i32(i32 %79) #6
  %82 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %81) #6, !srcloc !11
  br label %85

83:                                               ; preds = %77
  %84 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %79) #6, !srcloc !11
  br label %85

85:                                               ; preds = %83, %80, %68
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 86
  %87 = load i8, ptr %86, align 8
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %132, label %90

90:                                               ; preds = %85
  tail call void @dwc2_hsotg_core_connect(ptr noundef %3) #6
  br label %132

91:                                               ; preds = %63
  %92 = getelementptr i8, ptr %67, i32 20
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %95 = load i8, ptr %94, align 8, !range !10
  %96 = icmp eq i8 %95, 0
  %97 = lshr i32 %93, 24
  %98 = select i1 %96, i32 %93, i32 %97
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  %101 = load ptr, ptr %66, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6
  %103 = load i8, ptr %94, align 8, !range !10
  %104 = icmp eq i8 %103, 0
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #6
  %106 = select i1 %104, i32 %102, i32 %105
  br i1 %100, label %107, label %119

107:                                              ; preds = %91
  %108 = and i32 %106, 524288
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %107
  %111 = and i32 %106, -33021
  %112 = or i32 %111, 32852
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %104, label %116, label %113

113:                                              ; preds = %110
  %114 = tail call i32 @llvm.bswap.i32(i32 %112) #6
  %115 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %114) #6, !srcloc !11
  br label %118

116:                                              ; preds = %110
  %117 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %112) #6, !srcloc !11
  br label %118

118:                                              ; preds = %116, %113
  tail call void @dwc2_hsotg_core_disconnect(ptr noundef %3) #6
  br label %130

119:                                              ; preds = %91
  %120 = and i32 %106, 262144
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = and i32 %106, -33021
  %124 = or i32 %123, 32852
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %104, label %128, label %125

125:                                              ; preds = %122
  %126 = tail call i32 @llvm.bswap.i32(i32 %124) #6
  %127 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %126) #6, !srcloc !11
  br label %130

128:                                              ; preds = %122
  %129 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %124) #6, !srcloc !11
  br label %130

130:                                              ; preds = %128, %125, %119, %118, %107, %61, %58
  %131 = phi i1 [ false, %128 ], [ false, %125 ], [ false, %119 ], [ false, %107 ], [ true, %61 ], [ true, %58 ], [ false, %118 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #6
  br label %133

132:                                              ; preds = %90, %85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #6
  br i1 %76, label %133, label %139

133:                                              ; preds = %132, %130
  %134 = phi i1 [ %131, %130 ], [ false, %132 ]
  %135 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  tail call void @dwc2_force_mode(ptr noundef %3, i1 noundef zeroext %134) #6
  br label %139

139:                                              ; preds = %138, %133, %132, %54
  %140 = load i8, ptr %18, align 8
  %141 = and i8 %140, 4
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 21
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  tail call void @clk_disable(ptr noundef nonnull %145) #6
  br label %148

148:                                              ; preds = %147, %29
  %149 = phi ptr [ %145, %147 ], [ %24, %29 ]
  %150 = phi i32 [ 0, %147 ], [ %30, %29 ]
  tail call void @clk_unprepare(ptr noundef nonnull %149) #6
  br label %151

151:                                              ; preds = %148, %143, %139, %26, %12, %8, %4
  %152 = phi i32 [ -22, %8 ], [ -22, %4 ], [ -16, %12 ], [ 0, %143 ], [ 0, %139 ], [ %27, %26 ], [ %150, %148 ]
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_drd_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 14
  %7 = load i8, ptr %6, align 1, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %15 = load i8, ptr %14, align 8, !range !10
  %16 = icmp eq i8 %15, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = and i32 %18, -268435457
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %16, label %24, label %20

20:                                               ; preds = %9
  %21 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !11
  br label %27

24:                                               ; preds = %9
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %19) #6, !srcloc !11
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %31 = load i8, ptr %14, align 8, !range !10
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = or i32 %34, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %32, label %40, label %36

36:                                               ; preds = %27
  %37 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %38 = load ptr, ptr %10, align 4
  %39 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !11
  br label %43

40:                                               ; preds = %27
  %41 = load ptr, ptr %10, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %35) #6, !srcloc !11
  br label %43

43:                                               ; preds = %40, %36, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_drd_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @usb_role_switch_get_role(ptr noundef nonnull %3) #6
  switch i32 %6, label %32 [
    i32 0, label %7
    i32 1, label %13
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 2, i32 0
  %12 = icmp eq i32 %9, 1
  br i1 %12, label %13, label %32

13:                                               ; preds = %7, %5
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %18 = load i8, ptr %17, align 8, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = and i32 %21, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %13
  %25 = and i32 %21, -33021
  %26 = or i32 %25, 32892
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %19, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %29 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #6, !srcloc !11
  br label %54

30:                                               ; preds = %24
  %31 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %26) #6, !srcloc !11
  br label %54

32:                                               ; preds = %7, %5
  %33 = phi i32 [ %11, %7 ], [ %6, %5 ]
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %40 = load i8, ptr %39, align 8, !range !10
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  %43 = select i1 %41, i32 %38, i32 %42
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = and i32 %43, -33021
  %48 = or i32 %47, 32988
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %41, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %51 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #6, !srcloc !11
  br label %54

52:                                               ; preds = %46
  %53 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #6, !srcloc !11
  br label %54

54:                                               ; preds = %52, %49, %35, %32, %30, %27, %13
  %55 = phi i1 [ false, %32 ], [ true, %13 ], [ true, %27 ], [ true, %30 ], [ false, %35 ], [ false, %49 ], [ false, %52 ]
  tail call void @dwc2_force_mode(ptr noundef %0, i1 noundef zeroext %55) #6
  %56 = load ptr, ptr %2, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %96, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 14
  %60 = load i8, ptr %59, align 1, !range !10
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 20
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %68 = load i8, ptr %67, align 8, !range !10
  %69 = icmp eq i8 %68, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %71 = select i1 %69, i32 %66, i32 %70
  %72 = or i32 %71, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %69, label %77, label %73

73:                                               ; preds = %62
  %74 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %75 = load ptr, ptr %63, align 4
  %76 = getelementptr i8, ptr %75, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #6, !srcloc !11
  br label %80

77:                                               ; preds = %62
  %78 = load ptr, ptr %63, align 4
  %79 = getelementptr i8, ptr %78, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %72) #6, !srcloc !11
  br label %80

80:                                               ; preds = %77, %73
  %81 = load ptr, ptr %63, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %84 = load i8, ptr %67, align 8, !range !10
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  %87 = select i1 %85, i32 %83, i32 %86
  %88 = or i32 %87, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %85, label %93, label %89

89:                                               ; preds = %80
  %90 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  %91 = load ptr, ptr %63, align 4
  %92 = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #6, !srcloc !11
  br label %96

93:                                               ; preds = %80
  %94 = load ptr, ptr %63, align 4
  %95 = getelementptr i8, ptr %94, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %88) #6, !srcloc !11
  br label %96

96:                                               ; preds = %93, %89, %58, %54, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_get_role(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_drd_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_connect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_core_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2489719}
!9 = !{i64 2154427242}
!10 = !{i8 0, i8 2}
!11 = !{i64 2489301}
