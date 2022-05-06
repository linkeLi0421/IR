; ModuleID = '/llk/IR/drivers/mfd/omap-usb-tll.c_pt.bc'
source_filename = "../drivers/mfd/omap-usb-tll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_tll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_tll_init\22\09\09\09\09\09"
module asm "__kstrtabns_omap_tll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_tll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_tll_enable\22\09\09\09\09\09"
module asm "__kstrtabns_omap_tll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_tll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_tll_disable\22\09\09\09\09\09"
module asm "__kstrtabns_omap_tll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.usbtll_omap = type { ptr, i32, [0 x ptr] }
%struct.usbhs_omap_platform_data = type { i32, [3 x i32], [3 x i32], [3 x ptr], ptr, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@tll_dev = internal unnamed_addr global ptr null, align 4
@tll_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_omap_tll_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_tll_init = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_tll_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_tll_init to i32), ptr @__kstrtab_omap_tll_init, ptr @__kstrtabns_omap_tll_init }, section "___ksymtab_gpl+omap_tll_init", align 4
@.str = private unnamed_addr constant [32 x i8] c"Error enabling ch %d clock: %d\0A\00", align 1
@__kstrtab_omap_tll_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_tll_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_tll_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_tll_enable to i32), ptr @__kstrtab_omap_tll_enable, ptr @__kstrtabns_omap_tll_enable }, section "___ksymtab_gpl+omap_tll_enable", align 4
@__kstrtab_omap_tll_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_tll_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_tll_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_tll_disable to i32), ptr @__kstrtab_omap_tll_disable, ptr @__kstrtabns_omap_tll_disable }, section "___ksymtab_gpl+omap_tll_disable", align 4
@__UNIQUE_ID_author167 = internal constant [62 x i8] c"omap_usb_tll.author=Keshava Munegowda <keshava_mgowda@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [50 x i8] c"omap_usb_tll.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [43 x i8] c"omap_usb_tll.file=drivers/mfd/omap-usb-tll\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [28 x i8] c"omap_usb_tll.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [78 x i8] c"omap_usb_tll.description=usb tll driver for TI OMAP EHCI and OHCI controllers\00", section ".modinfo", align 1
@__initcall__kmod_omap_usb_tll__172_466_omap_usbtll_drvinit5 = internal global ptr @omap_usbtll_drvinit, section ".initcall5.init", align 4
@usbtll_omap_driver = internal global %struct.platform_driver { ptr @usbtll_omap_probe, ptr @usbtll_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @usbtll_driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbtll_omap_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_usbtll_drvexit = internal global ptr @omap_usbtll_drvexit, section ".exitcall.exit", align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\014Invalid port mode, using default\0A\00", align 1
@usbtll_driver_name = internal constant [10 x i8] c"usbhs_tll\00", align 1
@usbtll_omap_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,usbhs-tll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__const.usbtll_omap_probe.clkname = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_chx_clk\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_tll_hs_usb_ch%d_clk\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_omap_usbtll_drvexit, ptr @__initcall__kmod_omap_usb_tll__172_466_omap_usbtll_drvinit5, ptr @__ksymtab_omap_tll_disable, ptr @__ksymtab_omap_tll_enable, ptr @__ksymtab_omap_tll_init, ptr @omap_usbtll_drvexit], section "llvm.metadata"
@switch.table.omap_tll_init = private unnamed_addr constant [10 x i32] [i32 0, i32 16777216, i32 33554432, i32 50331648, i32 67108864, i32 83886080, i32 100663296, i32 117440512, i32 167772160, i32 184549376], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_tll_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @tll_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %2, i32 noundef 4) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  %6 = load ptr, ptr @tll_dev, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usbtll_omap, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %12, %4
  %13 = phi i1 [ %18, %12 ], [ false, %4 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %4 ]
  %15 = getelementptr %struct.usbhs_omap_platform_data, ptr %0, i32 0, i32 1, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 1
  %18 = or i1 %13, %17
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %21, label %12

21:                                               ; preds = %12
  br i1 %18, label %22, label %68

