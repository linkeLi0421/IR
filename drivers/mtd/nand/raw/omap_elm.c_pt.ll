; ModuleID = '/llk/IR/drivers/mtd/nand/raw/omap_elm.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/omap_elm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elm_config:\09\09\09\09\09"
module asm "\09.asciz \09\22elm_config\22\09\09\09\09\09"
module asm "__kstrtabns_elm_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elm_decode_bch_error_page:\09\09\09\09\09"
module asm "\09.asciz \09\22elm_decode_bch_error_page\22\09\09\09\09\09"
module asm "__kstrtabns_elm_decode_bch_error_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.elm_info = type { ptr, ptr, %struct.completion, %struct.list_head, i32, %struct.elm_registers, i32, i32 }
%struct.elm_registers = type { i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.elm_errorvec = type { i8, i8, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [46 x i8] c"Unable to configure elm - device not probed?\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unsupported config ecc-size=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unsupported config ecc-step=%d\0A\00", align 1
@__kstrtab_elm_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_elm_config = external dso_local constant [0 x i8], align 1
@__ksymtab_elm_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elm_config to i32), ptr @__kstrtab_elm_config, ptr @__kstrtabns_elm_config }, section "___ksymtab+elm_config", align 4
@__kstrtab_elm_decode_bch_error_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_elm_decode_bch_error_page = external dso_local constant [0 x i8], align 1
@__ksymtab_elm_decode_bch_error_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elm_decode_bch_error_page to i32), ptr @__kstrtab_elm_decode_bch_error_page, ptr @__kstrtabns_elm_decode_bch_error_page }, section "___ksymtab+elm_decode_bch_error_page", align 4
@__initcall__kmod_omap_elm__171_568_elm_driver_init6 = internal global ptr @elm_driver_init, section ".initcall6.init", align 4
@elm_driver = internal global %struct.platform_driver { ptr @elm_probe, ptr @elm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @elm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_elm_driver_exit = internal global ptr @elm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [57 x i8] c"omap_elm.description=ELM driver for BCH error correction\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [34 x i8] c"omap_elm.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [33 x i8] c"omap_elm.alias=platform:omap-elm\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [44 x i8] c"omap_elm.file=drivers/mtd/nand/raw/omap_elm\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"omap_elm.license=GPL v2\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\013invalid config bch_type\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"omap-elm\00", align 1
@elm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-elm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@elm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @elm_suspend, ptr @elm_resume, ptr @elm_suspend, ptr @elm_resume, ptr @elm_suspend, ptr @elm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failure requesting %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"can't enable clock\0A\00", align 1
@elm_devices = internal global %struct.list_head { ptr @elm_devices, ptr @elm_devices }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_elm_driver_exit, ptr @__initcall__kmod_omap_elm__171_568_elm_driver_init6, ptr @__ksymtab_elm_config, ptr @__ksymtab_elm_decode_bch_error_page, ptr @elm_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elm_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #5
  br label %28

10:                                               ; preds = %5
  %11 = icmp sgt i32 %3, 1024
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %3) #5
  br label %28

13:                                               ; preds = %10
  %14 = icmp slt i32 %2, 9
  %15 = and i32 %2, 7
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %2) #5
  br label %28

19:                                               ; preds = %13
  %20 = and i32 %1, 3
  %21 = or i32 %20, 134152192
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %22 = getelementptr inbounds %struct.elm_info, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #6, !srcloc !9
  %25 = getelementptr inbounds %struct.elm_info, ptr %7, i32 0, i32 4
  store i32 %1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.elm_info, ptr %7, i32 0, i32 6
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.elm_info, ptr %7, i32 0, i32 7
  store i32 %4, ptr %27, align 4
  br label %28

28:                                               ; preds = %19, %18, %12, %9
  %29 = phi i32 [ -22, %12 ], [ -22, %18 ], [ 0, %19 ], [ -517, %9 ]
  ret i32 %29
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elm_decode_bch_error_page(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.elm_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %10 = and i32 %9, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 256) #6, !srcloc !9
  %15 = getelementptr inbounds %struct.elm_info, ptr %5, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %149

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.elm_info, ptr %5, i32 0, i32 4
  %20 = getelementptr inbounds %struct.elm_info, ptr %5, i32 0, i32 7
  br label %21

