; ModuleID = '/llk/IR/drivers/mmc/host/renesas_sdhi_core.c_pt.bc'
source_filename = "../drivers/mmc/host/renesas_sdhi_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_renesas_sdhi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22renesas_sdhi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_renesas_sdhi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_renesas_sdhi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22renesas_sdhi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_renesas_sdhi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.renesas_sdhi = type { ptr, ptr, ptr, %struct.tmio_mmc_data, %struct.tmio_mmc_dma, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, [1 x i32], [1 x i32], i32, i32, ptr }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.tmio_mmc_dma = type { i32, ptr, ptr, %struct.completion, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.renesas_sdhi_of_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i32 }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.renesas_sdhi_quirks = type { i8, i8, i32, ptr }
%struct.renesas_sdhi_scc = type { i32, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [17 x i8] c"cannot get clock\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"clkh\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cannot get clkh\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot get cd clock\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"state_uhs\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unknown clock rate for tuning\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s base at %pa, max clock rate %u MHz\0A\00", align 1
@__kstrtab_renesas_sdhi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_renesas_sdhi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_renesas_sdhi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @renesas_sdhi_probe to i32), ptr @__kstrtab_renesas_sdhi_probe, ptr @__kstrtabns_renesas_sdhi_probe }, section "___ksymtab_gpl+renesas_sdhi_probe", align 4
@__kstrtab_renesas_sdhi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_renesas_sdhi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_renesas_sdhi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @renesas_sdhi_remove to i32), ptr @__kstrtab_renesas_sdhi_remove, ptr @__kstrtabns_renesas_sdhi_remove }, section "___ksymtab_gpl+renesas_sdhi_remove", align 4
@__UNIQUE_ID_file290 = internal constant [58 x i8] c"renesas_sdhi_core.file=drivers/mmc/host/renesas_sdhi_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [33 x i8] c"renesas_sdhi_core.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"timeout waiting for SD bus idle\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Too many taps, please update 'taps' in tmio_mmc_host!\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_renesas_sdhi_probe, ptr @__ksymtab_renesas_sdhi_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @renesas_sdhi_probe(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %318, label %10

10:                                               ; preds = %4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 172, i32 noundef 3520) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %318, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 5
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3
  %16 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 4
  %17 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #9
  store ptr %17, ptr %11, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = ptrtoint ptr %17 to i32
  %21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %20, ptr noundef nonnull @.str) #9
  br label %318

22:                                               ; preds = %13
  %23 = tail call ptr @devm_clk_get_optional(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  %24 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  %28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %27, ptr noundef nonnull @.str.2) #9
  br label %318

29:                                               ; preds = %22
  %30 = tail call ptr @devm_clk_get_optional(ptr noundef %5, ptr noundef nonnull @.str.3) #9
  %31 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  %35 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %34, ptr noundef nonnull @.str.4) #9
  br label %318

36:                                               ; preds = %29
  %37 = tail call ptr @devm_pinctrl_get(ptr noundef %5) #9
  %38 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 6
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @pinctrl_lookup_state(ptr noundef %37, ptr noundef nonnull @.str.5) #9
  %42 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %38, align 4
  %44 = tail call ptr @pinctrl_lookup_state(ptr noundef %43, ptr noundef nonnull @.str.6) #9
  %45 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 8
  store ptr %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %40, %36
  %47 = tail call ptr @tmio_mmc_host_alloc(ptr noundef %0, ptr noundef %15) #9
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  br label %318

51:                                               ; preds = %46
  %52 = icmp eq ptr %2, null
  br i1 %52, label %96, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %2, align 4
  %55 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 8
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 9
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 11
  %78 = load i16, ptr %77, align 4
  %79 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 10
  store i16 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %16, align 4
  %82 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 11
  store i32 %83, ptr %84, align 4
  %85 = load ptr, ptr %24, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %53
  %88 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 12
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %11, align 4
  %94 = tail call ptr @clk_get_parent(ptr noundef %93) #9
  %95 = tail call ptr @clk_get_parent(ptr noundef %94) #9
  store ptr %95, ptr %24, align 4
  br label %96

96:                                               ; preds = %92, %87, %53, %51
  %97 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 36
  store ptr @renesas_sdhi_write16_hook, ptr %97, align 4
  %98 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 32
  store ptr @renesas_sdhi_clk_enable, ptr %98, align 4
  %99 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 34
  store ptr @renesas_sdhi_clk_disable, ptr %99, align 4
  %100 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 33
  store ptr @renesas_sdhi_set_clock, ptr %100, align 4
  %101 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 35
  store ptr @renesas_sdhi_multi_io_quirk, ptr %101, align 4
  %102 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 44
  store ptr %1, ptr %102, align 4
  %103 = icmp ne ptr %3, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load i8, ptr %3, align 4, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.mmc_host, ptr %109, i32 0, i32 17
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, -1146881
  store i32 %112, ptr %110, align 4
  br label %113

113:                                              ; preds = %107, %104, %96
  %114 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = tail call zeroext i1 @mmc_can_gpio_ro(ptr noundef %115) #9
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -262145
  store i32 %120, ptr %118, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 5, i32 11
  store ptr @renesas_sdhi_card_busy, ptr %127, align 4
  %128 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 5, i32 10
  store ptr @renesas_sdhi_start_signal_voltage_switch, ptr %128, align 4
  %129 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 25
  store i32 134217728, ptr %129, align 4
  %130 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 26
  store i32 -1954610403, ptr %130, align 4
  %131 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 37
  store ptr @renesas_sdhi_reset, ptr %131, align 4
  br label %132

132:                                              ; preds = %126, %121
  %133 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 11
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %8, align 4
  %140 = add i32 %138, 1
  %141 = sub i32 %140, %139
  %142 = icmp ugt i32 %141, 256
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 1, ptr %133, align 4
  br label %144

144:                                              ; preds = %143, %136, %132
  %145 = icmp eq ptr %7, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %144
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %15, ptr noundef nonnull align 4 dereferenceable(52) %7, i32 52, i1 false)
  br label %147

147:                                              ; preds = %146, %144
  %148 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 4, i32 1
  store ptr @shdma_chan_filter, ptr %148, align 4
  %149 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 4, i32 2
  store ptr @renesas_sdhi_enable_dma, ptr %149, align 4
  %150 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 7
  store i32 1, ptr %150, align 4
  %151 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = or i32 %152, 2
  store i32 %153, ptr %151, align 4
  %154 = load i32, ptr %122, align 4
  %155 = or i32 %154, 422
  store i32 %155, ptr %122, align 4
  %156 = tail call i32 @dev_pm_domain_start(ptr noundef %5) #9
  %157 = tail call i32 @renesas_sdhi_clk_enable(ptr noundef %47)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %316

159:                                              ; preds = %147
  %160 = tail call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %161 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 18
  store ptr %160, ptr %161, align 4
  %162 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = ptrtoint ptr %160 to i32
  br label %318

165:                                              ; preds = %159
  %166 = load ptr, ptr %47, align 4
  %167 = load i32, ptr %133, align 4
  %168 = shl i32 226, %167
  %169 = getelementptr i8, ptr %166, i32 %168
  %170 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %169) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %171 = icmp ult i16 %170, -13555
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 3, i32 9
  %174 = load i32, ptr %173, align 4
  %175 = icmp ugt i32 %174, 65535
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 65535, ptr %173, align 4
  br label %177

