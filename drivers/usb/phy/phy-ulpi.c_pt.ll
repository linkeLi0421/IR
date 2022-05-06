; ModuleID = '/llk/IR/drivers/usb/phy/phy-ulpi.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-ulpi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22otg_ulpi_create\22\09\09\09\09\09"
module asm "__kstrtabns_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_otg_ulpi_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_otg_ulpi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ulpi_info = type { i32, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy_io_ops = type { ptr, ptr }

@__kstrtab_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__ksymtab_otg_ulpi_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @otg_ulpi_create to i32), ptr @__kstrtab_otg_ulpi_create, ptr @__kstrtabns_otg_ulpi_create }, section "___ksymtab_gpl+otg_ulpi_create", align 4
@__kstrtab_devm_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_otg_ulpi_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_otg_ulpi_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_otg_ulpi_create to i32), ptr @__kstrtab_devm_otg_ulpi_create, ptr @__kstrtabns_devm_otg_ulpi_create }, section "___ksymtab_gpl+devm_otg_ulpi_create", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [5 x i8] c"ULPI\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\016ULPI transceiver vendor/product ID 0x%04x/0x%04x\0A\00", align 1
@ulpi_ids = internal unnamed_addr constant [5 x %struct.ulpi_info] [%struct.ulpi_info { i32 80483588, ptr @.str.3 }, %struct.ulpi_info { i32 69468166, ptr @.str.4 }, %struct.ulpi_info { i32 69468167, ptr @.str.5 }, %struct.ulpi_info { i32 69468169, ptr @.str.6 }, %struct.ulpi_info { i32 72422663, ptr @.str.7 }], align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\016Found %s ULPI transceiver.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NXP ISP1504\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SMSC USB331x\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SMSC USB3320\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SMSC USB334x\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"TI TUSB1210\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\013ULPI integrity check: failed!\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\016ULPI integrity check: passed.\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_devm_otg_ulpi_create, ptr @__ksymtab_otg_ulpi_create], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @otg_ulpi_create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 192) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 44) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #5
  br label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 1
  store ptr @.str, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 2
  store i32 %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 7
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 5
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 22
  store ptr @ulpi_init, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 2
  store ptr %4, ptr %17, align 8
  %18 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 6
  store ptr @ulpi_set_host, ptr %18, align 8
  %19 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 8
  store ptr @ulpi_set_vbus, ptr %19, align 8
  br label %20