21:                                               ; preds = %121, %18
  %22 = phi ptr [ %1, %18 ], [ %123, %121 ]
  %23 = phi i32 [ 0, %18 ], [ %124, %121 ]
  %24 = getelementptr %struct.elm_errorvec, ptr %2, i32 %23
  %25 = load i8, ptr %24, align 4, !range !12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %121, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 128
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %31 = shl nuw i32 1, %23
  %32 = or i32 %30, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i8, ptr %33, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !9
  %35 = shl i32 %23, 6
  %36 = add i32 %35, 1024
  %37 = load i32, ptr %19, align 4
  switch i32 %37, label %119 [
    i32 1, label %38
    i32 0, label %61
    i32 2, label %77
  ]

38:                                               ; preds = %27
  %39 = getelementptr i8, ptr %22, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr i8, ptr %42, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !9
  %44 = add i32 %35, 1028
  %45 = getelementptr i8, ptr %22, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr i8, ptr %48, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !9
  %50 = add i32 %35, 1032
  %51 = getelementptr i8, ptr %22, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #6, !srcloc !9
  %56 = add i32 %35, 1036
  %57 = load i8, ptr %22, align 1
  %58 = zext i8 %57 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr i8, ptr %59, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !9
  br label %121

61:                                               ; preds = %27
  %62 = getelementptr i8, ptr %22, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %65 = getelementptr i8, ptr %22, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %64, i32 28) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr i8, ptr %69, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #6, !srcloc !9
  %71 = add i32 %35, 1028
  %72 = load i32, ptr %22, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %74 = lshr i32 %73, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr i8, ptr %75, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #6, !srcloc !9
  br label %121

77:                                               ; preds = %27
  %78 = getelementptr i8, ptr %22, i32 22
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr i8, ptr %81, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #6, !srcloc !9
  %83 = add i32 %35, 1028
  %84 = getelementptr i8, ptr %22, i32 18
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr i8, ptr %87, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #6, !srcloc !9
  %89 = add i32 %35, 1032
  %90 = getelementptr i8, ptr %22, i32 14
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %93 = load ptr, ptr %6, align 4
  %94 = getelementptr i8, ptr %93, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #6, !srcloc !9
  %95 = add i32 %35, 1036
  %96 = getelementptr i8, ptr %22, i32 10
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %99 = load ptr, ptr %6, align 4
  %100 = getelementptr i8, ptr %99, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #6, !srcloc !9
  %101 = add i32 %35, 1040
  %102 = getelementptr i8, ptr %22, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr i8, ptr %105, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #6, !srcloc !9
  %107 = add i32 %35, 1044
  %108 = getelementptr i8, ptr %22, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %111 = load ptr, ptr %6, align 4
  %112 = getelementptr i8, ptr %111, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #6, !srcloc !9
  %113 = add i32 %35, 1048
  %114 = load i32, ptr %22, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #6
  %116 = lshr i32 %115, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %117 = load ptr, ptr %6, align 4
  %118 = getelementptr i8, ptr %117, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #6, !srcloc !9
  br label %121

119:                                              ; preds = %27
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  br label %121

121:                                              ; preds = %119, %77, %61, %38, %21
  %122 = load i32, ptr %20, align 4
  %123 = getelementptr i8, ptr %22, i32 %122
  %124 = add nuw nsw i32 %23, 1
  %125 = load i32, ptr %15, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %21, label %127

127:                                              ; preds = %121
  %128 = icmp sgt i32 %125, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %145, %127
  %130 = phi i32 [ %146, %145 ], [ %125, %127 ]
  %131 = phi i32 [ %147, %145 ], [ 0, %127 ]
  %132 = getelementptr %struct.elm_errorvec, ptr %2, i32 %131
  %133 = load i8, ptr %132, align 4, !range !12
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %129
  %136 = shl i32 %131, 6
  %137 = add i32 %136, 1048
  %138 = load ptr, ptr %6, align 4
  %139 = getelementptr i8, ptr %138, i32 %137
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %141 = or i32 %140, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr i8, ptr %142, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #6, !srcloc !9
  %144 = load i32, ptr %15, align 4
  br label %145