177:                                              ; preds = %176, %172
  %178 = icmp eq i16 %170, 18700
  br i1 %178, label %179, label %201

179:                                              ; preds = %177
  %180 = load i32, ptr %122, align 4
  %181 = and i32 %180, -2049
  store i32 %181, ptr %122, align 4
  br label %201

182:                                              ; preds = %165
  %183 = icmp eq i16 %170, -13040
  %184 = and i1 %103, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %3, i32 0, i32 3
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %199, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 39
  store ptr @renesas_sdhi_fixup_request, ptr %190, align 4
  %191 = load i32, ptr %8, align 4
  %192 = icmp ne i32 %191, -300679168
  %193 = load ptr, ptr %186, align 4
  %194 = zext i1 %192 to i32
  %195 = getelementptr [32 x i8], ptr %193, i32 %194
  %196 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 12
  store ptr %195, ptr %196, align 4
  br label %199

197:                                              ; preds = %182
  %198 = icmp ugt i16 %170, -13297
  br i1 %198, label %199, label %201

199:                                              ; preds = %197, %189, %185
  %200 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 40
  store ptr @renesas_sdhi_gen3_get_cycles, ptr %200, align 4
  br label %201

201:                                              ; preds = %199, %197, %179, %177
  br i1 %52, label %273, label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 7
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %273, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr %114, align 4
  %208 = getelementptr inbounds %struct.mmc_host, ptr %207, i32 0, i32 16
  %209 = load i32, ptr %208, align 8
  %210 = and i32 %209, 524288
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.mmc_host, ptr %207, i32 0, i32 17
  %214 = load i32, ptr %213, align 4
  %215 = and i32 %214, 32800
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %273, label %217

217:                                              ; preds = %212, %206
  %218 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 8
  %219 = load ptr, ptr %218, align 4
  br i1 %103, label %220, label %224

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %3, i32 0, i32 1
  %222 = load i8, ptr %221, align 1, !range !8
  %223 = icmp ne i8 %222, 0
  br label %224

224:                                              ; preds = %220, %217
  %225 = phi i1 [ false, %217 ], [ %223, %220 ]
  %226 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %2, i32 0, i32 9
  %227 = load i32, ptr %226, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.mmc_host, ptr %207, i32 0, i32 6
  br label %234

231:                                              ; preds = %239
  %232 = add nuw nsw i32 %235, 1
  %233 = icmp eq i32 %232, %227
  br i1 %233, label %242, label %234

234:                                              ; preds = %231, %229
  %235 = phi i32 [ 0, %229 ], [ %232, %231 ]
  %236 = getelementptr %struct.renesas_sdhi_scc, ptr %219, i32 %235
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = load i32, ptr %230, align 16
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %247, label %231

242:                                              ; preds = %231, %224
  %243 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 12
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.platform_device, ptr %244, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %245, ptr noundef nonnull @.str.7) #10
  %246 = load i32, ptr %203, align 4
  br label %263

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %219, i32 0, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 10
  store i32 %249, ptr %250, align 4
  %251 = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %219, i32 0, i32 2
  %252 = select i1 %225, ptr %251, ptr %248
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 11
  store i32 %253, ptr %254, align 4
  br label %263

255:                                              ; preds = %234
  %256 = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %219, i32 0, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 10
  store i32 %257, ptr %258, align 4
  %259 = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %219, i32 0, i32 2
  %260 = select i1 %225, ptr %259, ptr %256
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 11
  store i32 %261, ptr %262, align 4
  br label %263

263:                                              ; preds = %255, %247, %242
  %264 = phi i32 [ %204, %255 ], [ %204, %247 ], [ %246, %242 ]
  %265 = load ptr, ptr %47, align 4
  %266 = getelementptr i8, ptr %265, i32 %264
  %267 = getelementptr inbounds %struct.renesas_sdhi, ptr %11, i32 0, i32 9
  store ptr %266, ptr %267, align 4
  %268 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 38
  store ptr @renesas_sdhi_check_scc_error, ptr %268, align 4
  %269 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 5, i32 12
  store ptr @renesas_sdhi_execute_tuning, ptr %269, align 4
  %270 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 5, i32 13
  store ptr @renesas_sdhi_prepare_hs400_tuning, ptr %270, align 4
  %271 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 5, i32 16
  store ptr @renesas_sdhi_disable_scc, ptr %271, align 4
  %272 = getelementptr inbounds %struct.tmio_mmc_host, ptr %47, i32 0, i32 5, i32 17
  store ptr @renesas_sdhi_hs400_complete, ptr %272, align 4
  br label %273

273:                                              ; preds = %263, %212, %202, %201
  %274 = tail call i32 @tmio_mmc_host_probe(ptr noundef %47) #9
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %314, label %276

276:                                              ; preds = %273
  %277 = tail call i32 @platform_irq_count(ptr noundef %0) #9
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %312, label %279

279:                                              ; preds = %276
  %280 = icmp eq i32 %277, 0
  br i1 %280, label %312, label %281

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %286

283:                                              ; preds = %295
  %284 = add nuw nsw i32 %287, 1
  %285 = icmp eq i32 %284, %277
  br i1 %285, label %299, label %286

286:                                              ; preds = %283, %281
  %287 = phi i32 [ 0, %281 ], [ %284, %283 ]
  %288 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %287) #9
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %312, label %290

290:                                              ; preds = %286
  %291 = load ptr, ptr %282, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load ptr, ptr %5, align 4
  br label %295

295:                                              ; preds = %293, %290
  %296 = phi ptr [ %294, %293 ], [ %291, %290 ]
  %297 = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %288, ptr noundef nonnull @tmio_mmc_irq, ptr noundef null, i32 noundef 0, ptr noundef %296, ptr noundef %47) #9
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %283, label %312

299:                                              ; preds = %283
  %300 = load ptr, ptr %114, align 4
  %301 = getelementptr inbounds %struct.mmc_host, ptr %300, i32 0, i32 1, i32 3
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.mmc_host, ptr %300, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  br label %307

307:                                              ; preds = %304, %299
  %308 = phi ptr [ %306, %304 ], [ %302, %299 ]
  %309 = getelementptr inbounds %struct.mmc_host, ptr %300, i32 0, i32 6
  %310 = load i32, ptr %309, align 16
  %311 = udiv i32 %310, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %308, ptr noundef nonnull %8, i32 noundef %311) #10
  br label %318

312:                                              ; preds = %295, %286, %279, %276
  %313 = phi i32 [ %277, %276 ], [ -6, %279 ], [ %288, %286 ], [ %297, %295 ]
  tail call void @tmio_mmc_host_remove(ptr noundef %47) #9
  br label %314

314:                                              ; preds = %312, %273
  %315 = phi i32 [ %274, %273 ], [ %313, %312 ]
  tail call void @renesas_sdhi_clk_disable(ptr noundef %47)
  br label %316

316:                                              ; preds = %314, %147
  %317 = phi i32 [ %157, %147 ], [ %315, %314 ]
  tail call void @tmio_mmc_host_free(ptr noundef %47) #9
  br label %318

