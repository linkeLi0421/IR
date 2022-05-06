; ModuleID = '/llk/IR/drivers/crypto/caam/jr.c_pt.bc'
source_filename = "../drivers/crypto/caam/jr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_jr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_jr_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_caam_jr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_jr_free:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_jr_free\22\09\09\09\09\09"
module asm "__kstrtabns_caam_jr_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_jr_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_jr_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_caam_jr_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.jr_driver_data = type { %struct.list_head, %struct.spinlock, [52 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [15 x i8], %struct.atomic_t, ptr, [56 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.144, i32 }
%union.anon.144 = type { ptr }
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
%struct.page = type { i32, %union.anon.1, %union.anon.120, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }
%struct.caam_jrentry_info = type { ptr, ptr, ptr, i32, i32 }
%struct.caam_job_ring = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [900 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.148 = type { i32, i32 }
%struct.anon.149 = type { i32, i32 }

@driver_data = internal global %struct.jr_driver_data zeroinitializer, align 64
@__kstrtab_caam_jr_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_jr_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_jr_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_jr_alloc to i32), ptr @__kstrtab_caam_jr_alloc, ptr @__kstrtabns_caam_jr_alloc }, section "___ksymtab+caam_jr_alloc", align 4
@__kstrtab_caam_jr_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_jr_free = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_jr_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_jr_free to i32), ptr @__kstrtab_caam_jr_free, ptr @__kstrtabns_caam_jr_free }, section "___ksymtab+caam_jr_free", align 4
@.str = private unnamed_addr constant [38 x i8] c"caam_jr_enqueue(): can't map jobdesc\0A\00", align 1
@__kstrtab_caam_jr_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_jr_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_jr_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_jr_enqueue to i32), ptr @__kstrtab_caam_jr_enqueue, ptr @__kstrtabns_caam_jr_enqueue }, section "___ksymtab+caam_jr_enqueue", align 4
@caam_jr_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec-v4.0-job-ring\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec4.0-job-ring\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license469 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [40 x i8] c"description=FSL CAAM JR request backend\00", section ".modinfo", align 1
@__UNIQUE_ID_author471 = internal constant [41 x i8] c"author=Freescale Semiconductor - NMG/STC\00", section ".modinfo", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@caam_jr_driver = internal global %struct.platform_driver { ptr @caam_jr_probe, ptr @caam_jr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @caam_jr_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [8 x i8] c"caam_jr\00", align 1
@caam_jr_probe.total_jobrs = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"platform_get_resource() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"devm_ioremap() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"dma_set_mask_and_coherent failed (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Could not init crypto-engine\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Could not start crypto-engine\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"irq_of_parse_and_map failed\0A\00", align 1
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"fsl,sec-v5.0-job-ring\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fsl,sec-v5.0\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"can't connect JobR %d interrupt (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to flush job ring %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"failed to reset job ring %d\0A\00", align 1
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"job ring error: irqstate: %08x\0A\00", align 1
@algs_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @algs_lock, i64 12), ptr getelementptr (i8, ptr @algs_lock, i64 12) } }, align 4
@active_devs = internal unnamed_addr global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"Device is busy\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Failed to shut down job ring\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author471, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_license469, ptr @__ksymtab_caam_jr_alloc, ptr @__ksymtab_caam_jr_enqueue, ptr @__ksymtab_caam_jr_free], section "llvm.metadata"

@__mod_of__caam_jr_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @caam_jr_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @caam_jr_alloc() #0 {
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #6
  %1 = load volatile ptr, ptr @driver_data, align 64
  %2 = icmp eq ptr %1, @driver_data
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %4 = load i16, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  %5 = add i16 %4, 1
  store i16 %5, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %30

6:                                                ; preds = %9
  %7 = load ptr, ptr %12, align 64
  %8 = icmp eq ptr %7, @driver_data
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %0
  %10 = phi ptr [ %17, %6 ], [ null, %0 ]
  %11 = phi i32 [ %16, %6 ], [ 2147483647, %0 ]
  %12 = phi ptr [ %7, %6 ], [ %1, %0 ]
  %13 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %12, i32 0, i32 8
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp slt i32 %14, %11
  %16 = tail call i32 @llvm.smin.i32(i32 %14, i32 %11)
  %17 = select i1 %15, ptr %12, ptr %10
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %6

