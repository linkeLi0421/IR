; ModuleID = '/llk/IR/drivers/mtd/chips/gen_probe.c_pt.bc'
source_filename = "../drivers/mtd/chips/gen_probe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_do_chip_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_do_chip_probe\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_do_chip_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [1 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.chip_probe = type { ptr, ptr }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"\014Reducing visibility of %ldKiB chip to %ldKiB\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\014gen_probe: No supported Vendor Command Set found\0A\00", align 1
@__kstrtab_mtd_do_chip_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_do_chip_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_do_chip_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_do_chip_probe to i32), ptr @__kstrtab_mtd_do_chip_probe, ptr @__kstrtabns_mtd_do_chip_probe }, section "___ksymtab+mtd_do_chip_probe", align 4
@__UNIQUE_ID_file172 = internal constant [43 x i8] c"gen_probe.file=drivers/mtd/chips/gen_probe\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [22 x i8] c"gen_probe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [55 x i8] c"gen_probe.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [64 x i8] c"gen_probe.description=Helper routines for flash chip probe code\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"\014NOR chip too large to fit in mapping. Attempting to cope...\0A\00", align 1
@genprobe_ident_chips.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&pchip->wq\00", align 1
@genprobe_ident_chips.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&pchip->mutex\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"cfi_cmdset_%4.4X\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\015Support for command set %04X not present\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_mtd_do_chip_probe], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtd_do_chip_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.cfi_private, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %3, i8 0, i64 60, i1 false) #8
  %5 = load i32, ptr %4, align 4
  %6 = sdiv i32 %5, 4
  %7 = add i32 %5, 3
  %8 = icmp ult i32 %7, 7
  %9 = select i1 %8, i32 1, i32 %6
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %116, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.chip_probe, ptr %1, i32 0, i32 1
  br label %15

15:                                               ; preds = %31, %11
  %16 = phi i32 [ %5, %11 ], [ %32, %31 ]
  %17 = add i32 %16, -3
  %18 = icmp ult i32 %17, -2
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  store i32 %16, ptr %12, align 4
  %20 = load i32, ptr %4, align 4
  %21 = sdiv i32 %20, %16
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %26, label %31

23:                                               ; preds = %26
  %24 = shl i32 %27, 1
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %24, %23 ], [ %21, %19 ]
  store i32 %27, ptr %13, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = call i32 %28(ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %3) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %34

31:                                               ; preds = %23, %19, %15
  %32 = ashr i32 %16, 1
  %33 = icmp slt i32 %32, %9
  br i1 %33, label %116, label %15

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cfi_ident, ptr %36, i32 0, i32 17
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %12, align 4
  switch i32 %41, label %44 [
    i32 1, label %45
    i32 2, label %42
  ]

42:                                               ; preds = %34
  %43 = add nuw nsw i32 %39, 1
  store i32 %43, ptr %40, align 4
  br label %45

44:                                               ; preds = %34
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/gen_probe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 99, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

45:                                               ; preds = %42, %34
  %46 = phi i32 [ %39, %34 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, %46
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %54

54:                                               ; preds = %52, %45
  %55 = phi i32 [ %50, %45 ], [ 1, %52 ]
  %56 = call ptr @bitmap_zalloc(i32 noundef %55, i32 noundef 3264) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load ptr, ptr %35, align 4
  call void @kfree(ptr noundef %59) #8
  br label %116

60:                                               ; preds = %54
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %56) #8
  %61 = icmp sgt i32 %55, 1
  br i1 %61, label %62, label %70

62:                                               ; preds = %62, %60
  %63 = phi i32 [ %68, %62 ], [ 1, %60 ]
  %64 = load ptr, ptr %14, align 4
  %65 = load i32, ptr %40, align 4
  %66 = shl i32 %63, %65
  %67 = call i32 %64(ptr noundef %0, i32 noundef %66, ptr noundef nonnull %56, ptr noundef nonnull %3) #8
  %68 = add nuw nsw i32 %63, 1
  %69 = icmp eq i32 %68, %55
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %60
  %71 = load i32, ptr %47, align 4
  %72 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %71, i32 88) #8
  %73 = extractvalue { i32, i1 } %72, 1
  %74 = extractvalue { i32, i1 } %72, 0
  %75 = call i32 @llvm.uadd.sat.i32(i32 %74, i32 60) #8
  %76 = select i1 %73, i32 -1, i32 %75
  %77 = call noalias align 64 ptr @__kmalloc(i32 noundef %76, i32 noundef 3264) #10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load ptr, ptr %35, align 4
  call void @kfree(ptr noundef %80) #8
  call void @bitmap_free(ptr noundef nonnull %56) #8
  br label %116