318:                                              ; preds = %316, %307, %163, %49, %33, %26, %19, %10, %4
  %319 = phi i32 [ %21, %19 ], [ %28, %26 ], [ %35, %33 ], [ %50, %49 ], [ %317, %316 ], [ %164, %163 ], [ 0, %307 ], [ -22, %4 ], [ -12, %10 ]
  ret i32 %319
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmio_mmc_host_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_write16_hook(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  switch i32 %1, label %39 [
    i32 0, label %3
    i32 8, label %3
    i32 10, label %3
    i32 38, label %3
    i32 40, label %3
    i32 52, label %3
    i32 216, label %3
    i32 228, label %3
    i32 36, label %10
  ]

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3, %2
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i32 [ 536870912, %10 ], [ 1073741824, %3 ]
  %13 = phi i32 [ 0, %10 ], [ 1073741824, %3 ]
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  br label %15

15:                                               ; preds = %31, %11
  %16 = phi i32 [ 999, %11 ], [ %33, %31 ]
  %17 = load ptr, ptr %0, align 4
  %18 = load i32, ptr %14, align 4
  %19 = shl i32 28, %18
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %22 = load ptr, ptr %0, align 4
  %23 = load i32, ptr %14, align 4
  %24 = shl i32 30, %23
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %27 = zext i16 %26 to i32
  %28 = shl nuw i32 %27, 16
  %29 = and i32 %28, %12
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %31, label %39

31:                                               ; preds = %15
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #9
  %33 = add nsw i32 %16, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %15

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.9) #10
  br label %39

39:                                               ; preds = %35, %15, %2
  %40 = phi i32 [ 0, %2 ], [ -16, %35 ], [ 0, %15 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_clk_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -12
  %7 = getelementptr i8, ptr %5, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %15

15:                                               ; preds = %14, %1
  %16 = phi i32 [ %9, %1 ], [ %12, %14 ]
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  %20 = load i32, ptr %19, align 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #9
  store i32 %24, ptr %19, align 16
  br label %25

25:                                               ; preds = %22, %18
  %26 = load ptr, ptr %6, align 4
  %27 = tail call i32 @clk_round_rate(ptr noundef %26, i32 noundef 1) #9
  %28 = sdiv i32 %27, 512
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 1)
  %30 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 226, %33
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  switch i16 %36, label %52 [
    i16 18700, label %39
    i16 -13555, label %37
    i16 -13296, label %38
    i16 -13040, label %38
  ]

37:                                               ; preds = %25
  br label %39

38:                                               ; preds = %25, %25
  br label %39

39:                                               ; preds = %38, %37, %25
  %40 = phi i16 [ 1, %37 ], [ 1, %38 ], [ 0, %25 ]
  %41 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef %0, i32 noundef 228) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %39
  %48 = load ptr, ptr %0, align 4
  %49 = load i32, ptr %32, align 4
  %50 = shl i32 228, %49
  %51 = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %40) #9, !srcloc !12
  br label %52

52:                                               ; preds = %47, %44, %25, %15
  %53 = phi i32 [ %16, %15 ], [ 0, %25 ], [ 0, %44 ], [ 0, %47 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_set_clock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 36, %5
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %9 = and i16 %8, -257
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 36) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr %0, align 4
  %18 = load i32, ptr %4, align 4
  %19 = shl i32 36, %18
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %9) #9, !srcloc !12
  br label %21

21:                                               ; preds = %16, %13
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 57
  store i32 0, ptr %26, align 4
  br label %176

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 -12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tmio_mmc_data, ptr %29, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %108, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 29
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 20
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %108

43:                                               ; preds = %36
  %44 = getelementptr i8, ptr %29, i32 -8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %29, i32 104
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %49, i32 0, i32 1
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = icmp ne i8 %53, 0
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 28, i32 7
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 6
  %60 = icmp eq i8 %58, 10
  %61 = or i1 %59, %60
  %62 = select i1 %56, i1 %61, i1 false
  %63 = select i1 %62, i32 1, i32 2
  br label %64

64:                                               ; preds = %55, %43
  %65 = phi ptr [ %45, %55 ], [ %31, %43 ]
  %66 = phi i32 [ %63, %55 ], [ 0, %43 ]
  %67 = shl i32 %1, %66
  %68 = udiv i32 -1, %67
  %69 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 false) #9, !range !13
  %70 = sub nsw i32 31, %69
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 9) #9
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %97

73:                                               ; preds = %92, %64
  %74 = phi i32 [ %95, %92 ], [ %71, %64 ]
  %75 = phi i32 [ %94, %92 ], [ -1, %64 ]
  %76 = phi i32 [ %93, %92 ], [ 0, %64 ]
  %77 = shl i32 %67, %74
  %78 = tail call i32 @clk_round_rate(ptr noundef %65, i32 noundef %77) #9
  %79 = icmp ugt i32 %78, %77
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = lshr i32 %77, 2
  %82 = mul nuw i32 %81, 3
  %83 = tail call i32 @clk_round_rate(ptr noundef %65, i32 noundef %82) #9
  %84 = icmp ugt i32 %83, %77
  br i1 %84, label %92, label %85

85:                                               ; preds = %80, %73
  %86 = phi i32 [ %83, %80 ], [ %78, %73 ]
  %87 = lshr i32 %86, %74
  %88 = sub i32 %67, %87
  %89 = icmp ugt i32 %88, %75
  %90 = select i1 %89, i32 %76, i32 %86
  %91 = tail call i32 @llvm.umin.i32(i32 %88, i32 %75) #9
  br label %92

92:                                               ; preds = %85, %80
  %93 = phi i32 [ %76, %80 ], [ %90, %85 ]
  %94 = phi i32 [ %75, %80 ], [ %91, %85 ]
  %95 = add nsw i32 %74, -1
  %96 = icmp sgt i32 %74, 0
  br i1 %96, label %73, label %97

97:                                               ; preds = %92, %64
  %98 = phi i32 [ 0, %64 ], [ %93, %92 ]
  %99 = tail call i32 @clk_set_rate(ptr noundef %65, i32 noundef %98) #9
  %100 = load ptr, ptr %44, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %30, align 4
  %104 = lshr i32 %98, %66
  %105 = tail call i32 @clk_set_rate(ptr noundef %103, i32 noundef %104) #9
  br label %106

106:                                              ; preds = %102, %97
  %107 = load ptr, ptr %30, align 4
  br label %108

108:                                              ; preds = %106, %36, %27
  %109 = phi ptr [ %107, %106 ], [ %31, %36 ], [ %31, %27 ]
  %110 = tail call i32 @clk_get_rate(ptr noundef %109) #9
  %111 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.mmc_host, ptr %112, i32 0, i32 57
  store i32 %110, ptr %113, align 4
  %114 = load ptr, ptr %111, align 4
  %115 = getelementptr inbounds %struct.mmc_host, ptr %114, i32 0, i32 57
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 9
  br label %118

118:                                              ; preds = %118, %108
  %119 = phi i32 [ -2147483520, %108 ], [ %123, %118 ]
  %120 = phi i32 [ %117, %108 ], [ %121, %118 ]
  %121 = shl i32 %120, 1
  %122 = icmp ugt i32 %121, %1
  %123 = lshr i32 %119, 1
  br i1 %122, label %124, label %118

