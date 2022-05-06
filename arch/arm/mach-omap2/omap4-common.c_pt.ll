; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap4-common.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap4-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }

@dram_sync = internal unnamed_addr global ptr null, align 4
@sram_sync = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_omap4_common__247_146___omap4_sram_init3 = internal global ptr @__omap4_sram_init, section ".initcall3.init", align 4
@dram_sync_size = internal unnamed_addr global i1 false, align 4
@dram_sync_paddr = internal global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\016OMAP4: Map %pa to %p for dram barrier\0A\00", align 1
@soc_mb = external dso_local local_unnamed_addr global ptr, align 4
@gic_dist_base_addr = internal unnamed_addr global ptr null, align 4
@twd_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\014%s: lost localtimer interrupt\0A\00", align 1
@__func__.gic_timer_retrigger = private unnamed_addr constant [20 x i8] c"gic_timer_retrigger\00", align 1
@l2cache_base = internal unnamed_addr global ptr null, align 4
@omap4_l2c310_write_sec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"\016OMAP L2C310: ROM does not support power control setting\0A\00", align 1
@omap4_l2c310_write_sec.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"arch/arm/mach-omap2/omap4-common.c\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"OMAP L2C310: ignoring write to reg 0x%x\0A\00", align 1
@sar_ram_base = internal unnamed_addr global ptr null, align 4
@intc_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-wugen-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-wugen-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@intc_node = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"\013No WUGEN found in DT, system will misbehave.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\013UPDATE YOUR DEVICE TREE!\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-gic\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"arm,cortex-a9-twd-timer\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ti,omap4-mpu\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"\014%s:Unable to allocate sram needed to handle errata I688\0A\00", align 1
@__func__.omap4_sram_init = private unnamed_addr constant [16 x i8] c"omap4_sram_init\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"\014%s:Unable to get sram pool needed to handle errata I688\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_omap4_common__247_146___omap4_sram_init3, ptr @__omap4_sram_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_interconnect_sync() local_unnamed_addr #0 {
  %1 = load ptr, ptr @dram_sync, align 4
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr @sram_sync, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !8
  %8 = load ptr, ptr @dram_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #6, !srcloc !9
  %9 = load ptr, ptr @sram_sync, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  %11 = load ptr, ptr @sram_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !10
  br label %12

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap4_sram_init() #2 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @omap4_sram_init() #7
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap4_sram_init() unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 68
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #6
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 84
  br i1 %7, label %8, label %25

8:                                                ; preds = %4, %0
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.omap4_sram_init) #8
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call ptr @of_gen_pool_get(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.omap4_sram_init) #8
  br label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gen_pool, ptr %14, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gen_pool, ptr %14, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %14, i32 noundef 4096, ptr noundef %20, ptr noundef %22, ptr noundef null) #6
  %24 = inttoptr i32 %23 to ptr
  store ptr %24, ptr @sram_sync, align 4
  br label %25

25:                                               ; preds = %18, %16, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_barrier_reserve_memblock() local_unnamed_addr #2 section ".init.text" {
  store i1 true, ptr @dram_sync_size, align 4
  %1 = tail call i32 @arm_memblock_steal(i32 noundef 1048576, i32 noundef 1048576) #6
  store i32 %1, ptr @dram_sync_paddr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_memblock_steal(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_barriers_init() local_unnamed_addr #2 section ".init.text" {
  %1 = alloca [1 x %struct.map_desc], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  store i32 -27262976, ptr %1, align 4
  %2 = load i32, ptr @dram_sync_paddr, align 4
  %3 = lshr i32 %2, 12
  %4 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  %5 = load i1, ptr @dram_sync_size, align 4
  %6 = select i1 %5, i32 1048576, i32 0
  %7 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 3
  store i32 15, ptr %8, align 4
  call void @iotable_init(ptr noundef nonnull %1, i32 noundef 1) #6
  %9 = load i32, ptr %1, align 4
  %10 = inttoptr i32 %9 to ptr
  store ptr %10, ptr @dram_sync, align 4
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @dram_sync_paddr, ptr noundef %10) #8
  store ptr @omap4_mb, ptr @soc_mb, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_mb() #0 {
  %1 = load ptr, ptr @dram_sync, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 0) #6, !srcloc !9
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_dist_disable() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gic_dist_base_addr, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 0) #6, !srcloc !9
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_dist_enable() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gic_dist_base_addr, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 1) #6, !srcloc !9
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @gic_dist_disabled() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gic_dist_base_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !8
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_timer_retrigger() local_unnamed_addr #0 {
  %1 = load ptr, ptr @twd_base, align 4
  %2 = getelementptr i8, ptr %1, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !8
  %4 = load ptr, ptr @gic_dist_base_addr, align 4
  %5 = getelementptr i8, ptr %4, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  %7 = load ptr, ptr @twd_base, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !8
  %10 = icmp ne i32 %3, 0
  %11 = and i32 %6, 536870912
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %26