19:                                               ; preds = %9, %6
  %20 = icmp eq ptr %17, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %17, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #6, !srcloc !13
  %24 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %17, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi ptr [ %25, %21 ], [ inttoptr (i32 -19 to ptr), %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %28 = load i16, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  %29 = add i16 %28, 1
  store i16 %29, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi ptr [ inttoptr (i32 -19 to ptr), %3 ], [ %27, %26 ]
  ret ptr %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @caam_jr_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #6, !srcloc !12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #6, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @caam_jr_enqueue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %1, align 4
  %8 = load i8, ptr @caam_little_end, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %7, 24
  %11 = select i1 %9, i32 %10, i32 %7
  %12 = shl i32 %11, 2
  %13 = and i32 %12, 508
  %14 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #6
  %15 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %27, !prof !16

18:                                               ; preds = %4
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %19 = tail call ptr @dev_driver_string(ptr noundef %0) #6
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load ptr, ptr %0, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %21, %18 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %19, ptr noundef %26) #6
  br label %27

27:                                               ; preds = %25, %4
  br i1 %14, label %37, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %1 to i32
  %31 = add i32 %30, 1073741824
  %32 = lshr i32 %31, 12
  %33 = getelementptr %struct.page, ptr %29, i32 %32
  %34 = and i32 %30, 4095
  %35 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %33, i32 noundef %34, i32 noundef %13, i32 noundef 1, i32 noundef 0) #6
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #7
  br label %92

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 13
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 16
  %43 = load volatile i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = add i32 %41, 1
  %49 = sub i32 %43, %48
  %50 = and i32 %49, 511
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %38
  tail call void @_raw_spin_unlock_bh(ptr noundef %39) #6
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %35, i32 noundef %13, i32 noundef 1, i32 noundef 0) #6
  br label %92

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.caam_jrentry_info, ptr %55, i32 %41
  %57 = getelementptr %struct.caam_jrentry_info, ptr %55, i32 %41, i32 2
  store ptr %1, ptr %57, align 4
  %58 = getelementptr %struct.caam_jrentry_info, ptr %55, i32 %41, i32 4
  store i32 %13, ptr %58, align 4
  store ptr %2, ptr %56, align 4
  %59 = getelementptr %struct.caam_jrentry_info, ptr %55, i32 %41, i32 1
  store ptr %3, ptr %59, align 4
  %60 = getelementptr %struct.caam_jrentry_info, ptr %55, i32 %41, i32 3
  store i32 %35, ptr %60, align 4
  %61 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 14
  %62 = load ptr, ptr %61, align 4
  %63 = load i8, ptr @caam_little_end, align 1, !range !15
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %66 = select i1 %64, i32 %65, i32 %35
  %67 = getelementptr i32, ptr %62, i32 %41
  store i32 %66, ptr %67, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !17
  %68 = and i32 %48, 511
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 3
  %70 = load ptr, ptr %69, align 16
  %71 = getelementptr inbounds %struct.caam_job_ring, ptr %70, i32 0, i32 6
  %72 = load i8, ptr @caam_little_end, align 1, !range !15
  %73 = icmp eq i8 %72, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %73, label %75, label %74

74:                                               ; preds = %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1) #6, !srcloc !18
  br label %76

75:                                               ; preds = %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 16777216) #6, !srcloc !18
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, ptr %44, align 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %44, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load ptr, ptr %69, align 16
  %82 = getelementptr inbounds %struct.caam_job_ring, ptr %81, i32 0, i32 4
  %83 = load i8, ptr @caam_little_end, align 1, !range !15
  %84 = icmp eq i8 %83, 0
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6
  br i1 %84, label %87, label %86

86:                                               ; preds = %80
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %89