124:                                              ; preds = %118
  %125 = load ptr, ptr %28, align 4
  %126 = getelementptr inbounds %struct.tmio_mmc_data, ptr %125, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1024
  %129 = icmp eq i32 %128, 0
  %130 = and i32 %119, 4194304
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.mmc_host, ptr %114, i32 0, i32 28, i32 7
  %135 = load i8, ptr %134, align 4
  %136 = icmp eq i8 %135, 10
  %137 = select i1 %136, i32 0, i32 255
  br label %138

138:                                              ; preds = %133, %124
  %139 = phi i32 [ %119, %124 ], [ %137, %133 ]
  %140 = trunc i32 %139 to i16
  %141 = and i16 %140, 255
  %142 = load ptr, ptr %10, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = tail call i32 %142(ptr noundef %0, i32 noundef 36) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144, %138
  %148 = load ptr, ptr %0, align 4
  %149 = load i32, ptr %4, align 4
  %150 = shl i32 36, %149
  %151 = getelementptr i8, ptr %148, i32 %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %151, i16 %141) #9, !srcloc !12
  br label %152

152:                                              ; preds = %147, %144
  %153 = load ptr, ptr %28, align 4
  %154 = getelementptr inbounds %struct.tmio_mmc_data, ptr %153, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  br label %159

159:                                              ; preds = %158, %152
  %160 = load ptr, ptr %0, align 4
  %161 = load i32, ptr %4, align 4
  %162 = shl i32 36, %161
  %163 = getelementptr i8, ptr %160, i32 %162
  %164 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %163) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %165 = or i16 %164, 256
  %166 = load ptr, ptr %10, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %159
  %169 = tail call i32 %166(ptr noundef %0, i32 noundef 36) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168, %159
  %172 = load ptr, ptr %0, align 4
  %173 = load i32, ptr %4, align 4
  %174 = shl i32 36, %173
  %175 = getelementptr i8, ptr %172, i32 %174
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %175, i16 %165) #9, !srcloc !12
  br label %176

176:                                              ; preds = %171, %168, %23
  %177 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.tmio_mmc_data, ptr %178, i32 0, i32 5
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  br label %184

184:                                              ; preds = %183, %176
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @renesas_sdhi_multi_io_quirk(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %1, 512
  %5 = icmp eq i32 %2, 2
  %6 = and i1 %4, %5
  %7 = select i1 %6, i32 1, i32 %2
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_ro(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_card_busy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 28, %5
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = load i32, ptr %4, align 4
  %11 = shl i32 30, %10
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %14 = lshr i16 %13, 7
  %15 = and i16 %14, 1
  %16 = xor i16 %15, 1
  %17 = zext i16 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_start_signal_voltage_switch(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %28 [
    i8 0, label %8
    i8 1, label %7
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 116, %7 ], [ 112, %2 ]
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %4, i32 108
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %15 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = icmp eq i8 %6, 0
  %19 = select i1 %18, i32 0, i32 -22
  br label %28

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %22, ptr noundef %1) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %12, align 4
  %27 = tail call i32 @pinctrl_select_state(ptr noundef %26, ptr noundef %11) #9
  br label %28

28:                                               ; preds = %25, %20, %17, %2
  %29 = phi i32 [ %19, %17 ], [ %27, %25 ], [ -22, %2 ], [ %23, %20 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -12
  %5 = getelementptr i8, ptr %3, i32 156
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @reset_control_reset(ptr noundef nonnull %6) #9
  %10 = tail call i64 @ktime_get() #9
  %11 = add i64 %10, 100000
  %12 = load ptr, ptr %5, align 4
  %13 = tail call i32 @reset_control_status(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %21, %8
  %16 = tail call i64 @ktime_get() #9
  %17 = icmp sgt i64 %16, %11
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 4
  %20 = tail call i32 @reset_control_status(ptr noundef %19) #9
  br label %25

21:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @reset_control_status(ptr noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %15

25:                                               ; preds = %21, %18, %8
  %26 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef 224) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %25
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 224, %35
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 1) #9, !srcloc !12
  br label %38

38:                                               ; preds = %32, %29
  %39 = getelementptr i8, ptr %3, i32 136
  store i8 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 24
  %41 = load i32, ptr %40, align 4
  tail call void @renesas_sdhi_set_clock(ptr noundef %0, i32 noundef %41)
  br label %61

42:                                               ; preds = %1
  %43 = getelementptr i8, ptr %3, i32 120
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @renesas_sdhi_disable_scc(ptr noundef %48) #9
  tail call fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %0, ptr noundef %4) #9
  %49 = getelementptr i8, ptr %3, i32 136
  store i8 0, ptr %49, align 4
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 8, %52
  %54 = getelementptr i8, ptr %50, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %56 = and i32 %55, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %43, align 4
  %58 = load i32, ptr %51, align 4
  %59 = shl i32 8, %58
  %60 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #9, !srcloc !17
  br label %61

61:                                               ; preds = %46, %42, %38
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 226, %64
  %66 = getelementptr i8, ptr %62, i32 %65
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %66) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %68 = icmp ugt i16 %67, -13297
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load ptr, ptr %0, align 4
  %71 = load i32, ptr %63, align 4
  %72 = shl i32 40, %71
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %75 = or i16 %74, 512
  %76 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = tail call i32 %77(ptr noundef %0, i32 noundef 40) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %69
  %83 = load ptr, ptr %0, align 4
  %84 = load i32, ptr %63, align 4
  %85 = shl i32 40, %84
  %86 = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 %75) #9, !srcloc !12
  br label %87

87:                                               ; preds = %82, %79, %61
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @shdma_chan_filter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_enable_dma(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 64, i32 32
  %7 = select i1 %1, i16 2, i16 0
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef 216) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, ptr %3, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ %4, %2 ]
  %18 = load ptr, ptr %0, align 4
  %19 = shl i32 216, %17
  %20 = getelementptr i8, ptr %18, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %7) #9, !srcloc !12
  br label %21

21:                                               ; preds = %16, %11
  %22 = select i1 %1, i32 %6, i32 16
  %23 = load ptr, ptr %0, align 4
  %24 = load i32, ptr %3, align 4
  %25 = shl i32 226, %24
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  switch i16 %27, label %51 [
    i16 18700, label %28
    i16 -13555, label %31
    i16 -13296, label %34
    i16 -13040, label %34
  ]

28:                                               ; preds = %21
  %29 = icmp eq i32 %22, 32
  %30 = zext i1 %29 to i16
  br label %39

31:                                               ; preds = %21
  %32 = icmp ne i32 %22, 32
  %33 = zext i1 %32 to i16
  br label %39

34:                                               ; preds = %21, %21
  %35 = icmp eq i32 %22, 32
  %36 = select i1 %35, i16 257, i16 1
  %37 = icmp eq i32 %22, 64
  %38 = select i1 %37, i16 0, i16 %36
  br label %39

39:                                               ; preds = %34, %31, %28
  %40 = phi i16 [ %33, %31 ], [ %30, %28 ], [ %38, %34 ]
  %41 = load ptr, ptr %8, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call i32 %41(ptr noundef %0, i32 noundef 228) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %0, align 4
  %48 = load i32, ptr %3, align 4
  %49 = shl i32 228, %48
  %50 = getelementptr i8, ptr %47, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %40) #9, !srcloc !12
  br label %51