14:                                               ; preds = %0
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.gic_timer_retrigger) #8
  %16 = load ptr, ptr @twd_base, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #6, !srcloc !9
  %18 = and i32 %9, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load ptr, ptr @twd_base, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #6, !srcloc !9
  %23 = or i32 %9, 1
  %24 = load ptr, ptr @twd_base, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !9
  br label %26

26:                                               ; preds = %20, %14, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap4_get_l2cache_base() local_unnamed_addr #5 {
  %1 = load ptr, ptr @l2cache_base, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap4_l2c310_write_sec(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %10 [
    i32 256, label %13
    i32 260, label %3
    i32 3904, label %4
    i32 3936, label %5
    i32 3968, label %6
  ]

3:                                                ; preds = %2
  br label %13

4:                                                ; preds = %2
  br label %13

5:                                                ; preds = %2
  br label %13

6:                                                ; preds = %2
  %7 = load i1, ptr @omap4_l2c310_write_sec.__already_done, align 1
  br i1 %7, label %15, label %8, !prof !11

8:                                                ; preds = %6
  store i1 true, ptr @omap4_l2c310_write_sec.__already_done, align 1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %15

10:                                               ; preds = %2
  %11 = load i1, ptr @omap4_l2c310_write_sec.__already_done.3, align 1
  br i1 %11, label %15, label %12, !prof !11

12:                                               ; preds = %10
  store i1 true, ptr @omap4_l2c310_write_sec.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 245, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %1) #6
  br label %15

13:                                               ; preds = %5, %4, %3, %2
  %14 = phi i32 [ 275, %5 ], [ 256, %4 ], [ 265, %3 ], [ 258, %2 ]
  tail call void @omap_smc1(i32 noundef %14, i32 noundef %0) #6
  br label %15

15:                                               ; preds = %13, %12, %10, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_l2_cache_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @ioremap(i32 noundef 1210327040, i32 noundef 4096) #6
  store ptr %1, ptr @l2cache_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !12

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 256, i32 noundef 9, ptr noundef null) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ -12, %3 ], [ 0, %0 ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap4_get_sar_ram_base() local_unnamed_addr #5 {
  %1 = load ptr, ptr @sar_ram_base, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap4_sar_ram_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 68
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #6
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 84
  br i1 %7, label %8, label %13

8:                                                ; preds = %4, %0
  %9 = phi i32 [ 1244815360, %0 ], [ 1256349696, %4 ]
  %10 = tail call ptr @ioremap(i32 noundef %9, i32 noundef 16384) #6
  store ptr %10, ptr @sar_ram_base, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 289, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %8, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_gic_of_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @intc_match, ptr noundef null) #6
  store ptr %1, ptr @intc_node, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !12

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %6

6:                                                ; preds = %3, %0
  %7 = tail call i32 @omap_rev() #6
  %8 = and i32 %7, -1048576
  %9 = icmp eq i32 %8, 1147142144
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #6
  %12 = tail call ptr @of_iomap(ptr noundef %11, i32 noundef 0) #6
  store ptr %12, ptr @gic_dist_base_addr, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !12

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 317, i32 noundef 9, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #6
  %17 = tail call ptr @of_iomap(ptr noundef %16, i32 noundef 0) #6
  store ptr %17, ptr @twd_base, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 321, i32 noundef 9, ptr noundef null) #6
  br label %20

20:                                               ; preds = %19, %15, %6
  tail call void @irqchip_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold }
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
!8 = !{i64 952478}
!9 = !{i64 952060}
!10 = !{i64 2154384212}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