87:                                               ; preds = %80
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i32 [ %85, %86 ], [ %88, %87 ]
  store i32 %90, ptr %44, align 4
  br label %91

91:                                               ; preds = %89, %76
  tail call void @_raw_spin_unlock_bh(ptr noundef %39) #6
  br label %92

92:                                               ; preds = %91, %52, %37
  %93 = phi i32 [ -5, %37 ], [ -28, %52 ], [ -115, %91 ]
  ret i32 %93
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  store i32 0, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  store volatile ptr @driver_data, ptr @driver_data, align 64
  store ptr @driver_data, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @caam_jr_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @caam_jr_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_jr_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 192, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %205, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = load i32, ptr @caam_jr_probe.total_jobrs, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr @caam_jr_probe.total_jobrs, align 4
  %11 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 2
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #7
  br label %205

17:                                               ; preds = %7
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 1, %18
  %22 = add i32 %21, %20
  %23 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %18, i32 noundef %22) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #7
  br label %205

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 3
  store ptr %23, ptr %27, align 16
  %28 = load ptr, ptr %12, align 8
  %29 = load i32, ptr @caam_ptr_sz, align 4
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8, ptr @caam_dpaa2, align 1, !range !15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = tail call i32 @of_device_is_compatible(ptr noundef %28, ptr noundef nonnull @.str.10) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = tail call i32 @of_device_is_compatible(ptr noundef %28, ptr noundef nonnull @.str.11) #6
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i64 68719476735, i64 1099511627775
  br label %41

41:                                               ; preds = %37, %34, %31, %26
  %42 = phi i64 [ 4294967295, %26 ], [ 562949953421311, %31 ], [ 1099511627775, %34 ], [ %40, %37 ]
  %43 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %43) #7
  br label %205

46:                                               ; preds = %41
  %47 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef %42) #6
  %48 = tail call ptr @crypto_engine_alloc_init_and_set(ptr noundef %4, i1 noundef zeroext true, ptr noundef null, i1 noundef zeroext false, i32 noundef 497) #6
  %49 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 18
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #7
  br label %205

52:                                               ; preds = %46
  %53 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @caam_jr_crypto_engine_exit, ptr noundef %4) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %8, align 8
  %57 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %56, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @crypto_engine_exit(ptr noundef %58) #6
  br label %205

60:                                               ; preds = %52
  %61 = load ptr, ptr %49, align 4
  %62 = tail call i32 @crypto_engine_start(ptr noundef %61) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  br label %205

65:                                               ; preds = %60
  %66 = tail call i32 @irq_of_parse_and_map(ptr noundef %13, i32 noundef 0) #6
  %67 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 5
  store i32 %66, ptr %67, align 4
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #7
  br label %205

70:                                               ; preds = %65
  %71 = inttoptr i32 %66 to ptr
  %72 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @caam_jr_irq_dispose_mapping, ptr noundef nonnull %71) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @irq_dispose_mapping(i32 noundef %66) #6
  br label %205

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !21
  %76 = load ptr, ptr %8, align 8
  %77 = tail call fastcc i32 @caam_reset_hw_jr(ptr noundef %4) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %182

