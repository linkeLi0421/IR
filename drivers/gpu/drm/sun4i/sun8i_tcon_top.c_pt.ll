; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun8i_tcon_top.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_tcon_top.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_tcon_top_set_hdmi_src:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_tcon_top_set_hdmi_src\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_tcon_top_set_hdmi_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_tcon_top_de_config:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_tcon_top_de_config\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_tcon_top_de_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_tcon_top_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_tcon_top_of_table\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_tcon_top_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sun8i_tcon_top_quirks = type { i8, i8 }
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
%struct.component_ops = type { ptr, ptr }
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
%struct.sun8i_tcon_top = type { ptr, ptr, ptr, ptr, %struct.spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@.str = private unnamed_addr constant [25 x i8] c"Device is not TCON TOP!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"TCON index must be 2 or 3!\0A\00", align 1
@__kstrtab_sun8i_tcon_top_set_hdmi_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_tcon_top_set_hdmi_src = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_tcon_top_set_hdmi_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_tcon_top_set_hdmi_src to i32), ptr @__kstrtab_sun8i_tcon_top_set_hdmi_src, ptr @__kstrtabns_sun8i_tcon_top_set_hdmi_src }, section "___ksymtab+sun8i_tcon_top_set_hdmi_src", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Mixer index is too high!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"TCON index is too high!\0A\00", align 1
@__kstrtab_sun8i_tcon_top_de_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_tcon_top_de_config = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_tcon_top_de_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_tcon_top_de_config to i32), ptr @__kstrtab_sun8i_tcon_top_de_config, ptr @__kstrtabns_sun8i_tcon_top_de_config }, section "___ksymtab+sun8i_tcon_top_de_config", align 4
@sun8i_r40_tcon_top_quirks = internal constant %struct.sun8i_tcon_top_quirks { i8 1, i8 1 }, align 1
@sun50i_h6_tcon_top_quirks = internal constant %struct.sun8i_tcon_top_quirks zeroinitializer, align 1
@sun8i_tcon_top_of_table = dso_local constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-tcon-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_tcon_top_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-tcon-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_tcon_top_quirks }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_sun8i_tcon_top_of_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_tcon_top_of_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_tcon_top_of_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_tcon_top_of_table to i32), ptr @__kstrtab_sun8i_tcon_top_of_table, ptr @__kstrtabns_sun8i_tcon_top_of_table }, section "___ksymtab+sun8i_tcon_top_of_table", align 4
@__UNIQUE_ID_author177 = internal constant [48 x i8] c"author=Jernej Skrabec <jernej.skrabec@siol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [42 x i8] c"description=Allwinner R40 TCON TOP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun8i_tcon_top_platform_driver = internal global %struct.platform_driver { ptr @sun8i_tcon_top_probe, ptr @sun8i_tcon_top_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_tcon_top_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [15 x i8] c"sun8i-tcon-top\00", align 1
@sun8i_tcon_top_ops = internal constant %struct.component_ops { ptr @sun8i_tcon_top_bind, ptr @sun8i_tcon_top_unbind }, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Couldn't get the bus clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Could not deassert ctrl reset control\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Could not enable bus clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"tcon-tv0\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"tcon-tv1\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_license179, ptr @__ksymtab_sun8i_tcon_top_de_config, ptr @__ksymtab_sun8i_tcon_top_of_table, ptr @__ksymtab_sun8i_tcon_top_set_hdmi_src], section "llvm.metadata"

@__mod_of__sun8i_tcon_top_of_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @sun8i_tcon_top_of_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun8i_tcon_top_set_hdmi_src(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #6
  br label %28

10:                                               ; preds = %2
  %11 = add i32 %1, -4
  %12 = icmp ult i32 %11, -2
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  br label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %4, i32 0, i32 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #5
  %17 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %4, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = and i32 %20, -805306369
  %22 = shl nuw nsw i32 %1, 28
  %23 = add nuw nsw i32 %22, 805306368
  %24 = and i32 %23, 805306368
  %25 = or i32 %21, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #5
  br label %28

28:                                               ; preds = %14, %13, %9
  %29 = phi i32 [ -22, %13 ], [ 0, %14 ], [ -22, %9 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun8i_tcon_top_de_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef %7) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #6
  br label %38

11:                                               ; preds = %3
  %12 = icmp sgt i32 %1, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  br label %38

14:                                               ; preds = %11
  %15 = icmp sgt i32 %2, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #6
  br label %38

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %5, i32 0, i32 4
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #5
  %20 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = and i32 %23, -4
  %27 = and i32 %2, 3
  %28 = or i32 %26, %27
  br label %34

29:                                               ; preds = %17
  %30 = and i32 %23, -49
  %31 = shl i32 %2, 4
  %32 = and i32 %31, 48
  %33 = or i32 %30, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %28, %25 ], [ %33, %29 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #5
  br label %38

38:                                               ; preds = %34, %16, %13, %10
  %39 = phi i32 [ -22, %13 ], [ -22, %16 ], [ 0, %34 ], [ -22, %10 ]
  ret i32 %39
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_tcon_top_platform_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_tcon_top_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun8i_tcon_top_ops) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun8i_tcon_top_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_tcon_top_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %0) #5
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 20, i32 noundef 3520) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %165, label %11