22:                                               ; preds = %21
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 48
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  %26 = and i32 %25, -102
  %27 = or i32 %26, 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %27) #7, !srcloc !9
  %28 = load i32, ptr %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %64, %22
  %31 = phi i32 [ %65, %64 ], [ 0, %22 ]
  %32 = shl i32 %31, 2
  %33 = add i32 %32, 64
  %34 = getelementptr i8, ptr %23, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  %36 = getelementptr %struct.usbhs_omap_platform_data, ptr %0, i32 0, i32 1, i32 %31
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -4
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %52

40:                                               ; preds = %30
  %41 = add i32 %37, -4
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds [10 x i32], ptr @switch.table.omap_tll_init, i32 0, i32 %41
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ 0, %43 ], [ %47, %45 ]
  %50 = or i32 %35, %49
  %51 = or i32 %50, 2
  br label %58

52:                                               ; preds = %30
  switch i32 %37, label %64 [
    i32 2, label %53
    i32 3, label %56
  ]

53:                                               ; preds = %52
  %54 = and i32 %35, -3841
  %55 = or i32 %54, 3072
  br label %58

56:                                               ; preds = %52
  %57 = or i32 %35, 100356
  br label %58

58:                                               ; preds = %56, %53, %48
  %59 = phi i32 [ %51, %48 ], [ %55, %53 ], [ %57, %56 ]
  %60 = or i32 %59, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %60) #7, !srcloc !9
  %61 = shl i32 %31, 8
  %62 = add i32 %61, 2070
  %63 = getelementptr i8, ptr %23, i32 %62
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 -66) #7, !srcloc !10
  br label %64

64:                                               ; preds = %58, %52
  %65 = add nuw nsw i32 %31, 1
  %66 = load i32, ptr %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %30, label %68

68:                                               ; preds = %64, %22, %21, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %69 = load i16, ptr @tll_lock, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr @tll_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %71 = load ptr, ptr @tll_dev, align 4
  %72 = tail call i32 @__pm_runtime_idle(ptr noundef %71, i32 noundef 4) #7
  br label %73

73:                                               ; preds = %68, %1
  %74 = phi i32 [ 0, %68 ], [ -19, %1 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_tll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @tll_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %2, i32 noundef 4) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  %6 = load ptr, ptr @tll_dev, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usbtll_omap, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %26, %4
  %13 = phi i32 [ %27, %26 ], [ 0, %4 ]
  %14 = getelementptr %struct.usbhs_omap_platform_data, ptr %0, i32 0, i32 1, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.usbtll_omap, ptr %8, i32 0, i32 2, i32 %13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @clk_enable(ptr noundef %19) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @tll_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %13, i32 noundef %22) #8
  br label %26

26:                                               ; preds = %24, %21, %17, %12
  %27 = add nuw nsw i32 %13, 1
  %28 = load i32, ptr %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %12, label %30

30:                                               ; preds = %26, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %31 = load i16, ptr @tll_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @tll_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %33

33:                                               ; preds = %30, %1
  %34 = phi i32 [ 0, %30 ], [ -19, %1 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_tll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @tll_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  %5 = load ptr, ptr @tll_dev, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usbtll_omap, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %23, %4
  %12 = phi i32 [ %24, %23 ], [ %9, %4 ]
  %13 = phi i32 [ %25, %23 ], [ 0, %4 ]
  %14 = getelementptr %struct.usbhs_omap_platform_data, ptr %0, i32 0, i32 1, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.usbtll_omap, ptr %7, i32 0, i32 2, i32 %13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @clk_disable(ptr noundef %19) #7
  %22 = load i32, ptr %8, align 4
  br label %23

23:                                               ; preds = %21, %17, %11
  %24 = phi i32 [ %12, %11 ], [ %22, %21 ], [ %12, %17 ]
  %25 = add nuw nsw i32 %13, 1
  %26 = icmp slt i32 %25, %24
  br i1 %26, label %11, label %27

27:                                               ; preds = %23, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %28 = load i16, ptr @tll_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @tll_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %30 = load ptr, ptr @tll_dev, align 4
  %31 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 4) #7
  br label %32

