; ModuleID = '/llk/IR/drivers/gpio/gpio-mmio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mmio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bgpio_init\22\09\09\09\09\09"
module asm "__kstrtabns_bgpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.58, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.58 = type { ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bgpio_pdata = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__kstrtab_bgpio_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgpio_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bgpio_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgpio_init to i32), ptr @__kstrtab_bgpio_init, ptr @__kstrtabns_bgpio_init }, section "___ksymtab_gpl+bgpio_init", align 4
@__initcall__kmod_gpio_generic__206_816_bgpio_driver_init6 = internal global ptr @bgpio_driver_init, section ".initcall6.init", align 4
@bgpio_driver = internal global %struct.platform_driver { ptr @bgpio_pdev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bgpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bgpio_id_table, i8 0 }, align 4
@__exitcall_bgpio_driver_exit = internal global ptr @bgpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description207 = internal constant [73 x i8] c"gpio_generic.description=Driver for basic memory-mapped GPIO controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_author208 = internal constant [61 x i8] c"gpio_generic.author=Anton Vorontsov <cbouatmailru@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [44 x i8] c"gpio_generic.file=drivers/gpio/gpio-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [25 x i8] c"gpio_generic.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"unsupported data width %u bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"basic-mmio-gpio\00", align 1
@bgpio_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6345-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wd,mbl-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ni,169445-nand-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bgpio_id_table = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"basic-mmio-gpio\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"basic-mmio-gpio-be\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"dat\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dirout\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dirin\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no-output\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_bgpio_driver_exit, ptr @__initcall__kmod_gpio_generic__206_816_bgpio_driver_init6, ptr @__ksymtab_bgpio_init, ptr @bgpio_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bgpio_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = tail call i32 @llvm.ctpop.i32(i32 %2) #8, !range !8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %156

12:                                               ; preds = %9
  %13 = shl i32 %2, 3
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  store i32 %13, ptr %14, align 4
  %15 = icmp sgt i32 %13, 32
  br i1 %15, label %156, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load ptr, ptr %1, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %20, %16 ]
  store ptr %25, ptr %0, align 4
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  store i32 -1, ptr %26, align 4
  %27 = trunc i32 %13 to i16
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 5
  store ptr @bgpio_request, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %31 = trunc i32 %8 to i8
  %32 = and i8 %31, 1
  store i8 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  store ptr %3, ptr %33, align 4
  %34 = icmp eq ptr %3, null
  br i1 %34, label %156, label %35

35:                                               ; preds = %24
  %36 = icmp ne ptr %4, null
  %37 = icmp ne ptr %5, null
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  store ptr %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 29
  store ptr %5, ptr %41, align 4
  %42 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  store ptr @bgpio_set_with_clear, ptr %42, align 4
  br label %55

43:                                               ; preds = %35
  %44 = icmp eq ptr %4, null
  %45 = or i1 %44, %37
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  store ptr %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  store ptr @bgpio_set_set, ptr %48, align 4
  br label %55

49:                                               ; preds = %43
  %50 = and i32 %8, 32
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  br i1 %51, label %54, label %53

53:                                               ; preds = %49
  store ptr @bgpio_set_none, ptr %52, align 4
  br label %55

54:                                               ; preds = %49
  store ptr @bgpio_set, ptr %52, align 4
  br label %55

55:                                               ; preds = %54, %53, %46, %39
  %56 = phi ptr [ @bgpio_set_multiple_set, %46 ], [ @bgpio_set_multiple, %54 ], [ null, %53 ], [ @bgpio_set_multiple_with_clear, %39 ]
  %57 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 13
  store ptr %56, ptr %57, align 4
  %58 = and i32 %8, 18
  %59 = icmp eq i32 %58, 16
  %60 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 10
  br i1 %59, label %61, label %65

61:                                               ; preds = %55
  store ptr @bgpio_get_set, ptr %60, align 4
  %62 = icmp eq i8 %32, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 11
  store ptr @bgpio_get_set_multiple, ptr %64, align 4
  br label %70

