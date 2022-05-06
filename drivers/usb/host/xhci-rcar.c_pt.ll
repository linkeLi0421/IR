; ModuleID = '/llk/IR/drivers/usb/host/xhci-rcar.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-rcar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.58, i32 }
%union.anon.58 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_firmware215 = internal constant [45 x i8] c"xhci_plat_hcd.firmware=r8a779x_usb3_v1.dlmem\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware216 = internal constant [45 x i8] c"xhci_plat_hcd.firmware=r8a779x_usb3_v2.dlmem\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware217 = internal constant [45 x i8] c"xhci_plat_hcd.firmware=r8a779x_usb3_v3.dlmem\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"renesas,xhci-r8a7790\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"renesas,xhci-r8a7791\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"renesas,xhci-r8a7793\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"renesas,rcar-gen2-xhci\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_quirks_match = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.7, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"r8a779x_usb3_v2.dlmem\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"r8a779x_usb3_v3.dlmem\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ES1.*\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"r8a7795\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_firmware215, ptr @__UNIQUE_ID_firmware216, ptr @__UNIQUE_ID_firmware217], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_rcar_start(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 548
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = or i32 %7, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #3, !srcloc !11
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.1) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.2) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.3) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %19, %16, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr i8, ptr %26, i32 2628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 16973825) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 2632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 197124) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 197376) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr i8, ptr %32, i32 2728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 327163911) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr i8, ptr %34, i32 2736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 2097152) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 2744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 16) #3, !srcloc !11
  br label %38

38:                                               ; preds = %25, %22, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_rcar_init_quirk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @ktime_get() #3
  %7 = add i64 %6, 1000000
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 260
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %11 = and i32 %10, 65537
  %12 = icmp eq i32 %11, 65537
  br i1 %12, label %29, label %13

13:                                               ; preds = %16, %5
  %14 = tail call i64 @ktime_get() #3
  %15 = icmp sgt i64 %14, %7
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #3
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr i8, ptr %18, i32 260
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %21 = and i32 %20, 65537
  %22 = icmp eq i32 %21, 65537
  br i1 %22, label %29, label %13

23:                                               ; preds = %13
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr i8, ptr %24, i32 260
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  %27 = and i32 %26, 65537
  %28 = icmp eq i32 %27, 65537
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %16, %5
  %30 = tail call fastcc i32 @xhci_rcar_download_firmware(ptr noundef %0)
  br label %31

31:                                               ; preds = %29, %23, %1
  %32 = phi i32 [ %30, %29 ], [ 0, %1 ], [ -110, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_rcar_download_firmware(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 11, i32 20, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store ptr null, ptr %2, align 4, !annotation !20
  %14 = getelementptr i8, ptr %5, i32 592
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !21
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %140

18:                                               ; preds = %11
  %19 = tail call ptr @soc_device_match(ptr noundef nonnull @rcar_quirks_match) #3
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.soc_device_attribute, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = and i32 %24, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %18
  %31 = load ptr, ptr %13, align 8
  br label %32

32:                                               ; preds = %30, %27, %21
  %33 = phi ptr [ %31, %30 ], [ @.str.4, %21 ], [ @.str.5, %27 ]
  %34 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef %33, ptr noundef %3) #3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %140

36:                                               ; preds = %32
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !22
  %38 = or i32 %37, 1
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %38) #3, !srcloc !11
  %39 = load ptr, ptr %2, align 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %116, label %42

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %5, i32 600
  br label %49

44:                                               ; preds = %112
  %45 = add i32 %52, 4
  %46 = load ptr, ptr %2, align 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %116

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %40, %42 ], [ %47, %44 ]
  %51 = phi ptr [ %39, %42 ], [ %46, %44 ]
  %52 = phi i32 [ 0, %42 ], [ %45, %44 ]
  %53 = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %54 = or i32 %52, 3
  %55 = icmp ult i32 %54, %50
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load ptr, ptr %53, align 4
  %58 = getelementptr i8, ptr %57, i32 %54
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 %60, 24
  br label %62