51:                                               ; preds = %46, %43, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_fixup_request(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 136
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %76

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr i8, ptr %4, i32 120
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 24, %17
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %14, align 4
  %21 = load i32, ptr %16, align 4
  %22 = shl i32 26, %21
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1526726656) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %14, align 4
  %25 = load i32, ptr %16, align 4
  %26 = shl i32 22, %25
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %28 = load ptr, ptr %14, align 4
  %29 = load i32, ptr %16, align 4
  %30 = shl i32 22, %29
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %14, align 4
  %33 = load i32, ptr %16, align 4
  %34 = shl i32 24, %33
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 294) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %14, align 4
  %37 = load i32, ptr %16, align 4
  %38 = shl i32 22, %37
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %40 = load ptr, ptr %14, align 4
  %41 = load i32, ptr %16, align 4
  %42 = shl i32 22, %41
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #9, !srcloc !17
  %44 = load ptr, ptr %14, align 4
  %45 = load i32, ptr %16, align 4
  %46 = shl i32 28, %45
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %49 = and i32 %48, 31
  %50 = getelementptr i8, ptr %4, i32 132
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = load i8, ptr %52, align 1
  %54 = or i8 %53, -128
  %55 = zext i8 %54 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %14, align 4
  %57 = load i32, ptr %16, align 4
  %58 = shl i32 24, %57
  %59 = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 34) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %60 = load ptr, ptr %14, align 4
  %61 = load i32, ptr %16, align 4
  %62 = shl i32 26, %61
  %63 = getelementptr i8, ptr %60, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %55) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %14, align 4
  %65 = load i32, ptr %16, align 4
  %66 = shl i32 22, %65
  %67 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %68 = load ptr, ptr %14, align 4
  %69 = load i32, ptr %16, align 4
  %70 = shl i32 22, %69
  %71 = getelementptr i8, ptr %68, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %72 = load ptr, ptr %14, align 4
  %73 = load i32, ptr %16, align 4
  %74 = shl i32 20, %73
  %75 = getelementptr i8, ptr %72, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 3) #9, !srcloc !17
  store i8 0, ptr %5, align 4
  br label %76

76:                                               ; preds = %13, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_gen3_get_cycles(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 40, %4
  %6 = getelementptr i8, ptr %2, i32 %5
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 15
  %10 = and i16 %7, 512
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, i32 13, i32 14
  %13 = zext i16 %9 to i32
  %14 = add nuw nsw i32 %12, %13
  %15 = shl nuw nsw i32 1, %14
  ret i32 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @renesas_sdhi_check_scc_error(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 104
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %6, i32 0, i32 1
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 28, i32 7
  %17 = load i8, ptr %16, align 4
  switch i8 %17, label %172 [
    i8 6, label %19
    i8 9, label %19
    i8 10, label %18
  ]

18:                                               ; preds = %12
  br i1 %13, label %172, label %19

19:                                               ; preds = %18, %12, %12
  %20 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 29
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 20
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %172

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmc_command, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, -110
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -110
  br i1 %37, label %38, label %51

38:                                               ; preds = %34, %24
  %39 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 16
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 5, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef %15) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50, %47, %43, %34, %30
  %52 = phi i32 [ 1, %50 ], [ 0, %47 ], [ 0, %43 ], [ 0, %34 ], [ 0, %30 ]
  %53 = getelementptr i8, ptr %4, i32 120
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 8, %56
  %58 = getelementptr i8, ptr %54, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = load ptr, ptr %3, align 4
  br i1 %61, label %79, label %63

63:                                               ; preds = %51
  %64 = getelementptr i8, ptr %62, i32 120
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %55, align 4
  %67 = shl i32 10, %66
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %73 = load ptr, ptr %64, align 4
  %74 = load i32, ptr %55, align 4
  %75 = shl i32 10, %74
  %76 = getelementptr i8, ptr %73, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 0) #9, !srcloc !17
  br label %77

77:                                               ; preds = %72, %63
  %78 = xor i1 %71, true
  br label %167

79:                                               ; preds = %51
  %80 = getelementptr i8, ptr %62, i32 152
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %62, i32 120
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %55, align 4
  %85 = shl i32 10, %84
  %86 = getelementptr i8, ptr %83, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %167, label %89

89:                                               ; preds = %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %82, align 4
  %91 = load i32, ptr %55, align 4
  %92 = shl i32 10, %91
  %93 = getelementptr i8, ptr %90, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 0) #9, !srcloc !17
  %94 = load ptr, ptr %0, align 4
  %95 = load i32, ptr %55, align 4
  %96 = shl i32 226, %95
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %97) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %99 = icmp eq i16 %98, -13040
  br i1 %99, label %100, label %143

100:                                              ; preds = %89
  %101 = load ptr, ptr %14, align 4
  %102 = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 28, i32 7
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, 10
  br i1 %104, label %105, label %143

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %62, i32 104
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %107, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i32 [ %111, %109 ], [ 0, %105 ]
  %114 = load ptr, ptr %82, align 4
  %115 = load i32, ptr %55, align 4
  %116 = shl i32 12, %115
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %119 = and i32 %118, 16777472
  switch i32 %119, label %121 [
    i32 0, label %167
    i32 16777216, label %122
    i32 256, label %120
  ]

120:                                              ; preds = %112
  br label %122

121:                                              ; preds = %112
  br label %167

122:                                              ; preds = %120, %112
  %123 = phi i32 [ -1, %120 ], [ 1, %112 ]
  %124 = phi i32 [ 1, %120 ], [ -1, %112 ]
  %125 = add i32 %123, %81
  %126 = getelementptr i8, ptr %62, i32 148
  %127 = load i32, ptr %126, align 4
  %128 = urem i32 %125, %127
  %129 = shl nuw i32 1, %128
  %130 = and i32 %129, %113
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %122
  %133 = add i32 %124, %81
  %134 = urem i32 %133, %127
  %135 = getelementptr i8, ptr %62, i32 144
  %136 = lshr i32 %134, 5
  %137 = getelementptr i32, ptr %135, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %134, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp ne i32 %141, 0
  br label %167

143:                                              ; preds = %100, %89
  %144 = and i32 %87, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %143
  %147 = and i32 %87, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = add i32 %81, 1
  br label %156

151:                                              ; preds = %146
  %152 = and i32 %87, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %151
  %155 = add i32 %81, -1
  br label %156

156:                                              ; preds = %154, %149, %122
  %157 = phi i32 [ %150, %149 ], [ %155, %154 ], [ %125, %122 ]
  %158 = getelementptr i8, ptr %62, i32 148
  %159 = load i32, ptr %158, align 4
  %160 = urem i32 %157, %159
  store i32 %160, ptr %80, align 4
  %161 = zext i1 %13 to i32
  %162 = lshr i32 %160, %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %163 = load ptr, ptr %82, align 4
  %164 = load i32, ptr %55, align 4
  %165 = shl i32 2, %164
  %166 = getelementptr i8, ptr %163, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %162) #9, !srcloc !17
  br label %167