65:                                               ; preds = %55
  store ptr @bgpio_get, ptr %60, align 4
  %66 = icmp eq i8 %32, 0
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 11
  br i1 %66, label %69, label %68

68:                                               ; preds = %65
  store ptr @bgpio_get_multiple_be, ptr %67, align 4
  br label %70

69:                                               ; preds = %65
  store ptr @bgpio_get_multiple, ptr %67, align 4
  br label %70

70:                                               ; preds = %69, %68, %63, %61
  %71 = and i32 %8, 8
  %72 = icmp eq i32 %71, 0
  switch i32 %13, label %83 [
    i32 8, label %73
    i32 16, label %75
    i32 32, label %79
  ]

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  store ptr @bgpio_read8, ptr %74, align 4
  br label %84

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  br i1 %72, label %78, label %77

77:                                               ; preds = %75
  store ptr @bgpio_read16be, ptr %76, align 4
  br label %84

78:                                               ; preds = %75
  store ptr @bgpio_read16, ptr %76, align 4
  br label %84

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  br i1 %72, label %82, label %81

81:                                               ; preds = %79
  store ptr @bgpio_read32be, ptr %80, align 4
  br label %84

82:                                               ; preds = %79
  store ptr @bgpio_read32, ptr %80, align 4
  br label %84

83:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %13) #9
  br label %156

84:                                               ; preds = %82, %81, %78, %77, %73
  %85 = phi ptr [ @bgpio_write32be, %81 ], [ @bgpio_write32, %82 ], [ @bgpio_write16be, %77 ], [ @bgpio_write16, %78 ], [ @bgpio_write8, %73 ]
  %86 = phi ptr [ @bgpio_read32be, %81 ], [ @bgpio_read32, %82 ], [ @bgpio_read16be, %77 ], [ @bgpio_read16, %78 ], [ @bgpio_read8, %73 ]
  %87 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  store ptr %85, ptr %87, align 4
  %88 = icmp ne ptr %6, null
  %89 = icmp ne ptr %7, null
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 30
  store ptr %6, ptr %92, align 4
  %93 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  store ptr %7, ptr %93, align 4
  %94 = and i32 %8, 64
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, ptr @bgpio_dir_out_val_first, ptr @bgpio_dir_out_dir_first
  %97 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 7
  store ptr @bgpio_get_dir, ptr %97, align 4
  br label %102

98:                                               ; preds = %84
  %99 = and i32 %8, 32
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr @bgpio_simple_dir_out, ptr @bgpio_dir_out_err
  br label %102

102:                                              ; preds = %98, %91
  %103 = phi ptr [ %96, %91 ], [ %101, %98 ]
  %104 = phi ptr [ @bgpio_dir_in, %91 ], [ @bgpio_simple_dir_in, %98 ]
  %105 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 9
  store ptr %103, ptr %105, align 4
  %106 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 8
  store ptr %104, ptr %106, align 4
  %107 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %108 = tail call i32 %86(ptr noundef nonnull %3) #8
  %109 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 35
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, @bgpio_set_set
  %113 = and i32 %8, 2
  %114 = icmp eq i32 %113, 0
  %115 = and i1 %114, %112
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load ptr, ptr %107, align 4
  %118 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 %117(ptr noundef %119) #8
  store i32 %120, ptr %109, align 4
  br label %121

121:                                              ; preds = %116, %102
  %122 = and i32 %8, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 30
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %134

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 32
  store i8 1, ptr %129, align 4
  br label %156

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %156, label %137

134:                                              ; preds = %124
  %135 = load ptr, ptr %107, align 4
  %136 = tail call i32 %135(ptr noundef nonnull %126) #8
  br label %141

137:                                              ; preds = %130
  %138 = load ptr, ptr %107, align 4
  %139 = tail call i32 %138(ptr noundef nonnull %132) #8
  %140 = xor i32 %139, -1
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i32 [ %140, %137 ], [ %136, %134 ]
  %143 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  store i32 %142, ptr %143, align 4
  %144 = load ptr, ptr %125, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %156, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %154 = load i32, ptr %153, align 4
  %155 = xor i32 %154, -1
  tail call void %152(ptr noundef nonnull %148, i32 noundef %155) #8
  br label %156