62:                                               ; preds = %56, %49
  %63 = phi i32 [ %61, %56 ], [ 0, %49 ]
  %64 = or i32 %52, 2
  %65 = icmp ult i32 %64, %50
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load ptr, ptr %53, align 4
  %68 = getelementptr i8, ptr %67, i32 %64
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 16
  %72 = or i32 %71, %63
  br label %73

73:                                               ; preds = %66, %62
  %74 = phi i32 [ %72, %66 ], [ %63, %62 ]
  %75 = or i32 %52, 1
  %76 = icmp ult i32 %75, %50
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load ptr, ptr %53, align 4
  %79 = getelementptr i8, ptr %78, i32 %75
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = or i32 %82, %74
  br label %84

84:                                               ; preds = %77, %73
  %85 = phi i32 [ %83, %77 ], [ %74, %73 ]
  %86 = icmp ult i32 %52, %50
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load ptr, ptr %53, align 4
  %89 = getelementptr i8, ptr %88, i32 %52
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %85, %91
  br label %93

93:                                               ; preds = %87, %84
  %94 = phi i32 [ %92, %87 ], [ %85, %84 ]
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %94) #3, !srcloc !11
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !25
  %96 = or i32 %95, 256
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %96) #3, !srcloc !11
  %97 = call i64 @ktime_get() #3
  %98 = add i64 %97, 10000000
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !27
  %100 = and i32 %99, 256
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %107, %93
  %103 = call i64 @ktime_get() #3
  %104 = icmp sgt i64 %103, %98
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !28
  br label %112

107:                                              ; preds = %102
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748) #3
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !27
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %102

112:                                              ; preds = %107, %105, %93
  %113 = phi i32 [ %106, %105 ], [ %99, %93 ], [ %109, %107 ]
  %114 = and i32 %113, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %44, label %116

116:                                              ; preds = %112, %44, %36
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !29
  %118 = and i32 %117, -2
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !30
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %118) #3, !srcloc !11
  %119 = call i64 @ktime_get() #3
  %120 = add i64 %119, 10000000
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  %122 = and i32 %121, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %127, %116
  %125 = call i64 @ktime_get() #3
  %126 = icmp sgt i64 %125, %120
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %128(i32 noundef 214748) #3
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  %130 = and i32 %129, 16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %124, label %137

132:                                              ; preds = %124
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !32
  %134 = and i32 %133, 16
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 -110, i32 0
  br label %137

137:                                              ; preds = %132, %127, %116
  %138 = phi i32 [ 0, %116 ], [ %136, %132 ], [ 0, %127 ]
  %139 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %139) #3
  br label %140

140:                                              ; preds = %137, %32, %11
  %141 = phi i32 [ %138, %137 ], [ 0, %11 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_rcar_resume_quirk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @xhci_rcar_download_firmware(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xhci_rcar_start(ptr noundef %0)
  br label %5

5:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 2999702}
!9 = !{i64 2152694071}
!10 = !{i64 2152694374}
!11 = !{i64 2999284}
!12 = !{i64 2152691567}
!13 = !{i64 2152691919}
!14 = !{i64 2152692271}
!15 = !{i64 2152692623}
!16 = !{i64 2152693066}
!17 = !{i64 2152693542}
!18 = !{i64 2152704567}
!19 = !{i64 2152704901}
!20 = !{!"auto-init"}
!21 = !{i64 2152694882}
!22 = !{i64 2152695430}
!23 = !{i64 2152695628}
!24 = !{i64 2152695941}
!25 = !{i64 2152696392}
!26 = !{i64 2152696590}
!27 = !{i64 2152698463}
!28 = !{i64 2152698782}
!29 = !{i64 2152699701}
!30 = !{i64 2152699899}
!31 = !{i64 2152701777}
!32 = !{i64 2152702105}