79:                                               ; preds = %75
  %80 = load i32, ptr @caam_ptr_sz, align 4
  %81 = shl i32 %80, 9
  %82 = call ptr @dmam_alloc_attrs(ptr noundef %4, i32 noundef %81, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #6
  %83 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 14
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %182, label %85

85:                                               ; preds = %79
  %86 = load i32, ptr @caam_ptr_sz, align 4
  %87 = shl i32 %86, 9
  %88 = add i32 %87, 2048
  %89 = call ptr @dmam_alloc_attrs(ptr noundef %4, i32 noundef %88, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #6
  %90 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 17
  store ptr %89, ptr %90, align 8
  %91 = icmp eq ptr %89, null
  br i1 %91, label %182, label %92

92:                                               ; preds = %85
  %93 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 10240, i32 noundef 3520) #6
  %94 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 9
  store ptr %93, ptr %94, align 4
  %95 = icmp eq ptr %93, null
  br i1 %95, label %182, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.caam_jrentry_info, ptr %93, i32 0, i32 3
  store i32 1, ptr %97, align 4
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi i32 [ 1, %96 ], [ %102, %98 ]
  %100 = load ptr, ptr %94, align 4
  %101 = getelementptr %struct.caam_jrentry_info, ptr %100, i32 %99, i32 3
  store i32 1, ptr %101, align 4
  %102 = add nuw nsw i32 %99, 1
  %103 = icmp eq i32 %102, 512
  br i1 %103, label %104, label %98

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 15
  store i32 0, ptr %105, align 16
  %106 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 13
  store i32 0, ptr %106, align 8
  %107 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 16
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 3
  %109 = load ptr, ptr %108, align 16
  %110 = load i32, ptr %2, align 4
  %111 = load i8, ptr @caam_little_end, align 1, !range !15
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %104
  %114 = load i8, ptr @caam_imx, align 1, !range !15
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #6, !srcloc !18
  %117 = getelementptr i32, ptr %109, i32 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %110) #6, !srcloc !18
  br label %123

118:                                              ; preds = %113
  %119 = getelementptr i8, ptr %109, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 0) #6, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %110) #6, !srcloc !18
  br label %123

120:                                              ; preds = %104
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #6, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  call void @arm_heavy_mb() #6
  %121 = call i32 @llvm.bswap.i32(i32 %110) #6
  %122 = getelementptr i8, ptr %109, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %121) #6, !srcloc !18
  br label %123

123:                                              ; preds = %120, %118, %116
  %124 = load ptr, ptr %108, align 16
  %125 = getelementptr inbounds %struct.caam_job_ring, ptr %124, i32 0, i32 7
  %126 = load i32, ptr %3, align 4
  %127 = load i8, ptr @caam_little_end, align 1, !range !15
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = load i8, ptr @caam_imx, align 1, !range !15
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 0) #6, !srcloc !18
  %133 = getelementptr i32, ptr %125, i32 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %126) #6, !srcloc !18
  br label %139

134:                                              ; preds = %129
  %135 = getelementptr i8, ptr %125, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #6, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %126) #6, !srcloc !18
  br label %139

136:                                              ; preds = %123
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 0) #6, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  call void @arm_heavy_mb() #6
  %137 = call i32 @llvm.bswap.i32(i32 %126) #6
  %138 = getelementptr i8, ptr %125, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %137) #6, !srcloc !18
  br label %139

139:                                              ; preds = %136, %134, %132
  %140 = load ptr, ptr %108, align 16
  %141 = getelementptr inbounds %struct.caam_job_ring, ptr %140, i32 0, i32 2
  %142 = load i8, ptr @caam_little_end, align 1, !range !15
  %143 = icmp eq i8 %142, 0
  call void asm sideeffect "dsb st", "~{memory}"() #6
  call void @arm_heavy_mb() #6
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 512) #6, !srcloc !18
  br label %146

145:                                              ; preds = %139
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 131072) #6, !srcloc !18
  br label %146

146:                                              ; preds = %145, %144
  %147 = load ptr, ptr %108, align 16
  %148 = getelementptr inbounds %struct.caam_job_ring, ptr %147, i32 0, i32 9
  %149 = load i8, ptr @caam_little_end, align 1, !range !15
  %150 = icmp eq i8 %149, 0
  call void asm sideeffect "dsb st", "~{memory}"() #6
  call void @arm_heavy_mb() #6
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 512) #6, !srcloc !18
  br label %153

152:                                              ; preds = %146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 131072) #6, !srcloc !18
  br label %153

153:                                              ; preds = %152, %151
  %154 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 12
  store i32 512, ptr %154, align 4
  %155 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 11
  store i32 0, ptr %155, align 64
  %156 = load ptr, ptr %108, align 16
  %157 = getelementptr inbounds %struct.caam_job_ring, ptr %156, i32 0, i32 19
  %158 = load i8, ptr @caam_little_end, align 1, !range !15
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %153
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #6, !srcloc !25
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %161) #6, !srcloc !18
  br label %164