11:                                               ; preds = %3
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 16, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %165, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %9, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %9, i32 0, i32 4
  store i32 0, ptr %16, align 4
  %17 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %18 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %9, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %21 = ptrtoint ptr %17 to i32
  br label %165

22:                                               ; preds = %14
  %23 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.6) #5
  store ptr %23, ptr %9, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #6
  %26 = ptrtoint ptr %23 to i32
  br label %165

27:                                               ; preds = %22
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %7, i32 noundef 0) #5
  %29 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %9, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %165

33:                                               ; preds = %27
  %34 = tail call i32 @reset_control_deassert(ptr noundef %17) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  br label %165

37:                                               ; preds = %33
  %38 = tail call i32 @clk_prepare(ptr noundef %23) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = tail call i32 @clk_enable(ptr noundef %23) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %41, %43 ], [ %38, %37 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #6
  br label %161

46:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %47 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %48 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store ptr null, ptr %6, align 4, !annotation !16
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @of_property_match_string(ptr noundef %50, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #5
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = inttoptr i32 %51 to ptr
  br label %66

55:                                               ; preds = %46
  %56 = load ptr, ptr %49, align 8
  %57 = tail call ptr @of_clk_get_parent_name(ptr noundef %56, i32 noundef %51) #5
  %58 = load ptr, ptr %49, align 8
  %59 = call i32 @of_property_read_string_helper(ptr noundef %58, ptr noundef nonnull @.str.14, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #5
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = inttoptr i32 %59 to ptr
  br label %66

63:                                               ; preds = %55
  %64 = load ptr, ptr %6, align 4
  %65 = call ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef null, ptr noundef %64, ptr noundef %57, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %48, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef %16) #5
  br label %66

66:                                               ; preds = %63, %61, %53
  %67 = phi ptr [ %54, %53 ], [ %62, %61 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %68 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  %69 = load i8, ptr %8, align 1, !range !17
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store ptr null, ptr %5, align 4, !annotation !16
  %72 = load ptr, ptr %49, align 8
  %73 = call i32 @of_property_match_string(ptr noundef %72, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #5
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = inttoptr i32 %73 to ptr
  br label %88

77:                                               ; preds = %71
  %78 = load ptr, ptr %49, align 8
  %79 = call ptr @of_clk_get_parent_name(ptr noundef %78, i32 noundef %73) #5
  %80 = load ptr, ptr %49, align 8
  %81 = call i32 @of_property_read_string_helper(ptr noundef %80, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1) #5
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = inttoptr i32 %81 to ptr
  br label %88

85:                                               ; preds = %77
  %86 = load ptr, ptr %5, align 4
  %87 = call ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef null, ptr noundef %86, ptr noundef %79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %48, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef %16) #5
  br label %88

88:                                               ; preds = %85, %83, %75
  %89 = phi ptr [ %76, %75 ], [ %84, %83 ], [ %87, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  %90 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 2
  store ptr %89, ptr %90, align 4
  br label %91

91:                                               ; preds = %88, %66
  %92 = getelementptr inbounds %struct.sun8i_tcon_top_quirks, ptr %8, i32 0, i32 1
  %93 = load i8, ptr %92, align 1, !range !17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !16
  %96 = load ptr, ptr %49, align 8
  %97 = call i32 @of_property_match_string(ptr noundef %96, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12) #5
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = inttoptr i32 %97 to ptr
  br label %112

101:                                              ; preds = %95
  %102 = load ptr, ptr %49, align 8
  %103 = call ptr @of_clk_get_parent_name(ptr noundef %102, i32 noundef %97) #5
  %104 = load ptr, ptr %49, align 8
  %105 = call i32 @of_property_read_string_helper(ptr noundef %104, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 2) #5
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = inttoptr i32 %105 to ptr
  br label %112

109:                                              ; preds = %101
  %110 = load ptr, ptr %4, align 4
  %111 = call ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef null, ptr noundef %110, ptr noundef %103, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %48, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef %16) #5
  br label %112

112:                                              ; preds = %109, %107, %99
  %113 = phi ptr [ %100, %99 ], [ %108, %107 ], [ %111, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %114 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 3
  store ptr %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %112, %91
  %116 = load ptr, ptr %68, align 4
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 0, i32 1, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %132, label %122

122:                                              ; preds = %118
  %123 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 0, i32 1, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %132, label %126

126:                                              ; preds = %122
  store i32 3, ptr %12, align 4
  %127 = load ptr, ptr %49, align 8
  %128 = call i32 @of_clk_add_hw_provider(ptr noundef %127, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %12) #5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %68, align 4
  br label %137

132:                                              ; preds = %122, %118, %115
  %133 = phi ptr [ %116, %115 ], [ %120, %118 ], [ %124, %122 ]
  %134 = ptrtoint ptr %133 to i32
  br label %137

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %9, ptr %136, align 8
  br label %165

137:                                              ; preds = %132, %130
  %138 = phi ptr [ %116, %132 ], [ %131, %130 ]
  %139 = phi i32 [ %134, %132 ], [ %128, %130 ]
  %140 = icmp eq ptr %138, null
  %141 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  %142 = or i1 %140, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  call void @clk_hw_unregister_gate(ptr noundef nonnull %138) #5
  br label %144

144:                                              ; preds = %143, %137
  %145 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 0, i32 1, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  %148 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  %149 = or i1 %147, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  call void @clk_hw_unregister_gate(ptr noundef nonnull %146) #5
  br label %151

151:                                              ; preds = %150, %144
  %152 = getelementptr %struct.clk_hw_onecell_data, ptr %12, i32 0, i32 1, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  %155 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  %156 = or i1 %154, %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  call void @clk_hw_unregister_gate(ptr noundef nonnull %153) #5
  br label %158

158:                                              ; preds = %157, %151
  %159 = load ptr, ptr %9, align 4
  call void @clk_disable(ptr noundef %159) #5
  call void @clk_unprepare(ptr noundef %159) #5
  %160 = load ptr, ptr %18, align 4
  br label %161

161:                                              ; preds = %158, %44
  %162 = phi ptr [ %17, %44 ], [ %160, %158 ]
  %163 = phi i32 [ %45, %44 ], [ %139, %158 ]
  %164 = call i32 @reset_control_assert(ptr noundef %162) #5
  br label %165

165:                                              ; preds = %161, %135, %36, %31, %25, %20, %11, %3
  %166 = phi i32 [ %21, %20 ], [ %26, %25 ], [ %32, %31 ], [ %34, %36 ], [ %163, %161 ], [ 0, %135 ], [ -12, %3 ], [ -12, %11 ]
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_tcon_top_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  tail call void @of_clk_del_provider(ptr noundef %9) #5
  %10 = getelementptr %struct.clk_hw_onecell_data, ptr %7, i32 0, i32 1, i32 0
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr %struct.clk_hw_onecell_data, ptr %7, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %16) #5
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr %struct.clk_hw_onecell_data, ptr %7, i32 0, i32 1, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @clk_hw_unregister_gate(ptr noundef nonnull %21) #5
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  tail call void @clk_unprepare(ptr noundef %25) #5
  %26 = getelementptr inbounds %struct.sun8i_tcon_top, ptr %5, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @reset_control_assert(ptr noundef %27) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_gate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3643832}
!9 = !{i64 2151505801}
!10 = !{i64 2151550967}
!11 = !{i64 3643414}
!12 = !{i64 2151554921}
!13 = !{i64 2151639690}
!14 = !{i64 2151646650}
!15 = !{i64 2151646951}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