145:                                              ; preds = %135, %129
  %146 = phi i32 [ %130, %129 ], [ %144, %135 ]
  %147 = add nuw nsw i32 %131, 1
  %148 = icmp slt i32 %147, %146
  br i1 %148, label %129, label %149

149:                                              ; preds = %145, %127, %3
  %150 = getelementptr inbounds %struct.elm_info, ptr %5, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %150) #6
  %151 = load ptr, ptr %6, align 4
  %152 = getelementptr i8, ptr %151, i32 28
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %154 = and i32 %153, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %155 = load ptr, ptr %6, align 4
  %156 = getelementptr i8, ptr %155, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #6, !srcloc !9
  %157 = load i32, ptr %15, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %209

159:                                              ; preds = %205, %149
  %160 = phi i32 [ %206, %205 ], [ %157, %149 ]
  %161 = phi i32 [ %207, %205 ], [ 0, %149 ]
  %162 = getelementptr %struct.elm_errorvec, ptr %2, i32 %161
  %163 = load i8, ptr %162, align 4, !range !12
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %205, label %165

165:                                              ; preds = %159
  %166 = shl i32 %161, 8
  %167 = add i32 %166, 2048
  %168 = load ptr, ptr %6, align 4
  %169 = getelementptr i8, ptr %168, i32 %167
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %171 = and i32 %170, 256
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %191, label %173

173:                                              ; preds = %165
  %174 = and i32 %170, 31
  %175 = getelementptr %struct.elm_errorvec, ptr %2, i32 %161, i32 2
  store i32 %174, ptr %175, align 4
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = add i32 %166, 2176
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i32 [ %187, %179 ], [ %178, %177 ]
  %181 = phi i32 [ %188, %179 ], [ 0, %177 ]
  %182 = load ptr, ptr %6, align 4
  %183 = getelementptr i8, ptr %182, i32 %180
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %185 = and i32 %184, 8191
  %186 = getelementptr %struct.elm_errorvec, ptr %2, i32 %161, i32 3, i32 %181
  store i32 %185, ptr %186, align 4
  %187 = add i32 %180, 4
  %188 = add nuw nsw i32 %181, 1
  %189 = load i32, ptr %175, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %179, label %193

191:                                              ; preds = %165
  %192 = getelementptr %struct.elm_errorvec, ptr %2, i32 %161, i32 1
  store i8 1, ptr %192, align 1
  br label %193

193:                                              ; preds = %191, %179, %173
  %194 = shl nuw i32 1, %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %195 = load ptr, ptr %6, align 4
  %196 = getelementptr i8, ptr %195, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #6, !srcloc !9
  %197 = load ptr, ptr %6, align 4
  %198 = getelementptr i8, ptr %197, i32 128
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %200 = xor i32 %194, -1
  %201 = and i32 %199, %200
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %202 = load ptr, ptr %6, align 4
  %203 = getelementptr i8, ptr %202, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #6, !srcloc !9
  %204 = load i32, ptr %15, align 4
  br label %205

205:                                              ; preds = %193, %159
  %206 = phi i32 [ %204, %193 ], [ %160, %159 ]
  %207 = add nuw nsw i32 %161, 1
  %208 = icmp slt i32 %207, %206
  br i1 %208, label %159, label %209

209:                                              ; preds = %205, %149
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @elm_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @elm_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @elm_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @elm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elm_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 284, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %32

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8
  %16 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %6, ptr noundef nonnull @elm_isr, ptr noundef null, i32 noundef 0, ptr noundef %15, ptr noundef nonnull %3) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %6) #5
  br label %32

19:                                               ; preds = %14
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  br label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %26, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %27 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 3
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 3, i32 1
  %29 = load ptr, ptr @elm_devices, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %27, ptr %30, align 4
  store ptr %29, ptr %27, align 4
  store ptr @elm_devices, ptr %28, align 4
  store volatile ptr %27, ptr @elm_devices, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %31, align 8
  br label %32