162:                                              ; preds = %153
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  call void @arm_heavy_mb() #6
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #6, !srcloc !25
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %163) #6, !srcloc !18
  br label %164

164:                                              ; preds = %162, %160
  %165 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 4
  %166 = ptrtoint ptr %4 to i32
  call void @tasklet_init(ptr noundef %165, ptr noundef nonnull @caam_jr_dequeue, i32 noundef %166) #6
  %167 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load ptr, ptr %4, align 4
  br label %174

174:                                              ; preds = %172, %164
  %175 = phi ptr [ %173, %172 ], [ %170, %164 ]
  %176 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %168, ptr noundef nonnull @caam_jr_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %175, ptr noundef %4) #6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %76, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = load i32, ptr %167, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %180, i32 noundef %181) #7
  call void @tasklet_kill(ptr noundef %165) #6
  br label %182

182:                                              ; preds = %178, %92, %85, %79, %75
  %183 = phi i32 [ %176, %178 ], [ -12, %92 ], [ -12, %85 ], [ -12, %79 ], [ %77, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %205

184:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %185 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 1
  store ptr %4, ptr %185, align 8
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #6
  %186 = load ptr, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  store ptr @driver_data, ptr %5, align 4
  %187 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %186, ptr %187, align 4
  store volatile ptr %5, ptr %186, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %188 = load i16, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  %189 = add i16 %188, 1
  store i16 %189, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %190 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 8
  store volatile i32 0, ptr %190, align 4
  %191 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %192 = load ptr, ptr %191, align 4
  call void @mutex_lock(ptr noundef nonnull @algs_lock) #6
  %193 = load i32, ptr @active_devs, align 4
  %194 = add i32 %193, 1
  store i32 %194, ptr @active_devs, align 4
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %184
  %197 = call i32 @caam_algapi_init(ptr noundef %192) #6
  %198 = call i32 @caam_algapi_hash_init(ptr noundef %192) #6
  %199 = call i32 @caam_pkc_init(ptr noundef %192) #6
  %200 = call i32 @caam_rng_init(ptr noundef %192) #6
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 6
  %203 = zext i1 %201 to i8
  store i8 %203, ptr %202, align 16
  br label %204

204:                                              ; preds = %196, %184
  call void @mutex_unlock(ptr noundef nonnull @algs_lock) #6
  br label %205

205:                                              ; preds = %204, %182, %74, %69, %64, %55, %51, %45, %25, %16, %1
  %206 = phi i32 [ %43, %45 ], [ %62, %64 ], [ 0, %204 ], [ -22, %69 ], [ -12, %51 ], [ -12, %25 ], [ -12, %16 ], [ -12, %1 ], [ %53, %55 ], [ %72, %74 ], [ %183, %182 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_jr_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 16, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @caam_rng_exit(ptr noundef %10) #6
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 8
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @algs_lock) #6
  %16 = load i32, ptr @active_devs, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr @active_devs, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @caam_pkc_exit() #6
  tail call void @caam_algapi_hash_exit() #6
  tail call void @caam_algapi_exit() #6
  br label %20

20:                                               ; preds = %19, %15
  tail call void @mutex_unlock(ptr noundef nonnull @algs_lock) #6
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1)) #6
  %21 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %25 = load i16, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  %26 = add i16 %25, 1
  store i16 %26, ptr getelementptr inbounds (%struct.jr_driver_data, ptr @driver_data, i32 0, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %27 = load ptr, ptr %3, align 8
  %28 = tail call fastcc i32 @caam_reset_hw_jr(ptr noundef %2) #6
  %29 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %27, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %29) #6
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20, %11
  %32 = phi ptr [ @.str.16, %11 ], [ @.str.17, %20 ]
  %33 = phi i32 [ -16, %11 ], [ %28, %20 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %32) #7
  br label %34