156:                                              ; preds = %150, %146, %141, %130, %128, %83, %24, %12, %9
  %157 = phi i32 [ -22, %12 ], [ -22, %83 ], [ 0, %130 ], [ 0, %141 ], [ 0, %146 ], [ 0, %150 ], [ -22, %24 ], [ -22, %9 ], [ 0, %128 ]
  ret i32 %157
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bgpio_request(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %6, i32 0, i32 -22
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_set_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %1, -1
  %11 = add i32 %9, %10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ %1, %3 ]
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %14
  store i32 %21, ptr %19, align 4
  br label %27

22:                                               ; preds = %12
  %23 = xor i32 %14, -1
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 35
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %26, %22 ], [ %21, %18 ]
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %32 = load ptr, ptr %31, align 4
  tail call void %30(ptr noundef %32, i32 noundef %28) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bgpio_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bgpio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bgpio_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bgpio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_set_with_clear(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %1, -1
  %11 = add i32 %9, %10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ %1, %3 ]
  %14 = shl nuw i32 1, %13
  %15 = icmp eq i32 %2, 0
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 29
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %20 = select i1 %15, ptr %18, ptr %19
  %21 = load ptr, ptr %20, align 4
  tail call void %17(ptr noundef %21, i32 noundef %14) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_set_multiple_with_clear(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %7, i32 noundef 0) #8
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %9, %11 ], [ %34, %13 ]
  %15 = phi i32 [ %8, %11 ], [ %33, %13 ]
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr %2, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  %23 = load i8, ptr %12, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  %25 = xor i32 %15, -1
  %26 = add i32 %14, %25
  %27 = select i1 %24, i32 %15, i32 %26
  %28 = shl nuw i32 1, %27
  %29 = select i1 %22, ptr %5, ptr %4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %28, %30
  store i32 %31, ptr %29, align 4
  %32 = add nsw i32 %15, 1
  %33 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %14, i32 noundef %32) #8
  %34 = load i32, ptr %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %13, label %36

36:                                               ; preds = %13
  %37 = load i32, ptr %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %43 = load ptr, ptr %42, align 4
  tail call void %41(ptr noundef %43, i32 noundef %37) #8
  br label %44

44:                                               ; preds = %39, %36, %3
  %45 = load i32, ptr %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 29
  %51 = load ptr, ptr %50, align 4
  tail call void %49(ptr noundef %51, i32 noundef %45) #8
  br label %52

52:                                               ; preds = %47, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_set_multiple_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @bgpio_set_multiple_single_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @bgpio_set_none(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %1, -1
  %11 = add i32 %9, %10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ %1, %3 ]
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %14
  store i32 %21, ptr %19, align 4
  br label %27

22:                                               ; preds = %12
  %23 = xor i32 %14, -1
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 35
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %26, %22 ], [ %21, %18 ]
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  tail call void %30(ptr noundef %32, i32 noundef %28) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_set_multiple(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @bgpio_set_multiple_single_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_get_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %1, -1
  %10 = add i32 %8, %9
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ %1, %2 ]
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %22 = select i1 %17, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %19(ptr noundef %23) #8
  %25 = lshr i32 %24, %12
  %26 = and i32 %25, 1
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_get_set_multiple(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, %5
  store i32 %7, ptr %2, align 4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = xor i32 %10, -1
  %13 = and i32 %8, %12
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %17(ptr noundef %19) #8
  %21 = and i32 %20, %11
  %22 = load i32, ptr %2, align 4
  %23 = or i32 %22, %21
  store i32 %23, ptr %2, align 4
  br label %24

24:                                               ; preds = %15, %3
  %25 = icmp eq i32 %13, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %28(ptr noundef %30) #8
  %32 = and i32 %31, %13
  %33 = load i32, ptr %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %26, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_get(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %4(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %1, -1
  %15 = add i32 %13, %14
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %15, %11 ], [ %1, %2 ]
  %18 = lshr i32 %7, %17
  %19 = and i32 %18, 1
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_get_multiple_be(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = load i32, ptr %1, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, %6
  store i32 %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %11, i32 noundef 0) #8
  %13 = load i16, ptr %9, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  br label %19

19:                                               ; preds = %29, %16
  %20 = phi i32 [ %14, %16 ], [ %36, %29 ]
  %21 = phi i32 [ %12, %16 ], [ %34, %29 ]
  %22 = phi i32 [ 0, %16 ], [ %32, %29 ]
  %23 = load i8, ptr %17, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %18, align 4
  %27 = xor i32 %21, -1
  %28 = add i32 %26, %27
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %28, %25 ], [ %21, %19 ]
  %31 = shl nuw i32 1, %30
  %32 = or i32 %31, %22
  %33 = add nsw i32 %21, 1
  %34 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %20, i32 noundef %33) #8
  %35 = load i16, ptr %9, align 4
  %36 = zext i16 %35 to i32
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %19, label %38