167:                                              ; preds = %156, %151, %143, %132, %121, %112, %79, %77
  %168 = phi i1 [ %78, %77 ], [ false, %156 ], [ false, %79 ], [ true, %143 ], [ false, %151 ], [ false, %112 ], [ true, %121 ], [ %142, %132 ]
  %169 = zext i1 %168 to i32
  %170 = or i32 %52, %169
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %167, %19, %18, %12
  %173 = phi i1 [ %171, %167 ], [ false, %12 ], [ false, %18 ], [ false, %19 ]
  ret i1 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_execute_tuning(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 28, %13
  %15 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %10) #9, !srcloc !12
  %16 = lshr i32 %9, 16
  %17 = trunc i32 %16 to i16
  %18 = load ptr, ptr %4, align 4
  %19 = load i32, ptr %12, align 4
  %20 = shl i32 30, %19
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %17) #9, !srcloc !12
  %22 = load ptr, ptr %4, align 4
  %23 = load i32, ptr %12, align 4
  %24 = shl i32 36, %23
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %27 = and i16 %26, -257
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = tail call i32 %29(ptr noundef %4, i32 noundef 36) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %2
  %35 = load ptr, ptr %4, align 4
  %36 = load i32, ptr %12, align 4
  %37 = shl i32 36, %36
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %27) #9, !srcloc !12
  br label %39

39:                                               ; preds = %34, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %40 = getelementptr i8, ptr %6, i32 120
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 524289) #9, !srcloc !17
  %42 = load ptr, ptr %40, align 4
  %43 = load i32, ptr %12, align 4
  %44 = shl i32 6, %43
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %47 = or i32 %46, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %48 = load ptr, ptr %40, align 4
  %49 = load i32, ptr %12, align 4
  %50 = shl i32 6, %49
  %51 = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #9, !srcloc !17
  %52 = load ptr, ptr %40, align 4
  %53 = load i32, ptr %12, align 4
  %54 = shl i32 8, %53
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %57 = and i32 %56, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %58 = load ptr, ptr %40, align 4
  %59 = load i32, ptr %12, align 4
  %60 = shl i32 8, %59
  %61 = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #9, !srcloc !17
  %62 = getelementptr i8, ptr %6, i32 124
  %63 = load i32, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %40, align 4
  %65 = load i32, ptr %12, align 4
  %66 = shl i32 4, %65
  %67 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %63) #9, !srcloc !17
  %68 = load ptr, ptr %4, align 4
  %69 = load i32, ptr %12, align 4
  %70 = shl i32 36, %69
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %73 = or i16 %72, 256
  %74 = load ptr, ptr %28, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %39
  %77 = tail call i32 %74(ptr noundef %4, i32 noundef 36) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76, %39
  %80 = load ptr, ptr %4, align 4
  %81 = load i32, ptr %12, align 4
  %82 = shl i32 36, %81
  %83 = getelementptr i8, ptr %80, i32 %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %73) #9, !srcloc !12
  br label %84

84:                                               ; preds = %79, %76
  %85 = load ptr, ptr %40, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = getelementptr i8, ptr %6, i32 148
  store i32 %88, ptr %89, align 4
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %243, label %91

91:                                               ; preds = %84
  %92 = icmp ugt i32 %88, 15
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.10) #10
  br label %243

97:                                               ; preds = %91
  %98 = shl nuw nsw i32 %88, 1
  %99 = getelementptr i8, ptr %6, i32 140
  %100 = add nuw nsw i32 %98, 31
  %101 = lshr i32 %100, 3
  %102 = and i32 %101, 124
  tail call void @llvm.memset.p0.i32(ptr align 4 %99, i8 0, i32 %102, i1 false) #9
  %103 = getelementptr i8, ptr %6, i32 144
  %104 = load i32, ptr %89, align 4
  %105 = shl i32 %104, 1
  %106 = add i32 %105, 31
  %107 = lshr i32 %106, 3
  %108 = and i32 %107, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %103, i8 0, i32 %108, i1 false) #9
  %109 = load i32, ptr %89, align 4
  %110 = and i32 %109, 2147483647
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %141, label %112

112:                                              ; preds = %136, %97
  %113 = phi i32 [ %137, %136 ], [ 0, %97 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %114 = load i32, ptr %89, align 4
  %115 = urem i32 %113, %114
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %116 = load ptr, ptr %40, align 4
  %117 = load i32, ptr %12, align 4
  %118 = shl i32 2, %117
  %119 = getelementptr i8, ptr %116, i32 %118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %115) #9, !srcloc !17
  %120 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  call void @_set_bit(i32 noundef %113, ptr noundef %99) #9
  br label %123

123:                                              ; preds = %122, %112
  %124 = load ptr, ptr %40, align 4
  %125 = load i32, ptr %12, align 4
  %126 = shl i32 12, %125
  %127 = getelementptr i8, ptr %124, i32 %126
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  call void @_set_bit(i32 noundef %113, ptr noundef %103) #9
  br label %131

131:                                              ; preds = %130, %123
  %132 = load i32, ptr %3, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = call i32 @mmc_send_abort_tuning(ptr noundef %0, i32 noundef %1) #9
  br label %136

136:                                              ; preds = %134, %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %137 = add nuw i32 %113, 1
  %138 = load i32, ptr %89, align 4
  %139 = shl i32 %138, 1
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %112, label %141

141:                                              ; preds = %136, %97
  %142 = load ptr, ptr %5, align 4
  %143 = getelementptr i8, ptr %142, i32 148
  %144 = load i32, ptr %143, align 4
  %145 = shl i32 %144, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %146 = getelementptr i8, ptr %142, i32 120
  %147 = load ptr, ptr %146, align 4
  %148 = load i32, ptr %12, align 4
  %149 = shl i32 10, %148
  %150 = getelementptr i8, ptr %147, i32 %149
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 0) #9, !srcloc !17
  %151 = icmp eq i32 %145, 0
  br i1 %151, label %180, label %152

152:                                              ; preds = %141
  %153 = getelementptr i8, ptr %142, i32 140
  %154 = getelementptr i8, ptr %142, i32 144
  br label %155

155:                                              ; preds = %177, %152
  %156 = phi i32 [ 0, %152 ], [ %178, %177 ]
  %157 = load i32, ptr %143, align 4
  %158 = icmp ult i32 %156, %157
  %159 = sub i32 0, %157
  %160 = select i1 %158, i32 %157, i32 %159
  %161 = lshr i32 %156, 5
  %162 = getelementptr i32, ptr %153, i32 %161
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %156, 31
  %165 = shl nuw i32 1, %164
  %166 = and i32 %163, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = add i32 %160, %156
  call void @_clear_bit(i32 noundef %169, ptr noundef %153) #9
  br label %170

170:                                              ; preds = %168, %155
  %171 = getelementptr i32, ptr %154, i32 %161
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, %165
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = add i32 %160, %156
  call void @_clear_bit(i32 noundef %176, ptr noundef %154) #9
  br label %177

177:                                              ; preds = %175, %170
  %178 = add nuw i32 %156, 1
  %179 = icmp eq i32 %178, %145
  br i1 %179, label %180, label %155

