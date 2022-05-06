; ModuleID = '/llk/IR/drivers/remoteproc/st_slim_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/st_slim_rproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_slim_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22st_slim_rproc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_st_slim_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_slim_rproc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22st_slim_rproc_put\22\09\09\09\09\09"
module asm "__kstrtabns_st_slim_rproc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.st_slim_rproc = type { ptr, [2 x %struct.st_slim_mem], ptr, ptr, [4 x ptr] }
%struct.st_slim_mem = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"st,slim-rproc\00", align 1
@slim_rproc_ops = internal constant %struct.rproc_ops { ptr null, ptr null, ptr @slim_rproc_start, ptr @slim_rproc_stop, ptr null, ptr null, ptr null, ptr @slim_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"devm_ioremap_resource failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"slimcore\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to ioremap slimcore IO\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"peripherals\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to ioremap peripherals IO\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to enable clocks\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"registration of slim remoteproc failed\0A\00", align 1
@__kstrtab_st_slim_rproc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_slim_rproc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_st_slim_rproc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_slim_rproc_alloc to i32), ptr @__kstrtab_st_slim_rproc_alloc, ptr @__kstrtabns_st_slim_rproc_alloc }, section "___ksymtab+st_slim_rproc_alloc", align 4
@__kstrtab_st_slim_rproc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_slim_rproc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_st_slim_rproc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_slim_rproc_put to i32), ptr @__kstrtab_st_slim_rproc_put, ptr @__kstrtabns_st_slim_rproc_put }, section "___ksymtab+st_slim_rproc_put", align 4
@__UNIQUE_ID_author219 = internal constant [48 x i8] c"author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description220 = internal constant [54 x i8] c"description=STMicroelectronics SLIM core rproc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license221 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"fw rev:%ld.%ld on SLIM %ld.%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to disable SLIM\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dmem\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"imem\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author219, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_license221, ptr @__ksymtab_st_slim_rproc_alloc, ptr @__ksymtab_st_slim_rproc_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @st_slim_rproc_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %192, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %192, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  %12 = tail call ptr @rproc_alloc(ptr noundef %3, ptr noundef %11, ptr noundef nonnull @slim_rproc_ops, ptr noundef nonnull %1, i32 noundef 52) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %192, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rproc, ptr %12, i32 0, i32 29
  store i8 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rproc, ptr %12, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  store ptr %12, ptr %17, align 4
  %18 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.10) #4
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %18) #4
  %20 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 1, i32 0
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %26, %14
  %23 = phi ptr [ %20, %14 ], [ %37, %26 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %189

26:                                               ; preds = %14
  %27 = load i32, ptr %18, align 4
  %28 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %18, align 4
  %32 = add i32 %30, 1
  %33 = sub i32 %32, %31
  %34 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 1, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.11) #4
  %36 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %35) #4
  %37 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %22, label %39

39:                                               ; preds = %26
  %40 = load i32, ptr %35, align 4
  %41 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 1, i32 1, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %35, align 4
  %45 = add i32 %43, 1
  %46 = sub i32 %45, %44
  %47 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 1, i32 1, i32 2
  store i32 %46, ptr %47, align 4
  %48 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #4
  %49 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %48) #4
  %50 = getelementptr inbounds %struct.st_slim_rproc, ptr %17, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  %53 = load ptr, ptr %50, align 4
  %54 = ptrtoint ptr %53 to i32
  br label %189

55:                                               ; preds = %39
  %56 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #4
  %57 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %56) #4
  %58 = getelementptr inbounds %struct.st_slim_rproc, ptr %17, i32 0, i32 3
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #5
  %61 = load ptr, ptr %58, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %189

63:                                               ; preds = %55
  %64 = load ptr, ptr %4, align 8
  %65 = tail call ptr @of_clk_get(ptr noundef %64, i32 noundef 0) #4
  %66 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 0
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %73, label %77

68:                                               ; preds = %87, %82, %77
  %69 = phi i32 [ 0, %77 ], [ 1, %82 ], [ 2, %87 ]
  %70 = phi ptr [ %79, %77 ], [ %84, %82 ], [ %89, %87 ]
  %71 = phi ptr [ %80, %77 ], [ %85, %82 ], [ %90, %87 ]
  %72 = icmp eq ptr %70, inttoptr (i32 -517 to ptr)
  br i1 %72, label %92, label %75

73:                                               ; preds = %63
  %74 = icmp eq ptr %65, inttoptr (i32 -517 to ptr)
  br i1 %74, label %189, label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %66, %73 ], [ %71, %68 ]
  store ptr null, ptr %76, align 4
  br label %104