38:                                               ; preds = %29, %3
  %39 = phi i32 [ 0, %3 ], [ %32, %29 ]
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %41(ptr noundef %43) #8
  %45 = and i32 %44, %39
  store i32 %45, ptr %4, align 4
  %46 = load i16, ptr %9, align 4
  %47 = zext i16 %46 to i32
  %48 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %47, i32 noundef 0) #8
  %49 = load i16, ptr %9, align 4
  %50 = zext i16 %49 to i32
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %54 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  br label %55

55:                                               ; preds = %63, %52
  %56 = phi i32 [ %48, %52 ], [ %71, %63 ]
  %57 = load i8, ptr %53, align 4, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %54, align 4
  %61 = xor i32 %56, -1
  %62 = add i32 %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %62, %59 ], [ %56, %55 ]
  %65 = shl nuw i32 1, %64
  %66 = load i32, ptr %2, align 4
  %67 = or i32 %66, %65
  store i32 %67, ptr %2, align 4
  %68 = load i16, ptr %9, align 4
  %69 = zext i16 %68 to i32
  %70 = add nsw i32 %56, 1
  %71 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %69, i32 noundef %70) #8
  %72 = load i16, ptr %9, align 4
  %73 = zext i16 %72 to i32
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %55, label %75

75:                                               ; preds = %63, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_get_multiple(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, %5
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %9(ptr noundef %11) #8
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, %12
  %15 = load i32, ptr %2, align 4
  %16 = or i32 %15, %14
  store i32 %16, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bgpio_set_multiple_single_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %10, i32 noundef 0) #8
  %12 = load i32, ptr %9, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %12, %14 ], [ %37, %16 ]
  %18 = phi i32 [ %11, %14 ], [ %36, %16 ]
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr %2, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  %26 = load i8, ptr %15, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = xor i32 %18, -1
  %29 = add i32 %17, %28
  %30 = select i1 %27, i32 %18, i32 %29
  %31 = shl nuw i32 1, %30
  %32 = select i1 %25, ptr %6, ptr %5
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %31, %33
  store i32 %34, ptr %32, align 4
  %35 = add nsw i32 %18, 1
  %36 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %17, i32 noundef %35) #8
  %37 = load i32, ptr %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %16, label %39

39:                                               ; preds = %16
  %40 = load i32, ptr %5, align 4
  %41 = load i32, ptr %6, align 4
  %42 = xor i32 %41, -1
  br label %43