180:                                              ; preds = %177, %141
  %181 = getelementptr i8, ptr %142, i32 140
  %182 = call i32 @_find_first_zero_bit_le(ptr noundef %181, i32 noundef %145) #9
  %183 = icmp eq i32 %182, %145
  %184 = getelementptr i8, ptr %142, i32 144
  %185 = select i1 %183, i32 1, i32 3
  %186 = select i1 %183, ptr %184, ptr %181
  %187 = call i32 @_find_next_bit_le(ptr noundef %186, i32 noundef %145, i32 noundef 0) #9
  %188 = add i32 %187, 1
  %189 = call i32 @_find_next_zero_bit_le(ptr noundef %186, i32 noundef %145, i32 noundef %188) #9
  %190 = icmp ult i32 %187, %145
  br i1 %190, label %191, label %229

191:                                              ; preds = %191, %180
  %192 = phi i32 [ %205, %191 ], [ %189, %180 ]
  %193 = phi i32 [ %203, %191 ], [ %187, %180 ]
  %194 = phi i32 [ %201, %191 ], [ 0, %180 ]
  %195 = phi i32 [ %200, %191 ], [ 0, %180 ]
  %196 = phi i32 [ %199, %191 ], [ 0, %180 ]
  %197 = sub i32 %192, %193
  %198 = icmp ugt i32 %197, %194
  %199 = select i1 %198, i32 %193, i32 %196
  %200 = select i1 %198, i32 %192, i32 %195
  %201 = call i32 @llvm.umax.i32(i32 %197, i32 %194) #9
  %202 = add i32 %192, 1
  %203 = call i32 @_find_next_bit_le(ptr noundef %186, i32 noundef %145, i32 noundef %202) #9
  %204 = add i32 %203, 1
  %205 = call i32 @_find_next_zero_bit_le(ptr noundef %186, i32 noundef %145, i32 noundef %204) #9
  %206 = icmp ult i32 %203, %145
  br i1 %206, label %191, label %207

207:                                              ; preds = %191
  %208 = icmp ult i32 %201, %185
  br i1 %208, label %229, label %209

209:                                              ; preds = %207
  %210 = add i32 %199, %200
  %211 = lshr i32 %210, 1
  %212 = load i32, ptr %143, align 4
  %213 = urem i32 %211, %212
  %214 = getelementptr i8, ptr %142, i32 152
  store i32 %213, ptr %214, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %215 = load ptr, ptr %146, align 4
  %216 = load i32, ptr %12, align 4
  %217 = shl i32 2, %216
  %218 = getelementptr i8, ptr %215, i32 %217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %213) #9, !srcloc !17
  %219 = load ptr, ptr %146, align 4
  %220 = load i32, ptr %12, align 4
  %221 = shl i32 8, %220
  %222 = getelementptr i8, ptr %219, i32 %221
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %224 = or i32 %223, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %225 = load ptr, ptr %146, align 4
  %226 = load i32, ptr %12, align 4
  %227 = shl i32 8, %226
  %228 = getelementptr i8, ptr %225, i32 %227
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %224) #9, !srcloc !17
  br label %243

229:                                              ; preds = %207, %180
  %230 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %231 = load ptr, ptr %230, align 4
  call void @renesas_sdhi_disable_scc(ptr noundef %231) #9
  call fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %4, ptr noundef %7) #9
  %232 = getelementptr i8, ptr %6, i32 136
  store i8 0, ptr %232, align 4
  %233 = load ptr, ptr %40, align 4
  %234 = load i32, ptr %12, align 4
  %235 = shl i32 8, %234
  %236 = getelementptr i8, ptr %233, i32 %235
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %238 = and i32 %237, -2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %239 = load ptr, ptr %40, align 4
  %240 = load i32, ptr %12, align 4
  %241 = shl i32 8, %240
  %242 = getelementptr i8, ptr %239, i32 %241
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %238) #9, !srcloc !17
  br label %243

243:                                              ; preds = %229, %209, %93, %84
  %244 = phi i32 [ -22, %93 ], [ 0, %84 ], [ -5, %229 ], [ 0, %209 ]
  ret i32 %244
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_prepare_hs400_tuning(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -12
  tail call fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %3, ptr noundef %6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_disable_scc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 36, %7
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %11 = and i16 %10, -257
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = tail call i32 %13(ptr noundef %2, i32 noundef 36) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %1
  %19 = load ptr, ptr %2, align 4
  %20 = load i32, ptr %6, align 4
  %21 = shl i32 36, %20
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %11) #9, !srcloc !12
  br label %23

23:                                               ; preds = %18, %15
  %24 = getelementptr i8, ptr %4, i32 120
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %6, align 4
  %27 = shl i32 6, %26
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %30 = and i32 %29, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %31 = load ptr, ptr %24, align 4
  %32 = load i32, ptr %6, align 4
  %33 = shl i32 6, %32
  %34 = getelementptr i8, ptr %31, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #9, !srcloc !17
  %35 = load ptr, ptr %24, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %37 = and i32 %36, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %38 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #9, !srcloc !17
  %39 = load ptr, ptr %2, align 4
  %40 = load i32, ptr %6, align 4
  %41 = shl i32 36, %40
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %44 = or i16 %43, 256
  %45 = load ptr, ptr %12, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %23
  %48 = tail call i32 %45(ptr noundef %2, i32 noundef 36) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47, %23
  %51 = load ptr, ptr %2, align 4
  %52 = load i32, ptr %6, align 4
  %53 = shl i32 36, %52
  %54 = getelementptr i8, ptr %51, i32 %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %44) #9, !srcloc !12
  br label %55

55:                                               ; preds = %50, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @renesas_sdhi_hs400_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 104
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %6, i32 0, i32 1
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %17 = phi i32 [ %14, %8 ], [ 1, %1 ]
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 36, %20
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %24 = and i16 %23, -257
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 26
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = tail call i32 %26(ptr noundef %2, i32 noundef 36) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %15
  %32 = load ptr, ptr %2, align 4
  %33 = load i32, ptr %19, align 4
  %34 = shl i32 36, %33
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %24) #9, !srcloc !12
  br label %36

36:                                               ; preds = %31, %28
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %19, align 4
  %39 = shl i32 230, %38
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %42 = or i16 %41, 1
  %43 = load ptr, ptr %25, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = tail call i32 %43(ptr noundef %2, i32 noundef 230) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %36
  %49 = load ptr, ptr %2, align 4
  %50 = load i32, ptr %19, align 4
  %51 = shl i32 230, %50
  %52 = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %42) #9, !srcloc !12
  br label %53

53:                                               ; preds = %48, %45
  %54 = getelementptr i8, ptr %4, i32 128
  %55 = load i32, ptr %54, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %56 = getelementptr i8, ptr %4, i32 120
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %19, align 4
  %59 = shl i32 4, %58
  %60 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %55) #9, !srcloc !17
  %61 = load ptr, ptr %2, align 4
  %62 = load i32, ptr %19, align 4
  %63 = shl i32 226, %62
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %64) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %66 = icmp eq i16 %65, -13040
  br i1 %66, label %67, label %78