32:                                               ; preds = %24, %22, %18, %12, %5, %1
  %33 = phi i32 [ %13, %12 ], [ %16, %18 ], [ -22, %22 ], [ 0, %24 ], [ -12, %1 ], [ %6, %5 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elm_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elm_isr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #6, !srcloc !9
  %12 = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %12) #6
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elm_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  store i32 %10, ptr %4, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %14 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5, i32 1
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %18 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5, i32 2
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 128
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %22 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5, i32 3
  store i32 %21, ptr %22, align 4
  %23 = icmp ult i32 %6, 3
  br i1 %23, label %24, label %72

24:                                               ; preds = %54, %1
  %25 = phi i32 [ %70, %54 ], [ 0, %1 ]
  %26 = shl nuw nsw i32 %25, 6
  switch i32 %6, label %54 [
    i32 2, label %27
    i32 1, label %43
  ]

27:                                               ; preds = %24
  %28 = add nuw nsw i32 %26, 1048
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %32 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 4, i32 %25
  store i32 %31, ptr %32, align 4
  %33 = add nuw nsw i32 %26, 1044
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %37 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 5, i32 %25
  store i32 %36, ptr %37, align 4
  %38 = add nuw nsw i32 %26, 1040
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %42 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 6, i32 %25
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %27, %24
  %44 = add nuw nsw i32 %26, 1036
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %48 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 7, i32 %25
  store i32 %47, ptr %48, align 4
  %49 = add nuw nsw i32 %26, 1032
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %53 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 8, i32 %25
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %43, %24
  %55 = add nuw nsw i32 %26, 1028
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %59 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 9, i32 %25
  store i32 %58, ptr %59, align 4
  %60 = add nuw nsw i32 %26, 1024
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %64 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 10, i32 %25
  store i32 %63, ptr %64, align 4
  %65 = add nuw nsw i32 %26, 1048
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %69 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 4, i32 %25
  store i32 %68, ptr %69, align 4
  %70 = add nuw nsw i32 %25, 1
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %24

72:                                               ; preds = %54, %1
  %73 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elm_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #6
  %5 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %9 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #6, !srcloc !9
  %12 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !9
  %16 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !9
  %20 = getelementptr inbounds %struct.elm_info, ptr %3, i32 0, i32 5, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !9
  %24 = icmp ult i32 %7, 3
  br i1 %24, label %25, label %74

25:                                               ; preds = %55, %1
  %26 = phi i32 [ %72, %55 ], [ 0, %1 ]
  %27 = shl nuw nsw i32 %26, 6
  switch i32 %7, label %55 [
    i32 2, label %28
    i32 1, label %44
  ]

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %27, 1048
  %30 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 4, i32 %26
  %31 = load i32, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr i8, ptr %32, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !9
  %34 = add nuw nsw i32 %27, 1044
  %35 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 5, i32 %26
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !9
  %39 = add nuw nsw i32 %27, 1040
  %40 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 6, i32 %26
  %41 = load i32, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !9
  br label %44

44:                                               ; preds = %28, %25
  %45 = add nuw nsw i32 %27, 1036
  %46 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 7, i32 %26
  %47 = load i32, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr i8, ptr %48, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !9
  %50 = add nuw nsw i32 %27, 1032
  %51 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 8, i32 %26
  %52 = load i32, ptr %51, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %53 = load ptr, ptr %9, align 4
  %54 = getelementptr i8, ptr %53, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #6, !srcloc !9
  br label %55

55:                                               ; preds = %44, %25
  %56 = add nuw nsw i32 %27, 1028
  %57 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 9, i32 %26
  %58 = load i32, ptr %57, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr i8, ptr %59, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !9
  %61 = add nuw nsw i32 %27, 1024
  %62 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 10, i32 %26
  %63 = load i32, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr i8, ptr %64, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !9
  %66 = add nuw nsw i32 %27, 1048
  %67 = getelementptr %struct.elm_info, ptr %3, i32 0, i32 5, i32 4, i32 %26
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr i8, ptr %70, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #6, !srcloc !9
  %72 = add nuw nsw i32 %26, 1
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %25

74:                                               ; preds = %55, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
!8 = !{i64 2151660061}
!9 = !{i64 3721501}
!10 = !{i64 3721919}
!11 = !{i64 2151660548}
!12 = !{i8 0, i8 2}