43:                                               ; preds = %39, %4
  %44 = phi i32 [ %42, %39 ], [ -1, %4 ]
  %45 = phi i32 [ %40, %39 ], [ 0, %4 ]
  %46 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 35
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, %45
  %49 = and i32 %48, %44
  store i32 %49, ptr %46, align 4
  %50 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %3, i32 noundef %49) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_read8(ptr noundef %0) #0 {
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %0) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_write8(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %3 = trunc i32 %1 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %0, i8 %3) #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_read16be(ptr noundef %0) #0 {
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #8, !srcloc !14
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_write16be(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %3 = trunc i32 %1 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %0, i16 %4) #8, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_read16(ptr noundef %0) #0 {
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %3 = zext i16 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_write16(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %3 = trunc i32 %1 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %0, i16 %3) #8, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_read32be(ptr noundef %0) #0 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !20
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_write32be(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %3) #8, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_read32(ptr noundef %0) #0 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bgpio_write32(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %1) #8, !srcloc !23
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_dir_out_dir_first(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %1, -1
  %13 = add i32 %11, %12
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %13, %9 ], [ %1, %3 ]
  %16 = shl nuw i32 1, %15
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %25 = load ptr, ptr %24, align 4
  %26 = xor i32 %19, -1
  tail call void %25(ptr noundef nonnull %21, i32 noundef %26) #8
  br label %27

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 30
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %17, align 4
  tail call void %33(ptr noundef nonnull %29, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %31, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %36 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_dir_out_val_first(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %1, -1
  %15 = add i32 %13, %14
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i32 [ %15, %11 ], [ %1, %3 ]
  %18 = shl nuw i32 1, %17
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %27 = load ptr, ptr %26, align 4
  %28 = xor i32 %21, -1
  tail call void %27(ptr noundef nonnull %23, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %25, %16
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 30
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %19, align 4
  tail call void %35(ptr noundef nonnull %31, i32 noundef %36) #8
  br label %37

37:                                               ; preds = %33, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_dir_in(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %1, -1
  %12 = add i32 %10, %11
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ %1, %2 ]
  %15 = shl nuw i32 1, %14
  %16 = xor i32 %15, -1
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %25 = load ptr, ptr %24, align 4
  %26 = xor i32 %19, -1
  tail call void %25(ptr noundef nonnull %21, i32 noundef %26) #8
  br label %27

27:                                               ; preds = %23, %13
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 30
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 25
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %17, align 4
  tail call void %33(ptr noundef nonnull %29, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %31, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_get_dir(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 32
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 36
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %1, -1
  %16 = add i32 %14, %15
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %16, %12 ], [ %1, %6 ]
  %19 = xor i32 %8, -1
  %20 = lshr i32 %19, %18
  %21 = and i32 %20, 1
  br label %65

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %24) #8
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %1, -1
  %37 = add i32 %35, %36
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i32 [ %37, %33 ], [ %1, %26 ]
  %40 = xor i32 %29, -1
  %41 = lshr i32 %40, %39
  %42 = and i32 %41, 1
  br label %65

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 31
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 24
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef nonnull %45) #8
  %51 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 26
  %52 = load i8, ptr %51, align 4, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 33
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %1, -1
  %58 = add i32 %56, %57
  br label %59

59:                                               ; preds = %54, %47
  %60 = phi i32 [ %58, %54 ], [ %1, %47 ]
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %50
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %43
  br label %65

65:                                               ; preds = %64, %59, %38, %17
  %66 = phi i32 [ 1, %64 ], [ %21, %17 ], [ %42, %38 ], [ 0, %59 ]
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bgpio_dir_out_err(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #5 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_simple_dir_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bgpio_simple_dir_in(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bgpio_pdev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @bgpio_of_match, ptr noundef %2) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bgpio_pdata, ptr %6, i32 0, i32 1
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %11) #8
  %13 = select i1 %12, i32 8, i32 0
  %14 = load ptr, ptr %10, align 8
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  %17 = or i32 %13, 32
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %30

20:                                               ; preds = %8, %5
  %21 = phi ptr [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %5 ]
  %22 = ptrtoint ptr %21 to i32
  br label %138

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.platform_device_id, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %23, %8
  %31 = phi i32 [ %29, %23 ], [ %18, %8 ]
  %32 = phi ptr [ %25, %23 ], [ %6, %8 ]
  %33 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %138, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %33, align 4
  %39 = add i32 %37, 1
  %40 = sub i32 %39, %38
  %41 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %41, align 4
  %47 = add i32 %45, 1
  %48 = sub i32 %47, %46
  %49 = icmp eq i32 %48, %40
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %41) #8
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %43
  %54 = phi ptr [ %51, %50 ], [ inttoptr (i32 -22 to ptr), %43 ]
  %55 = ptrtoint ptr %54 to i32
  br label %138

56:                                               ; preds = %50, %35
  %57 = phi ptr [ %51, %50 ], [ null, %35 ]
  %58 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %58, align 4
  %64 = add i32 %62, 1
  %65 = sub i32 %64, %63
  %66 = icmp eq i32 %65, %40
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %58) #8
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %60
  %71 = phi ptr [ %68, %67 ], [ inttoptr (i32 -22 to ptr), %60 ]
  %72 = ptrtoint ptr %71 to i32
  br label %138