81:                                               ; preds = %70
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(60) %77, ptr noundef nonnull align 4 dereferenceable(60) %3, i32 60, i1 false) #8
  %82 = getelementptr inbounds %struct.cfi_private, ptr %77, i32 0, i32 15
  %83 = load i32, ptr %47, align 4
  %84 = mul i32 %83, 88
  call void @llvm.memset.p0.i32(ptr align 4 %82, i8 0, i32 %84, i1 false) #8
  %85 = icmp sgt i32 %83, 0
  %86 = icmp sgt i32 %55, 0
  %87 = and i1 %86, %85
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  call void @bitmap_free(ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #8
  br label %118

89:                                               ; preds = %109, %81
  %90 = phi i32 [ %110, %109 ], [ %83, %81 ]
  %91 = phi i32 [ %111, %109 ], [ 0, %81 ]
  %92 = phi i32 [ %112, %109 ], [ 0, %81 ]
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr %56, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %89
  %101 = add nsw i32 %91, 1
  %102 = getelementptr %struct.cfi_private, ptr %77, i32 0, i32 15, i32 %91
  %103 = load i32, ptr %40, align 4
  %104 = shl i32 %92, %103
  store i32 %104, ptr %102, align 4
  %105 = getelementptr %struct.cfi_private, ptr %77, i32 0, i32 15, i32 %91, i32 2
  store i32 0, ptr %105, align 4
  %106 = getelementptr %struct.cfi_private, ptr %77, i32 0, i32 15, i32 %91, i32 8
  call void @__init_waitqueue_head(ptr noundef %106, ptr noundef nonnull @.str.3, ptr noundef nonnull @genprobe_ident_chips.__key) #8
  %107 = getelementptr %struct.cfi_private, ptr %77, i32 0, i32 15, i32 %91, i32 7
  call void @__mutex_init(ptr noundef %107, ptr noundef nonnull @.str.5, ptr noundef nonnull @genprobe_ident_chips.__key.4) #8
  %108 = load i32, ptr %47, align 4
  br label %109

109:                                              ; preds = %100, %89
  %110 = phi i32 [ %108, %100 ], [ %90, %89 ]
  %111 = phi i32 [ %101, %100 ], [ %91, %89 ]
  %112 = add nuw nsw i32 %92, 1
  %113 = icmp slt i32 %111, %110
  %114 = icmp slt i32 %112, %55
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %89, label %117

116:                                              ; preds = %79, %58, %31, %2
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #8
  br label %143

117:                                              ; preds = %109
  call void @bitmap_free(ptr noundef nonnull %56) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #8
  br label %118

118:                                              ; preds = %117, %88
  %119 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  store ptr %77, ptr %119, align 4
  %120 = call fastcc ptr @check_cmd_set(ptr noundef %0, i32 noundef 1)
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = call fastcc ptr @check_cmd_set(ptr noundef %0, i32 noundef 0)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %122, %118
  %126 = phi ptr [ %123, %122 ], [ %120, %118 ]
  %127 = getelementptr inbounds %struct.mtd_info, ptr %126, i32 0, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = load i32, ptr %48, align 4
  %130 = zext i32 %129 to i64
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = trunc i64 %128 to i32
  %134 = lshr i32 %133, 10
  %135 = lshr i32 %129, 10
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %134, i32 noundef %135) #9
  %137 = load i32, ptr %48, align 4
  %138 = zext i32 %137 to i64
  store i64 %138, ptr %127, align 8
  br label %143

139:                                              ; preds = %122
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  %141 = getelementptr inbounds %struct.cfi_private, ptr %77, i32 0, i32 8
  %142 = load ptr, ptr %141, align 32
  call void @kfree(ptr noundef %142) #8
  call void @kfree(ptr noundef nonnull %77) #8
  store ptr null, ptr %119, align 4
  br label %143

143:                                              ; preds = %139, %132, %125, %116
  %144 = phi ptr [ null, %139 ], [ %126, %132 ], [ %126, %125 ], [ null, %116 ]
  ret ptr %144
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @check_cmd_set(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.cfi_private, ptr %4, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 3
  %10 = select i1 %5, ptr %9, ptr %8
  %11 = load i16, ptr %10, align 1
  %12 = add i16 %11, 1
  %13 = icmp ult i16 %12, 2
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  switch i16 %11, label %17 [
    i16 1, label %15
    i16 3, label %15
    i16 512, label %15
  ]

15:                                               ; preds = %14, %14, %14
  %16 = tail call ptr @cfi_cmdset_0001(ptr noundef %0, i32 noundef %1) #8
  br label %38

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 1
  %19 = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 3
  %20 = select i1 %5, ptr %19, ptr %18
  %21 = load i16, ptr %20, align 1
  %22 = zext i16 %21 to i32
  %23 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %22) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @__symbol_get(ptr noundef nonnull %23) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @kfree(ptr noundef nonnull %23) #8
  br label %33

29:                                               ; preds = %25
  %30 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef %22) #8
  %31 = tail call ptr @__symbol_get(ptr noundef nonnull %23) #8
  tail call void @kfree(ptr noundef nonnull %23) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %28
  %34 = phi ptr [ %26, %28 ], [ %31, %29 ]
  %35 = tail call ptr %34(ptr noundef %0, i32 noundef %1) #8
  tail call void @symbol_put_addr(ptr noundef nonnull %34) #8
  br label %38

36:                                               ; preds = %29
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %22) #9
  br label %38

38:                                               ; preds = %36, %33, %17, %15, %2
  %39 = phi ptr [ %16, %15 ], [ null, %2 ], [ %35, %33 ], [ null, %36 ], [ null, %17 ]
  ret ptr %39
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_cmdset_0001(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @symbol_put_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2151781370, i64 2151781863, i64 2151781407, i64 2151781463, i64 2151781497, i64 2151781521, i64 2151781562, i64 2151781583, i64 2151781611, i64 2151781645}