20:                                               ; preds = %11, %10, %2
  %21 = phi ptr [ %4, %11 ], [ null, %10 ], [ null, %2 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_otg_ulpi_create(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 192, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 44, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 1
  store ptr @.str, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 2
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 7
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 5
  store ptr %7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 22
  store ptr @ulpi_init, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 2
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 6
  store ptr @ulpi_set_host, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 8
  store ptr @ulpi_set_vbus, ptr %18, align 4
  br label %19

19:                                               ; preds = %10, %9, %3
  %20 = phi ptr [ %4, %10 ], [ null, %9 ], [ null, %3 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_init(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 7
  br i1 %2, label %174, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %174, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %174, label %10

10:                                               ; preds = %7
  %11 = tail call i32 %8(ptr noundef nonnull %0, i32 noundef 3) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %174, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %174, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %174, label %19

19:                                               ; preds = %16
  %20 = tail call i32 %17(ptr noundef nonnull %0, i32 noundef 2) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %174, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %174, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %174, label %28

28:                                               ; preds = %25
  %29 = tail call i32 %26(ptr noundef nonnull %0, i32 noundef 1) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %174, label %31

31:                                               ; preds = %28
  %32 = shl i32 %11, 16
  %33 = shl i32 %20, 8
  %34 = or i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load ptr, ptr %3, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %174, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %36, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %174, label %41

41:                                               ; preds = %38
  %42 = tail call i32 %39(ptr noundef nonnull %0, i32 noundef 0) #5
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %174, label %44

44:                                               ; preds = %41
  %45 = shl i32 %35, 8
  %46 = or i32 %42, %45
  %47 = and i32 %46, 65535
  %48 = lshr i32 %46, 16
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %47, i32 noundef %48) #6
  %50 = shl i32 %46, 16
  %51 = or i32 %50, %48
  switch i32 %51, label %61 [
    i32 80483588, label %56
    i32 69468166, label %52
    i32 69468167, label %53
    i32 69468169, label %54
    i32 72422663, label %55
  ]

52:                                               ; preds = %44
  br label %56

53:                                               ; preds = %44
  br label %56

54:                                               ; preds = %44
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %54, %53, %52, %44
  %57 = phi i32 [ 0, %44 ], [ 1, %52 ], [ 2, %53 ], [ 3, %54 ], [ 4, %55 ]
  %58 = getelementptr [5 x %struct.ulpi_info], ptr @ulpi_ids, i32 0, i32 %57, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %59) #6
  br label %61

61:                                               ; preds = %56, %44
  %62 = load ptr, ptr %3, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %174, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %62, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %174, label %68

68:                                               ; preds = %64
  %69 = tail call i32 %66(ptr noundef nonnull %0, i32 noundef 85, i32 noundef 22) #5
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %174, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %3, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %174, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %72, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %174, label %77

77:                                               ; preds = %74
  %78 = tail call i32 %75(ptr noundef nonnull %0, i32 noundef 22) #5
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %174, label %80

80:                                               ; preds = %77
  %81 = icmp eq i32 %78, 85
  br i1 %81, label %82, label %103

82:                                               ; preds = %80
  %83 = load ptr, ptr %3, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %174, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %83, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %174, label %89

89:                                               ; preds = %85
  %90 = tail call i32 %87(ptr noundef nonnull %0, i32 noundef 170, i32 noundef 22) #5
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %174, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %3, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %174, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %93, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %174, label %98

98:                                               ; preds = %95
  %99 = tail call i32 %96(ptr noundef nonnull %0, i32 noundef 22) #5
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %174, label %101

101:                                              ; preds = %98
  %102 = icmp eq i32 %99, 170
  br i1 %102, label %105, label %103

103:                                              ; preds = %101, %80
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %174

105:                                              ; preds = %101
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  %107 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 135
  %110 = xor i32 %109, 6
  %111 = load ptr, ptr %3, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %174, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %111, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %174, label %117

117:                                              ; preds = %113
  %118 = tail call i32 %115(ptr noundef nonnull %0, i32 noundef %110, i32 noundef 10) #5
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %174

120:                                              ; preds = %117
  %121 = load i32, ptr %107, align 4
  %122 = lshr i32 %121, 8
  %123 = and i32 %122, 240
  %124 = load ptr, ptr %3, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %174, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %124, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %174, label %130

130:                                              ; preds = %126
  %131 = tail call i32 %128(ptr noundef nonnull %0, i32 noundef %123, i32 noundef 7) #5
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %130
  %134 = load i32, ptr %107, align 4
  %135 = and i32 %134, 65536
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = and i32 %134, 262144
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = and i32 %134, 524288
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 1, i32 3
  br label %144

144:                                              ; preds = %140, %137, %133
  %145 = phi i32 [ 0, %133 ], [ 2, %137 ], [ %143, %140 ]
  %146 = lshr i32 %134, 18
  %147 = and i32 %146, 4
  %148 = or i32 %145, %147
  %149 = and i32 %134, 4194304
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %144
  %152 = or i32 %148, 8
  br label %163

153:                                              ; preds = %144
  %154 = and i32 %134, 8388608
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = or i32 %148, 16
  br label %163

158:                                              ; preds = %153
  %159 = and i32 %134, 16777216
  %160 = icmp eq i32 %159, 0
  %161 = or i32 %148, 24
  %162 = select i1 %160, i32 %148, i32 %161
  br label %163

163:                                              ; preds = %158, %156, %151
  %164 = phi i32 [ %152, %151 ], [ %157, %156 ], [ %162, %158 ]
  %165 = or i32 %164, 64
  %166 = load ptr, ptr %3, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %166, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  %173 = tail call i32 %170(ptr noundef nonnull %0, i32 noundef %165, i32 noundef 4) #5
  br label %174

174:                                              ; preds = %172, %168, %163, %130, %126, %120, %117, %113, %105, %103, %98, %95, %92, %89, %85, %82, %77, %74, %71, %68, %64, %61, %41, %38, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %175 = phi i32 [ -19, %103 ], [ %118, %117 ], [ %131, %130 ], [ %173, %172 ], [ -22, %168 ], [ -22, %163 ], [ -22, %113 ], [ -22, %105 ], [ -22, %126 ], [ -22, %120 ], [ %99, %98 ], [ -22, %95 ], [ -22, %92 ], [ %90, %89 ], [ -22, %85 ], [ -22, %82 ], [ -22, %71 ], [ -22, %74 ], [ -22, %61 ], [ -22, %64 ], [ %78, %77 ], [ %69, %68 ], [ -22, %1 ], [ %11, %10 ], [ -22, %7 ], [ -22, %4 ], [ -22, %13 ], [ -22, %16 ], [ %20, %19 ], [ -22, %22 ], [ -22, %25 ], [ %29, %28 ], [ -22, %31 ], [ -22, %38 ], [ %42, %41 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_set_host(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef nonnull %4, i32 noundef 7) #5
  %15 = and i32 %14, -8
  br label %16

16:                                               ; preds = %13, %10, %6, %2
  %17 = phi i32 [ %15, %13 ], [ -24, %10 ], [ -24, %6 ], [ -24, %2 ]
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 3
  br i1 %18, label %20, label %21

20:                                               ; preds = %16
  store ptr null, ptr %19, align 4
  br label %49

21:                                               ; preds = %16
  store ptr %1, ptr %19, align 4
  %22 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = or i32 %17, 1
  br label %37

28:                                               ; preds = %21
  %29 = and i32 %23, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = or i32 %17, 2
  br label %37

33:                                               ; preds = %28
  %34 = lshr i32 %23, 8
  %35 = and i32 %34, 4
  %36 = or i32 %35, %17
  br label %37

37:                                               ; preds = %33, %31, %26
  %38 = phi i32 [ %27, %26 ], [ %32, %31 ], [ %36, %33 ]
  br i1 %5, label %49, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef nonnull %4, i32 noundef %38, i32 noundef 7) #5
  br label %49

49:                                               ; preds = %47, %43, %39, %37, %20
  %50 = phi i32 [ 0, %20 ], [ %48, %47 ], [ -22, %43 ], [ -22, %39 ], [ -22, %37 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_set_vbus(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef nonnull %4, i32 noundef 10) #5
  %15 = and i32 %14, -97
  br label %16

16:                                               ; preds = %13, %10, %6, %2
  %17 = phi i32 [ %15, %13 ], [ -118, %10 ], [ -118, %6 ], [ -118, %2 ]
  br i1 %1, label %18, label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 32
  %22 = or i32 %21, %17
  %23 = and i32 %20, 64
  %24 = or i32 %22, %23
  br label %25

25:                                               ; preds = %18, %16
  %26 = phi i32 [ %17, %16 ], [ %24, %18 ]
  br i1 %5, label %37, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef nonnull %4, i32 noundef %26, i32 noundef 10) #5
  br label %37

37:                                               ; preds = %35, %31, %27, %25
  %38 = phi i32 [ %36, %35 ], [ -22, %31 ], [ -22, %27 ], [ -22, %25 ]
  ret i32 %38
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
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