73:                                               ; preds = %67, %56
  %74 = phi ptr [ %68, %67 ], [ null, %56 ]
  %75 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.resource, ptr %75, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %75, align 4
  %81 = add i32 %79, 1
  %82 = sub i32 %81, %80
  %83 = icmp eq i32 %82, %40
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %75) #8
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %77
  %88 = phi ptr [ %85, %84 ], [ inttoptr (i32 -22 to ptr), %77 ]
  %89 = ptrtoint ptr %88 to i32
  br label %138

90:                                               ; preds = %84, %73
  %91 = phi ptr [ %85, %84 ], [ null, %73 ]
  %92 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.5) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.resource, ptr %92, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %92, align 4
  %98 = add i32 %96, 1
  %99 = sub i32 %98, %97
  %100 = icmp eq i32 %99, %40
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %92) #8
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %107

104:                                              ; preds = %101, %94
  %105 = phi ptr [ %102, %101 ], [ inttoptr (i32 -22 to ptr), %94 ]
  %106 = ptrtoint ptr %105 to i32
  br label %138

107:                                              ; preds = %101, %90
  %108 = phi ptr [ %102, %101 ], [ null, %90 ]
  %109 = tail call fastcc ptr @bgpio_map(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %40)
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = ptrtoint ptr %109 to i32
  br label %138

113:                                              ; preds = %107
  %114 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 304, i32 noundef 3520) #8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %138, label %116

116:                                              ; preds = %113
  %117 = tail call i32 @bgpio_init(ptr noundef nonnull %114, ptr noundef %2, i32 noundef %40, ptr noundef %57, ptr noundef %74, ptr noundef %91, ptr noundef %108, ptr noundef %109, i32 noundef %31)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = icmp eq ptr %32, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %32, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store ptr %122, ptr %114, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = getelementptr inbounds %struct.bgpio_pdata, ptr %32, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.gpio_chip, ptr %114, i32 0, i32 19
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.bgpio_pdata, ptr %32, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = trunc i32 %130 to i16
  %134 = getelementptr inbounds %struct.gpio_chip, ptr %114, i32 0, i32 20
  store i16 %133, ptr %134, align 4
  br label %135

135:                                              ; preds = %132, %125, %119
  %136 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %114, ptr %136, align 8
  %137 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef nonnull %114, ptr noundef null, ptr noundef null, ptr noundef null) #8
  br label %138

138:                                              ; preds = %135, %116, %113, %111, %104, %87, %70, %53, %30, %20
  %139 = phi i32 [ %22, %20 ], [ %55, %53 ], [ %72, %70 ], [ %89, %87 ], [ %106, %104 ], [ %112, %111 ], [ %137, %135 ], [ -22, %30 ], [ -12, %113 ], [ %117, %116 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bgpio_map(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = add i32 %8, 1
  %11 = sub i32 %10, %9
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %14, ptr noundef nonnull %4) #8
  br label %16

16:                                               ; preds = %13, %6, %3
  %17 = phi ptr [ %15, %13 ], [ null, %3 ], [ inttoptr (i32 -22 to ptr), %6 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 2}
!10 = !{i64 2914741}
!11 = !{i64 2152364500}
!12 = !{i64 2152364283}
!13 = !{i64 2914346}
!14 = !{i64 2914123}
!15 = !{i64 2152366328}
!16 = !{i64 2152365864}
!17 = !{i64 2913923}
!18 = !{i64 2152365081}
!19 = !{i64 2152364672}
!20 = !{i64 2914961}
!21 = !{i64 2152366991}
!22 = !{i64 2152366527}
!23 = !{i64 2914543}
!24 = !{i64 2152365662}
!25 = !{i64 2152365253}
