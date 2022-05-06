; ModuleID = '/llk/IR/drivers/phy/marvell/phy-mmp3-usb.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mmp3-usb.c"
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
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmp3_usb_phy = type { ptr, ptr }

@mmp3_usb_phy_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp3-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author248 = internal constant [39 x i8] c"author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [40 x i8] c"description=Marvell MMP3 USB PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@mmp3_usb_phy_driver = internal global %struct.platform_driver { ptr @mmp3_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmp3_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"mmp3-usb-phy\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to remap PHY regs\0A\00", align 1
@mmp3_usb_phy_ops = internal constant %struct.phy_ops { ptr @mmp3_usb_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp3_usb_phy_calibrate, ptr null, ptr @__this_module }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register PHY provider\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unsupported silicon revision\0A\00", align 1
@mmp_chip_id = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"PLL_READY not set after 100mS.\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_of__mmp3_usb_phy_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @mmp3_usb_phy_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmp3_usb_phy_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmp3_usb_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp3_usb_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %7 = getelementptr inbounds %struct.mmp3_usb_phy, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @mmp3_usb_phy_ops) #4
  store ptr %10, ptr %3, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  store ptr %3, ptr %13, align 8
  %14 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @of_phy_simple_xlate) #4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %9, %5
  %17 = phi ptr [ @.str.1, %5 ], [ @.str.2, %9 ], [ @.str.3, %12 ]
  %18 = phi ptr [ %6, %5 ], [ %10, %9 ], [ %14, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %17) #5
  %19 = ptrtoint ptr %18 to i32
  br label %20

20:                                               ; preds = %16, %12, %1
  %21 = phi i32 [ -12, %1 ], [ 0, %12 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp3_usb_phy_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmp3_usb_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !8
  %7 = and i32 %6, 65280
  %8 = icmp ne i32 %7, 22528
  %9 = load i32, ptr @mmp_chip_id, align 4
  %10 = and i32 %9, 65535
  %11 = icmp ne i32 %10, 8488
  %12 = select i1 %8, i1 true, i1 %11
  %13 = and i32 %9, 16711680
  %14 = icmp ne i32 %13, 10485760
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %5, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  %19 = and i32 %18, -4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #4, !srcloc !10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  %22 = or i32 %21, 3568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %22) #4, !srcloc !10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  br label %36

24:                                               ; preds = %1
  %25 = icmp ne i32 %13, 11534336
  %26 = select i1 %12, i1 true, i1 %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %5, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !9
  %30 = and i32 %29, -16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %30) #4, !srcloc !10
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !9
  %33 = or i32 %32, 6896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %33) #4, !srcloc !10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !9
  br label %36

35:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  br label %80

36:                                               ; preds = %27, %16
  %37 = getelementptr i8, ptr %5, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  %39 = and i32 %38, -10100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #4, !srcloc !10
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  %42 = or i32 %41, 13107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %42) #4, !srcloc !10
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  %44 = getelementptr i8, ptr %5, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !9
  %46 = and i32 %45, -1793
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %46) #4, !srcloc !10
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !9
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !9
  %49 = or i32 %48, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %49) #4, !srcloc !10
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !9
  %51 = getelementptr i8, ptr %5, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  %53 = and i32 %52, -896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %53) #4, !srcloc !10
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  %56 = or i32 %55, 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %56) #4, !srcloc !10
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  %58 = getelementptr i8, ptr %5, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !9
  %60 = and i32 %59, -3073
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %60) #4, !srcloc !10
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !9
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !9
  %63 = or i32 %62, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %63) #4, !srcloc !10
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !9
  %65 = getelementptr i8, ptr %5, i32 32
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !9
  %67 = and i32 %66, -241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %67) #4, !srcloc !10
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !9
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !9
  %70 = or i32 %69, 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %70) #4, !srcloc !10
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !9
  %72 = getelementptr i8, ptr %5, i32 52
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #4, !srcloc !9
  %74 = or i32 %73, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %74) #4, !srcloc !10
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #4, !srcloc !9
  %76 = getelementptr i8, ptr %5, i32 92
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #4, !srcloc !9
  %78 = or i32 %77, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %78) #4, !srcloc !10
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #4, !srcloc !9
  br label %80

80:                                               ; preds = %36, %35
  %81 = phi i32 [ 0, %36 ], [ -19, %35 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp3_usb_phy_calibrate(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmp3_usb_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #4
  %7 = getelementptr i8, ptr %5, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !9
  %9 = or i32 %8, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #4, !srcloc !10
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !9
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 85899200) #4
  %12 = getelementptr i8, ptr %5, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !9
  %14 = or i32 %13, 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #4, !srcloc !10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !9
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 8589920) #4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !9
  %18 = and i32 %17, -8193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %18) #4, !srcloc !10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !9
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 85899200) #4
  br label %21

21:                                               ; preds = %26, %1
  %22 = phi i32 [ 0, %1 ], [ %28, %26 ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !9
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  %28 = add nuw nsw i32 %22, 1
  %29 = icmp eq i32 %28, 101
  br i1 %29, label %30, label %21

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  br label %31

31:                                               ; preds = %30, %21
  %32 = phi i32 [ -110, %30 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2153557953}
!9 = !{i64 2389324}
!10 = !{i64 2388906}
