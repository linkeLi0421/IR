; ModuleID = '/llk/IR/arch/arm/plat-pxa/ssp.c_pt.bc'
source_filename = "../arch/arm/plat-pxa/ssp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa_ssp_request:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa_ssp_request\22\09\09\09\09\09"
module asm "__kstrtabns_pxa_ssp_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa_ssp_request_of:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa_ssp_request_of\22\09\09\09\09\09"
module asm "__kstrtabns_pxa_ssp_request_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa_ssp_free:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa_ssp_free\22\09\09\09\09\09"
module asm "__kstrtabns_pxa_ssp_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
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

@ssp_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ssp_lock, i64 12), ptr getelementptr (i8, ptr @ssp_lock, i64 12) } }, align 4
@ssp_list = internal global %struct.list_head { ptr @ssp_list, ptr @ssp_list }, align 4
@__kstrtab_pxa_ssp_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa_ssp_request = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa_ssp_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa_ssp_request to i32), ptr @__kstrtab_pxa_ssp_request, ptr @__kstrtabns_pxa_ssp_request }, section "___ksymtab+pxa_ssp_request", align 4
@__kstrtab_pxa_ssp_request_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa_ssp_request_of = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa_ssp_request_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa_ssp_request_of to i32), ptr @__kstrtab_pxa_ssp_request_of, ptr @__kstrtabns_pxa_ssp_request_of }, section "___ksymtab+pxa_ssp_request_of", align 4
@.str = private unnamed_addr constant [21 x i8] c"device already free\0A\00", align 1
@__kstrtab_pxa_ssp_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa_ssp_free = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa_ssp_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa_ssp_free to i32), ptr @__kstrtab_pxa_ssp_free, ptr @__kstrtabns_pxa_ssp_free }, section "___ksymtab+pxa_ssp_free", align 4
@pxa_ssp_of_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa25x-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mvrl,pxa25x-nssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa27x-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa3xx-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mvrl,pxa168-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa910-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,ce4100-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description170 = internal constant [27 x i8] c"description=PXA SSP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author171 = internal constant [21 x i8] c"author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@pxa_ssp_driver = internal global %struct.platform_driver { ptr @pxa_ssp_probe, ptr @pxa_ssp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_ssp_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ssp_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [11 x i8] c"pxa2xx-ssp\00", align 1
@ssp_id_table = internal constant [7 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa25x-ssp\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"pxa25x-nssp\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"pxa27x-ssp\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id { [20 x i8] c"pxa3xx-ssp\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"pxa168-ssp\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"pxa910-ssp\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.platform_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"no memory resource defined\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to request memory resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to ioremap() registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no IRQ resource defined\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_license172, ptr @__ksymtab_pxa_ssp_free, ptr @__ksymtab_pxa_ssp_request, ptr @__ksymtab_pxa_ssp_request_of], section "llvm.metadata"

@__mod_of__pxa_ssp_of_ids_device_table = dso_local alias [8 x %struct.of_device_id], ptr @pxa_ssp_of_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pxa_ssp_request(i32 noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ssp_lock) #4
  %3 = load ptr, ptr @ssp_list, align 4
  %4 = icmp eq ptr %3, @ssp_list
  br i1 %4, label %21, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 32
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, @ssp_list
  br i1 %16, label %21, label %5

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %6, i32 32
  store i32 1, ptr %18, align 4
  %19 = getelementptr i8, ptr %6, i32 20
  store ptr %1, ptr %19, align 4
  %20 = getelementptr i8, ptr %6, i32 -4
  br label %21

21:                                               ; preds = %17, %14, %2
  %22 = phi ptr [ %20, %17 ], [ null, %2 ], [ null, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pxa_ssp_request_of(ptr noundef readnone %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ssp_lock) #4
  %3 = load ptr, ptr @ssp_list, align 4
  %4 = icmp eq ptr %3, @ssp_list
  br i1 %4, label %21, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 40
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 32
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, @ssp_list
  br i1 %16, label %21, label %5

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %6, i32 32
  store i32 1, ptr %18, align 4
  %19 = getelementptr i8, ptr %6, i32 20
  store ptr %1, ptr %19, align 4
  %20 = getelementptr i8, ptr %6, i32 -4
  br label %21

21:                                               ; preds = %17, %14, %2
  %22 = phi ptr [ %20, %17 ], [ null, %2 ], [ null, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pxa_ssp_free(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ssp_lock) #4
  %2 = getelementptr inbounds %struct.ssp_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.ssp_device, ptr %0, i32 0, i32 5
  store ptr null, ptr %7, align 4
  br label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #5
  br label %10

10:                                               ; preds = %8, %5
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_ssp_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa_ssp_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 48, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %7 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %72

11:                                               ; preds = %5
  %12 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %72

15:                                               ; preds = %11
  %16 = load i32, ptr %12, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 1, %16
  %20 = add i32 %19, %18
  %21 = load ptr, ptr %0, align 8
  %22 = tail call ptr @__devm_request_region(ptr noundef %2, ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %20, ptr noundef %21) #4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %72

25:                                               ; preds = %15
  %26 = load i32, ptr %22, align 4
  %27 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %22, align 4
  %29 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 1, %28
  %32 = add i32 %31, %30
  %33 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %28, i32 noundef %32) #4
  %34 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %72

37:                                               ; preds = %25
  %38 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %39 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %72

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @of_match_device(ptr noundef nonnull @pxa_ssp_of_ids, ptr noundef %2) #4
  %48 = getelementptr inbounds %struct.of_device_id, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = load ptr, ptr %43, align 8
  br label %61

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.platform_device_id, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  %60 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %52, %46
  %62 = phi ptr [ null, %52 ], [ %51, %46 ]
  %63 = phi i32 [ %56, %52 ], [ %50, %46 ]
  %64 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 8
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 10
  store ptr %62, ptr %66, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ssp_lock) #4
  %67 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 1
  %68 = load ptr, ptr @ssp_list, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store ptr %68, ptr %67, align 4
  %70 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 1, i32 1
  store ptr @ssp_list, ptr %70, align 4
  store volatile ptr %67, ptr @ssp_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  %71 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %71, align 8
  br label %72

72:                                               ; preds = %61, %41, %36, %24, %14, %9, %1
  %73 = phi i32 [ %10, %9 ], [ -19, %14 ], [ -16, %24 ], [ -19, %36 ], [ -19, %41 ], [ 0, %61 ], [ -12, %1 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @ssp_lock) #4
  %6 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %5 ], [ -19, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