34:                                               ; preds = %31, %20
  %35 = phi i32 [ 0, %20 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init_and_set(ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_jr_crypto_engine_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @crypto_engine_exit(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_jr_irq_dispose_mapping(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  tail call void @irq_dispose_mapping(i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @caam_reset_hw_jr(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.caam_job_ring, ptr %5, i32 0, i32 19
  %7 = load i8, ptr @caam_little_end, align 1, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #6, !srcloc !18
  br label %15

12:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %14) #6, !srcloc !18
  br label %15

15:                                               ; preds = %12, %9
  %16 = load ptr, ptr %4, align 16
  %17 = getelementptr inbounds %struct.caam_job_ring, ptr %16, i32 0, i32 25
  %18 = load i8, ptr @caam_little_end, align 1, !range !15
  %19 = icmp eq i8 %18, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #6, !srcloc !18
  br label %22

21:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #6, !srcloc !18
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %40, %22
  %24 = phi i32 [ %38, %40 ], [ 100000, %22 ]
  %25 = load ptr, ptr %4, align 16
  %26 = getelementptr inbounds %struct.caam_job_ring, ptr %25, i32 0, i32 17
  %27 = load i8, ptr @caam_little_end, align 1, !range !15
  %28 = icmp eq i8 %27, 0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6
  br i1 %28, label %31, label %30

30:                                               ; preds = %23
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %33

31:                                               ; preds = %23
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ %29, %30 ], [ %32, %31 ]
  %35 = and i32 %34, 12
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = add nsw i32 %24, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !29
  br label %23

41:                                               ; preds = %37, %33
  %42 = load ptr, ptr %4, align 16
  %43 = getelementptr inbounds %struct.caam_job_ring, ptr %42, i32 0, i32 17
  %44 = load i8, ptr @caam_little_end, align 1, !range !15
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6
  br i1 %45, label %48, label %47

47:                                               ; preds = %41
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %50

48:                                               ; preds = %41
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ %46, %47 ], [ %49, %48 ]
  %52 = and i32 %51, 12
  %53 = icmp ne i32 %52, 8
  %54 = select i1 %53, i1 true, i1 %36
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %57) #7
  br label %98

58:                                               ; preds = %50
  %59 = load ptr, ptr %4, align 16
  %60 = getelementptr inbounds %struct.caam_job_ring, ptr %59, i32 0, i32 25
  %61 = load i8, ptr @caam_little_end, align 1, !range !15
  %62 = icmp eq i8 %61, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 1) #6, !srcloc !18
  br label %65

64:                                               ; preds = %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 16777216) #6, !srcloc !18
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %83, %65
  %67 = phi i32 [ %81, %83 ], [ 100000, %65 ]
  %68 = load ptr, ptr %4, align 16
  %69 = getelementptr inbounds %struct.caam_job_ring, ptr %68, i32 0, i32 25
  %70 = load i8, ptr @caam_little_end, align 1, !range !15
  %71 = icmp eq i8 %70, 0
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6
  br i1 %71, label %74, label %73

73:                                               ; preds = %66
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %76

74:                                               ; preds = %66
  %75 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ %72, %73 ], [ %75, %74 ]
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = add nsw i32 %67, -1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !31
  br label %66

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %86) #7
  br label %98

87:                                               ; preds = %76
  %88 = load ptr, ptr %4, align 16
  %89 = getelementptr inbounds %struct.caam_job_ring, ptr %88, i32 0, i32 19
  %90 = load i8, ptr @caam_little_end, align 1, !range !15
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %94 = and i32 %93, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %94) #6, !srcloc !18
  br label %98

95:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %97 = and i32 %96, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %97) #6, !srcloc !18
  br label %98