77:                                               ; preds = %63
  %78 = load ptr, ptr %4, align 8
  %79 = tail call ptr @of_clk_get(ptr noundef %78, i32 noundef 1) #4
  %80 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 1
  store ptr %79, ptr %80, align 4
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %68, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8
  %84 = tail call ptr @of_clk_get(ptr noundef %83, i32 noundef 2) #4
  %85 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 2
  store ptr %84, ptr %85, align 4
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %68, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %4, align 8
  %89 = tail call ptr @of_clk_get(ptr noundef %88, i32 noundef 3) #4
  %90 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 3
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %68, label %104

92:                                               ; preds = %68
  %93 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 %69
  %94 = load ptr, ptr %93, align 4
  tail call void @clk_put(ptr noundef %94) #4
  br i1 %81, label %189, label %95

95:                                               ; preds = %92
  %96 = add nsw i32 %69, -1
  %97 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 %96
  %98 = load ptr, ptr %97, align 4
  tail call void @clk_put(ptr noundef %98) #4
  %99 = icmp eq i32 %96, 0
  br i1 %99, label %189, label %100

100:                                              ; preds = %95
  %101 = add nsw i32 %69, -2
  %102 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 %101
  %103 = load ptr, ptr %102, align 4
  tail call void @clk_put(ptr noundef %103) #4
  br label %189

104:                                              ; preds = %87, %75
  %105 = load ptr, ptr %66, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %168, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @clk_prepare(ptr noundef nonnull %105) #4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %166

110:                                              ; preds = %107
  %111 = tail call i32 @clk_enable(ptr noundef nonnull %105) #4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %117

113:                                              ; preds = %145, %135, %125
  %114 = phi i32 [ 3, %145 ], [ 2, %135 ], [ 1, %125 ]
  %115 = phi ptr [ %140, %145 ], [ %130, %135 ], [ %120, %125 ]
  %116 = phi i32 [ %146, %145 ], [ %136, %135 ], [ %126, %125 ]
  tail call void @clk_unprepare(ptr noundef nonnull %115) #4
  br label %148

117:                                              ; preds = %110
  tail call void @clk_unprepare(ptr noundef nonnull %105) #4
  br label %166

118:                                              ; preds = %110
  %119 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %168, label %122

122:                                              ; preds = %118
  %123 = tail call i32 @clk_prepare(ptr noundef nonnull %120) #4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = tail call i32 @clk_enable(ptr noundef nonnull %120) #4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %113

128:                                              ; preds = %125
  %129 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %168, label %132

132:                                              ; preds = %128
  %133 = tail call i32 @clk_prepare(ptr noundef nonnull %130) #4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = tail call i32 @clk_enable(ptr noundef nonnull %130) #4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %113

138:                                              ; preds = %135
  %139 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %168, label %142

142:                                              ; preds = %138
  %143 = tail call i32 @clk_prepare(ptr noundef nonnull %140) #4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = tail call i32 @clk_enable(ptr noundef nonnull %140) #4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %168, label %113

148:                                              ; preds = %142, %132, %122, %113
  %149 = phi i32 [ %116, %113 ], [ %143, %142 ], [ %133, %132 ], [ %123, %122 ]
  %150 = phi i32 [ %114, %113 ], [ 3, %142 ], [ 2, %132 ], [ 1, %122 ]
  %151 = add nsw i32 %150, -1
  %152 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 %151
  %153 = load ptr, ptr %152, align 4
  tail call void @clk_disable(ptr noundef %153) #4
  tail call void @clk_unprepare(ptr noundef %153) #4
  %154 = icmp ugt i32 %150, 1
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = add nsw i32 %150, -2
  %157 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 %156
  %158 = load ptr, ptr %157, align 4
  tail call void @clk_disable(ptr noundef %158) #4
  tail call void @clk_unprepare(ptr noundef %158) #4
  %159 = icmp ugt i32 %151, 1
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = add nsw i32 %150, -3
  %162 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 %161
  %163 = load ptr, ptr %162, align 4
  tail call void @clk_disable(ptr noundef %163) #4
  tail call void @clk_unprepare(ptr noundef %163) #4
  br label %164