67:                                               ; preds = %53
  %68 = load ptr, ptr %56, align 4
  %69 = load i32, ptr %19, align 4
  %70 = shl i32 8, %69
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %73 = and i32 %72, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %56, align 4
  %75 = load i32, ptr %19, align 4
  %76 = shl i32 8, %75
  %77 = getelementptr i8, ptr %74, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %73) #9, !srcloc !17
  br label %78

78:                                               ; preds = %67, %53
  %79 = load ptr, ptr %56, align 4
  %80 = load i32, ptr %19, align 4
  %81 = shl i32 14, %80
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %84 = or i32 %83, -2147483632
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %85 = load ptr, ptr %56, align 4
  %86 = load i32, ptr %19, align 4
  %87 = shl i32 14, %86
  %88 = getelementptr i8, ptr %85, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %84) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %89 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 262145) #9, !srcloc !17
  %90 = getelementptr i8, ptr %4, i32 152
  %91 = load i32, ptr %90, align 4
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %78
  %96 = add i32 %91, 1
  %97 = getelementptr i8, ptr %4, i32 148
  %98 = load i32, ptr %97, align 4
  %99 = urem i32 %96, %98
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95
  %104 = add i32 %91, -1
  %105 = urem i32 %104, %98
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %16
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 %105, i32 %91
  br label %110

110:                                              ; preds = %103, %95
  %111 = phi i32 [ %109, %103 ], [ %99, %95 ]
  store i32 %111, ptr %90, align 4
  br label %112

112:                                              ; preds = %110, %78
  %113 = phi i32 [ %111, %110 ], [ %91, %78 ]
  %114 = udiv i32 %113, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %115 = load ptr, ptr %56, align 4
  %116 = load i32, ptr %19, align 4
  %117 = shl i32 2, %116
  %118 = getelementptr i8, ptr %115, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %114) #9, !srcloc !17
  %119 = load ptr, ptr %56, align 4
  %120 = load i32, ptr %19, align 4
  %121 = shl i32 6, %120
  %122 = getelementptr i8, ptr %119, i32 %121
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %124 = or i32 %123, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %125 = load ptr, ptr %56, align 4
  %126 = load i32, ptr %19, align 4
  %127 = shl i32 6, %126
  %128 = getelementptr i8, ptr %125, i32 %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %124) #9, !srcloc !17
  %129 = load ptr, ptr %2, align 4
  %130 = load i32, ptr %19, align 4
  %131 = shl i32 36, %130
  %132 = getelementptr i8, ptr %129, i32 %131
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %132) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %134 = or i16 %133, 256
  %135 = load ptr, ptr %25, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %112
  %138 = tail call i32 %135(ptr noundef %2, i32 noundef 36) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137, %112
  %141 = load ptr, ptr %2, align 4
  %142 = load i32, ptr %19, align 4
  %143 = shl i32 36, %142
  %144 = getelementptr i8, ptr %141, i32 %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %144, i16 %134) #9, !srcloc !12
  br label %145

145:                                              ; preds = %140, %137
  %146 = getelementptr i8, ptr %4, i32 132
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = getelementptr i8, ptr %4, i32 136
  store i8 1, ptr %150, align 4
  br label %151

151:                                              ; preds = %149, %145
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_irq(i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @renesas_sdhi_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @tmio_mmc_host_remove(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  tail call void @tmio_mmc_host_free(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 36, %5
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %9 = and i16 %8, -257
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 36) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr %0, align 4
  %18 = load i32, ptr %4, align 4
  %19 = shl i32 36, %18
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %9) #9, !srcloc !12
  br label %21

21:                                               ; preds = %16, %13
  %22 = load ptr, ptr %0, align 4
  %23 = load i32, ptr %4, align 4
  %24 = shl i32 230, %23
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %27 = and i16 %26, -2
  %28 = load ptr, ptr %10, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = tail call i32 %28(ptr noundef %0, i32 noundef 230) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %21
  %34 = load ptr, ptr %0, align 4
  %35 = load i32, ptr %4, align 4
  %36 = shl i32 230, %35
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %27) #9, !srcloc !12
  br label %38

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.renesas_sdhi, ptr %1, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %41 = getelementptr inbounds %struct.renesas_sdhi, ptr %1, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %4, align 4
  %44 = shl i32 4, %43
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %40) #9, !srcloc !17
  %46 = load ptr, ptr %41, align 4
  %47 = load i32, ptr %4, align 4
  %48 = shl i32 14, %47
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %51 = and i32 %50, 2147483631
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %52 = load ptr, ptr %41, align 4
  %53 = load i32, ptr %4, align 4
  %54 = shl i32 14, %53
  %55 = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #9, !srcloc !17
  %56 = getelementptr inbounds %struct.renesas_sdhi, ptr %1, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %99, label %59

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %62 = getelementptr i8, ptr %61, i32 120
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %4, align 4
  %65 = shl i32 24, %64
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %67 = load ptr, ptr %62, align 4
  %68 = load i32, ptr %4, align 4
  %69 = shl i32 26, %68
  %70 = getelementptr i8, ptr %67, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 -1526726656) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %71 = load ptr, ptr %62, align 4
  %72 = load i32, ptr %4, align 4
  %73 = shl i32 22, %72
  %74 = getelementptr i8, ptr %71, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %75 = load ptr, ptr %62, align 4
  %76 = load i32, ptr %4, align 4
  %77 = shl i32 22, %76
  %78 = getelementptr i8, ptr %75, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %79 = load ptr, ptr %62, align 4
  %80 = load i32, ptr %4, align 4
  %81 = shl i32 24, %80
  %82 = getelementptr i8, ptr %79, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 34) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %83 = load ptr, ptr %62, align 4
  %84 = load i32, ptr %4, align 4
  %85 = shl i32 26, %84
  %86 = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %87 = load ptr, ptr %62, align 4
  %88 = load i32, ptr %4, align 4
  %89 = shl i32 22, %88
  %90 = getelementptr i8, ptr %87, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 1) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %91 = load ptr, ptr %62, align 4
  %92 = load i32, ptr %4, align 4
  %93 = shl i32 22, %92
  %94 = getelementptr i8, ptr %91, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #9, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %95 = load ptr, ptr %62, align 4
  %96 = load i32, ptr %4, align 4
  %97 = shl i32 20, %96
  %98 = getelementptr i8, ptr %95, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #9, !srcloc !17
  br label %99

99:                                               ; preds = %59, %38
  %100 = load ptr, ptr %0, align 4
  %101 = load i32, ptr %4, align 4
  %102 = shl i32 36, %101
  %103 = getelementptr i8, ptr %100, i32 %102
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %103) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %105 = or i16 %104, 256
  %106 = load ptr, ptr %10, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = tail call i32 %106(ptr noundef %0, i32 noundef 36) #9
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108, %99
  %112 = load ptr, ptr %0, align 4
  %113 = load i32, ptr %4, align 4
  %114 = shl i32 36, %113
  %115 = getelementptr i8, ptr %112, i32 %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 %105) #9, !srcloc !12
  br label %116

116:                                              ; preds = %111, %108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_abort_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2516418}
!10 = !{i64 2150056236}
!11 = !{i64 2150057458}
!12 = !{i64 2516218}
!13 = !{i32 0, i32 33}
!14 = !{i64 2517256}
!15 = !{i64 2154949645}
!16 = !{i64 2154950023}
!17 = !{i64 2516838}