98:                                               ; preds = %95, %92, %84, %55
  %99 = phi i32 [ -5, %55 ], [ -5, %84 ], [ 0, %92 ], [ 0, %95 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_jr_dequeue(i32 noundef %0) #0 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 13
  %7 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 16
  %8 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 15
  %9 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 17
  %10 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 9
  br label %11

11:                                               ; preds = %102, %1
  %12 = phi i32 [ 0, %1 ], [ %103, %102 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 16
  %16 = getelementptr inbounds %struct.caam_job_ring, ptr %15, i32 0, i32 13
  %17 = load i8, ptr @caam_little_end, align 1, !range !15
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6
  br i1 %18, label %21, label %20

20:                                               ; preds = %14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %23

21:                                               ; preds = %14
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ %19, %20 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %104, label %26

26:                                               ; preds = %23, %11
  %27 = phi i32 [ %12, %11 ], [ %24, %23 ]
  %28 = load volatile i32, ptr %6, align 8
  %29 = load i32, ptr %7, align 4
  %30 = load i32, ptr %8, align 16
  %31 = sub i32 %28, %29
  %32 = and i32 %31, 511
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %9, align 8
  %36 = getelementptr %struct.anon.148, ptr %35, i32 %30
  %37 = load i32, ptr %36, align 1
  %38 = load ptr, ptr %10, align 4
  %39 = load i8, ptr @caam_little_end, align 1, !range !15
  %40 = icmp eq i8 %39, 0
  %41 = sub i32 %28, %29
  %42 = and i32 %41, 511
  br label %47

43:                                               ; preds = %47
  %44 = add nuw nsw i32 %49, 1
  %45 = add i32 %44, %29
  %46 = icmp eq i32 %44, %42
  br i1 %46, label %56, label %47

47:                                               ; preds = %43, %34
  %48 = phi i32 [ %29, %34 ], [ %45, %43 ]
  %49 = phi i32 [ 0, %34 ], [ %44, %43 ]
  %50 = and i32 %48, 511
  %51 = getelementptr %struct.caam_jrentry_info, ptr %38, i32 %50, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %54 = select i1 %40, i32 %53, i32 %52
  %55 = icmp eq i32 %54, %37
  br i1 %55, label %57, label %43

56:                                               ; preds = %43, %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/caam/jr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

57:                                               ; preds = %47
  %58 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %59 = select i1 %40, i32 %58, i32 %37
  %60 = getelementptr %struct.caam_jrentry_info, ptr %38, i32 %50, i32 4
  %61 = load i32, ptr %60, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %2, i32 noundef %59, i32 noundef %61, i32 noundef 1, i32 noundef 0) #6
  %62 = load ptr, ptr %10, align 4
  %63 = getelementptr %struct.caam_jrentry_info, ptr %62, i32 %50, i32 3
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr %struct.caam_jrentry_info, ptr %64, i32 %50
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr %struct.caam_jrentry_info, ptr %64, i32 %50, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.caam_jrentry_info, ptr %64, i32 %50, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %9, align 8
  %72 = getelementptr %struct.anon.149, ptr %71, i32 %30, i32 1
  %73 = load i32, ptr %72, align 1
  %74 = load i8, ptr @caam_little_end, align 1, !range !15
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  %77 = select i1 %75, i32 %76, i32 %73
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %78 = load ptr, ptr %5, align 16
  %79 = getelementptr inbounds %struct.caam_job_ring, ptr %78, i32 0, i32 11
  %80 = load i8, ptr @caam_little_end, align 1, !range !15
  %81 = icmp eq i8 %80, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %81, label %83, label %82

82:                                               ; preds = %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 1) #6, !srcloc !18
  br label %84

83:                                               ; preds = %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 16777216) #6, !srcloc !18
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, ptr %8, align 16
  %86 = add i32 %85, 1
  %87 = and i32 %86, 511
  store i32 %87, ptr %8, align 16
  %88 = icmp eq i32 %50, %29
  br i1 %88, label %89, label %102

89:                                               ; preds = %96, %84
  %90 = phi i32 [ %92, %96 ], [ %29, %84 ]
  %91 = add i32 %90, 1
  %92 = and i32 %91, 511
  %93 = sub i32 %28, %91
  %94 = and i32 %93, 511
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load ptr, ptr %10, align 4
  %98 = getelementptr %struct.caam_jrentry_info, ptr %97, i32 %92, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %89, label %101