164:                                              ; preds = %160, %155, %148
  %165 = icmp eq i32 %149, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %164, %117, %107
  %167 = phi i32 [ %149, %164 ], [ %108, %107 ], [ %111, %117 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #5
  br label %172

168:                                              ; preds = %164, %145, %138, %128, %118, %104
  %169 = tail call i32 @rproc_add(ptr noundef nonnull %12) #4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %192, label %171

171:                                              ; preds = %168
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #5
  tail call fastcc void @slim_clk_disable(ptr noundef %17)
  br label %172

172:                                              ; preds = %171, %166
  %173 = phi i32 [ %167, %166 ], [ %169, %171 ]
  %174 = load ptr, ptr %66, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %189, label %176

176:                                              ; preds = %172
  tail call void @clk_put(ptr noundef nonnull %174) #4
  %177 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %189, label %180

180:                                              ; preds = %176
  tail call void @clk_put(ptr noundef nonnull %178) #4
  %181 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %180
  tail call void @clk_put(ptr noundef nonnull %182) #4
  %185 = getelementptr %struct.st_slim_rproc, ptr %17, i32 0, i32 4, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  tail call void @clk_put(ptr noundef nonnull %186) #4
  br label %189

189:                                              ; preds = %188, %184, %180, %176, %172, %100, %95, %92, %73, %60, %52, %22
  %190 = phi i32 [ %25, %22 ], [ %54, %52 ], [ %62, %60 ], [ -517, %73 ], [ %173, %188 ], [ %173, %184 ], [ %173, %180 ], [ %173, %176 ], [ %173, %172 ], [ -517, %100 ], [ -517, %95 ], [ -517, %92 ]
  tail call void @rproc_free(ptr noundef nonnull %12) #4
  %191 = inttoptr i32 %190 to ptr
  br label %192

192:                                              ; preds = %189, %168, %10, %7, %2
  %193 = phi ptr [ %191, %189 ], [ %17, %168 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @slim_clk_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %3) #4
  tail call void @clk_unprepare(ptr noundef nonnull %3) #4
  %6 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  tail call void @clk_disable(ptr noundef nonnull %7) #4
  tail call void @clk_unprepare(ptr noundef nonnull %7) #4
  %10 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  tail call void @clk_disable(ptr noundef nonnull %11) #4
  tail call void @clk_unprepare(ptr noundef nonnull %11) #4
  %14 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @clk_disable(ptr noundef nonnull %15) #4
  tail call void @clk_unprepare(ptr noundef nonnull %15) #4
  br label %18

18:                                               ; preds = %17, %13, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @st_slim_rproc_put(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  tail call fastcc void @slim_clk_disable(ptr noundef nonnull %0)
  %4 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  tail call void @clk_put(ptr noundef nonnull %5) #4
  %8 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  tail call void @clk_put(ptr noundef nonnull %9) #4
  %12 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  tail call void @clk_put(ptr noundef nonnull %13) #4
  %16 = getelementptr %struct.st_slim_rproc, ptr %0, i32 0, i32 4, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @clk_put(ptr noundef nonnull %17) #4
  br label %20

20:                                               ; preds = %19, %15, %11, %7, %3
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 @rproc_del(ptr noundef %21) #4
  %23 = load ptr, ptr %0, align 4
  tail call void @rproc_free(ptr noundef %23) #4
  br label %24

24:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slim_rproc_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr inbounds %struct.st_slim_rproc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 5) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %8 = getelementptr inbounds %struct.st_slim_rproc, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 3976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 4056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 4040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 4060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 4044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #4, !srcloc !9
  %23 = load ptr, ptr %5, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !17
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !17
  %28 = getelementptr inbounds %struct.st_slim_rproc, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = lshr i32 %30, 8
  %34 = and i32 %33, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %32, i32 noundef %34, i32 noundef %24, i32 noundef %27) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slim_rproc_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.st_slim_rproc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %9 = getelementptr inbounds %struct.st_slim_rproc, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #4, !srcloc !9
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.9) #5
  br label %21

21:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @slim_rproc_da_to_va(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %19, label %15

15:                                               ; preds = %24, %11
  %16 = phi i32 [ 0, %11 ], [ 1, %24 ]
  %17 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 %16
  %18 = load ptr, ptr %17, align 4
  br label %28

19:                                               ; preds = %11, %4
  %20 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr %struct.st_slim_rproc, ptr %6, i32 0, i32 1, i32 1, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %2
  br i1 %27, label %28, label %15

28:                                               ; preds = %24, %19, %15
  %29 = phi ptr [ %18, %15 ], [ null, %24 ], [ null, %19 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2152744245}
!9 = !{i64 5170238}
!10 = !{i64 2152744687}
!11 = !{i64 2152745177}
!12 = !{i64 2152745565}
!13 = !{i64 2152745899}
!14 = !{i64 2152746233}
!15 = !{i64 2152746567}
!16 = !{i64 2152747007}
!17 = !{i64 5170656}
!18 = !{i64 2152748052}
!19 = !{i64 2152750429}
!20 = !{i64 2152750763}
!21 = !{i64 2152751203}
!22 = !{i64 2152751695}
!23 = !{i64 2152752250}