32:                                               ; preds = %27, %1
  %33 = phi i32 [ 0, %27 ], [ -19, %1 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_usbtll_drvinit() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usbtll_omap_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_usbtll_drvexit() #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usbtll_omap_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbtll_omap_probe(ptr noundef %0) #0 {
  %2 = alloca [23 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %5 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %4) #7
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %49

9:                                                ; preds = %1
  tail call void @pm_runtime_enable(ptr noundef %3) #7
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  %12 = icmp eq i32 %11, 4
  %13 = icmp eq i32 %11, 24
  %14 = or i1 %12, %13
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %49

19:                                               ; preds = %9
  %20 = select i1 %14, i32 2, i32 3
  store ptr %5, ptr %15, align 4
  %21 = getelementptr inbounds %struct.usbtll_omap, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %2, ptr noundef nonnull align 1 dereferenceable(23) @__const.usbtll_omap_probe.clkname, i32 23, i1 false)
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 23, ptr noundef nonnull @.str.2, i32 noundef 0)
  %24 = call ptr @clk_get(ptr noundef %3, ptr noundef nonnull %2) #7
  %25 = getelementptr %struct.usbtll_omap, ptr %15, i32 0, i32 2, i32 0
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = call i32 @clk_prepare(ptr noundef %24) #7
  br label %29

29:                                               ; preds = %27, %19
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %2, ptr noundef nonnull align 1 dereferenceable(23) @__const.usbtll_omap_probe.clkname, i32 23, i1 false)
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 23, ptr noundef nonnull @.str.2, i32 noundef 1)
  %31 = call ptr @clk_get(ptr noundef %3, ptr noundef nonnull %2) #7
  %32 = getelementptr %struct.usbtll_omap, ptr %15, i32 0, i32 2, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @clk_prepare(ptr noundef %31) #7
  br label %36

36:                                               ; preds = %34, %29
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %2) #7
  switch i32 %11, label %37 [
    i32 24, label %45
    i32 4, label %45
  ]

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %2, ptr noundef nonnull align 1 dereferenceable(23) @__const.usbtll_omap_probe.clkname, i32 23, i1 false)
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 23, ptr noundef nonnull @.str.2, i32 noundef 2)
  %39 = call ptr @clk_get(ptr noundef %3, ptr noundef nonnull %2) #7
  %40 = getelementptr %struct.usbtll_omap, ptr %15, i32 0, i32 2, i32 2
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @clk_prepare(ptr noundef %39) #7
  br label %44

44:                                               ; preds = %42, %37
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %2) #7
  br label %45

45:                                               ; preds = %44, %36, %36
  %46 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #7
  call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  store ptr %3, ptr @tll_dev, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %47 = load i16, ptr @tll_lock, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr @tll_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %49

49:                                               ; preds = %45, %17, %7
  %50 = phi i32 [ %8, %7 ], [ 0, %45 ], [ -12, %17 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbtll_omap_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @tll_lock) #7
  store ptr null, ptr @tll_dev, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %4 = load i16, ptr @tll_lock, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr @tll_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %6 = getelementptr inbounds %struct.usbtll_omap, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %18, %1
  %10 = phi i32 [ %19, %18 ], [ %7, %1 ]
  %11 = phi i32 [ %20, %18 ], [ 0, %1 ]
  %12 = getelementptr %struct.usbtll_omap, ptr %3, i32 0, i32 2, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %13) #7
  %16 = load ptr, ptr %12, align 4
  tail call void @clk_put(ptr noundef %16) #7
  %17 = load i32, ptr %6, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %10, %9 ], [ %17, %15 ]
  %20 = add nuw nsw i32 %11, 1
  %21 = icmp slt i32 %20, %19
  br i1 %21, label %9, label %22

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3775691}
!9 = !{i64 3775273}
!10 = !{i64 3775076}
!11 = !{i64 2148937132}
!12 = !{i64 2148932956}
!13 = !{i64 2148933031, i64 2148933058, i64 2148933105, i64 2148933127, i64 2148933155, i64 2148933175}
!14 = !{i64 2148960135}