101:                                              ; preds = %96, %89
  store i32 %92, ptr %7, align 4
  br label %102

102:                                              ; preds = %101, %84
  tail call void %66(ptr noundef %2, ptr noundef %70, i32 noundef %77, ptr noundef %68) #6
  %103 = add i32 %27, -1
  br label %11

104:                                              ; preds = %23
  %105 = load ptr, ptr %5, align 16
  %106 = getelementptr inbounds %struct.caam_job_ring, ptr %105, i32 0, i32 19
  %107 = load i8, ptr @caam_little_end, align 1, !range !15
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %111 = and i32 %110, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %111) #6, !srcloc !18
  br label %115

112:                                              ; preds = %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %114 = and i32 %113, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %114) #6, !srcloc !18
  br label %115

115:                                              ; preds = %112, %109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_jr_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.caam_job_ring, ptr %6, i32 0, i32 17
  %8 = load i8, ptr @caam_little_end, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6
  br i1 %9, label %12, label %11

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %10, %11 ], [ %13, %12 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = and i32 %15, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %15) #7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/caam/jr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 16
  %23 = getelementptr inbounds %struct.caam_job_ring, ptr %22, i32 0, i32 19
  %24 = load i8, ptr @caam_little_end, align 1, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %28 = or i32 %27, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %28) #6, !srcloc !18
  br label %32

29:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %31 = or i32 %30, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %31) #6, !srcloc !18
  br label %32

32:                                               ; preds = %29, %26
  %33 = load ptr, ptr %5, align 16
  %34 = getelementptr inbounds %struct.caam_job_ring, ptr %33, i32 0, i32 17
  %35 = load i8, ptr @caam_little_end, align 1, !range !15
  %36 = icmp eq i8 %35, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %15) #6, !srcloc !18
  br label %40

38:                                               ; preds = %32
  %39 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %39) #6, !srcloc !18
  br label %40

40:                                               ; preds = %38, %37
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  %41 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 4, i32 1
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %41) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %4, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %45) #6
  br label %46

46:                                               ; preds = %44, %40
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  br label %47

47:                                               ; preds = %46, %14
  %48 = phi i32 [ 1, %46 ], [ 0, %14 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_algapi_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_algapi_hash_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_pkc_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_rng_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_rng_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_pkc_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_algapi_hash_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_algapi_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148881793}
!9 = !{i64 2148877617}
!10 = !{i64 2148877692, i64 2148877719, i64 2148877766, i64 2148877788, i64 2148877816, i64 2148877836}
!11 = !{i64 2148904796}
!12 = !{i64 714727, i64 2148204698, i64 2148204724, i64 2148204771, i64 2148204793, i64 2148204821, i64 2148204841}
!13 = !{i64 2148216113, i64 2148216139, i64 2148216168, i64 2148216202, i64 2148216233, i64 2148216256}
!14 = !{i64 2148218470, i64 2148218496, i64 2148218525, i64 2148218559, i64 2148218590, i64 2148218613}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2157055470}
!18 = !{i64 2475483}
!19 = !{i64 2150015354}
!20 = !{i64 2156935804}
!21 = !{!"auto-init"}
!22 = !{i64 2150016576}
!23 = !{i64 2156926468}
!24 = !{i64 2156926803}
!25 = !{i64 2475901}
!26 = !{i64 2156936732}
!27 = !{i64 2156937202}
!28 = !{i64 2157036998}
!29 = !{i64 2157036840}
!30 = !{i64 2157037851}
!31 = !{i64 2157037693}
!32 = !{i64 2157044534, i64 2157045023, i64 2157044571, i64 2157044627, i64 2157044661, i64 2157044685, i64 2157044726, i64 2157044747, i64 2157044775, i64 2157044809}
!33 = !{i64 2157045515}
!34 = !{i64 2157040332, i64 2157040821, i64 2157040369, i64 2157040425, i64 2157040459, i64 2157040483, i64 2157040524, i64 2157040545, i64 2157040573, i64 2157040607}
!35 = !{i64 2157041116}
!36 = !{i64 2157041164}
