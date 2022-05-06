; ModuleID = '/llk/IR/drivers/bus/uniphier-system-bus.c_pt.bc'
source_filename = "../drivers/bus/uniphier-system-bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_system_bus_priv = type { ptr, ptr, [8 x %struct.uniphier_system_bus_bank] }
%struct.uniphier_system_bus_bank = type { i32, i32 }

@__initcall__kmod_uniphier_system_bus__162_279_uniphier_system_bus_driver_init6 = internal global ptr @uniphier_system_bus_driver_init, section ".initcall6.init", align 4
@uniphier_system_bus_driver = internal global %struct.platform_driver { ptr @uniphier_system_bus_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_system_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_system_bus_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_system_bus_driver_exit = internal global ptr @uniphier_system_bus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [75 x i8] c"uniphier_system_bus.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [59 x i8] c"uniphier_system_bus.description=UniPhier System Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [57 x i8] c"uniphier_system_bus.file=drivers/bus/uniphier-system-bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [32 x i8] c"uniphier_system_bus.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"uniphier-system-bus\00", align 1
@uniphier_system_bus_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-system-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_system_bus_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @uniphier_system_bus_resume, ptr null, ptr @uniphier_system_bus_resume, ptr null, ptr @uniphier_system_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get #address-cells\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#address-cells must be 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get #size-cells\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"#size-cells must be 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get ranges property\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"unsupported bank number %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"range for bank %d has already been specified\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"base address %llx is too high\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"base %08x cannot be mapped to %08llx of parent\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"end address %08llx is too high\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"region overlap between bank%d and bank%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_uniphier_system_bus_driver_exit, ptr @__initcall__kmod_uniphier_system_bus__162_279_uniphier_system_bus_driver_init6, ptr @uniphier_system_bus_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_system_bus_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_system_bus_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_system_bus_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_system_bus_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_system_bus_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 72, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %176, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %9 = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  br label %176

13:                                               ; preds = %7
  store ptr %4, ptr %5, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @of_n_addr_cells(ptr noundef %15) #6
  %17 = load ptr, ptr %14, align 8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %176

21:                                               ; preds = %13
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  br label %176

25:                                               ; preds = %21
  %26 = load ptr, ptr %14, align 8
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #7
  br label %176

30:                                               ; preds = %25
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  br label %176

34:                                               ; preds = %30
  %35 = load ptr, ptr %14, align 8
  %36 = call ptr @of_get_property(ptr noundef %35, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  br label %176

39:                                               ; preds = %34
  %40 = load i32, ptr %3, align 4
  %41 = lshr i32 %40, 2
  store i32 %41, ptr %3, align 4
  %42 = add i32 %16, 2
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %111, label %44

44:                                               ; preds = %90, %39
  %45 = phi ptr [ %107, %90 ], [ %36, %39 ]
  %46 = getelementptr i32, ptr %45, i32 1
  %47 = load i32, ptr %45, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #6
  %49 = getelementptr i32, ptr %45, i32 2
  %50 = load i32, ptr %46, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #6
  %52 = load ptr, ptr %14, align 8
  %53 = call i64 @of_translate_address(ptr noundef %52, ptr noundef %49) #6
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %176, label %55

55:                                               ; preds = %44
  %56 = getelementptr i32, ptr %49, i32 %16
  %57 = load i32, ptr %56, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #6
  %59 = icmp ugt i32 %48, 7
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.9, i32 noundef %48) #7
  br label %176

62:                                               ; preds = %55
  %63 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %48
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %48, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66, %62
  %71 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.10, i32 noundef %48) #7
  br label %176

72:                                               ; preds = %66
  %73 = icmp ugt i64 %53, 4294967295
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.11, i64 noundef %53) #7
  br label %176

76:                                               ; preds = %72
  %77 = zext i32 %51 to i64
  %78 = icmp ult i64 %53, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.12, i32 noundef %51, i64 noundef %53) #7
  br label %176

81:                                               ; preds = %76
  %82 = zext i32 %58 to i64
  %83 = add nsw i64 %53, -1
  %84 = add nsw i64 %83, %82
  %85 = or i64 %84, 131071
  %86 = add i64 %85, 1
  %87 = icmp ugt i64 %86, 4294967295
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.13, i64 noundef %86) #7
  br label %176

90:                                               ; preds = %81
  %91 = sub nsw i64 %53, %77
  %92 = and i64 %91, -131072
  %93 = xor i64 %85, %92
  %94 = trunc i64 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = call i32 @llvm.ctlz.i32(i32 %95, i1 true) #6, !range !9
  %97 = sub nuw nsw i32 32, %96
  %98 = shl nuw i32 1, %97
  %99 = zext i32 %98 to i64
  %100 = add nuw nsw i64 %99, 4294967295
  %101 = sub nsw i64 0, %99
  %102 = and i64 %92, %101
  %103 = or i64 %100, %85
  %104 = trunc i64 %102 to i32
  store i32 %104, ptr %63, align 4
  %105 = trunc i64 %103 to i32
  %106 = add i32 %105, 1
  store i32 %106, ptr %67, align 4
  %107 = getelementptr i32, ptr %56, i32 1
  %108 = load i32, ptr %3, align 4
  %109 = sub i32 %108, %42
  store i32 %109, ptr %3, align 4
  %110 = icmp slt i32 %109, %42
  br i1 %110, label %111, label %44

111:                                              ; preds = %90, %39
  br label %114

112:                                              ; preds = %132, %114
  %113 = icmp eq i32 %116, 8
  br i1 %113, label %137, label %114

114:                                              ; preds = %112, %111
  %115 = phi i32 [ %116, %112 ], [ 0, %111 ]
  %116 = add nuw nsw i32 %115, 1
  %117 = icmp ult i32 %115, 7
  br i1 %117, label %118, label %112

118:                                              ; preds = %114
  %119 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %115, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %115
  br label %122

122:                                              ; preds = %132, %118
  %123 = phi i32 [ %116, %118 ], [ %133, %132 ]
  %124 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %120, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, ptr %121, align 4
  %129 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %123, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %127, %122
  %133 = add nuw nsw i32 %123, 1
  %134 = icmp eq i32 %133, 8
  br i1 %134, label %112, label %122

135:                                              ; preds = %127
  %136 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.14, i32 noundef %115, i32 noundef %123) #7
  br label %176

137:                                              ; preds = %112
  %138 = load ptr, ptr %9, align 4
  %139 = getelementptr i8, ptr %138, i32 256
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 1
  %147 = load i64, ptr %146, align 4
  store i64 %147, ptr %144, align 4
  store i64 %145, ptr %146, align 4
  br label %148

148:                                              ; preds = %143, %137
  br label %149

149:                                              ; preds = %166, %148
  %150 = phi i32 [ %170, %166 ], [ 0, %148 ]
  %151 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %150
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr %struct.uniphier_system_bus_priv, ptr %5, i32 0, i32 2, i32 %150, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = icmp ult i32 %150, 2
  %158 = sext i1 %157 to i32
  br label %166

159:                                              ; preds = %149
  %160 = and i32 %152, -131072
  %161 = sub i32 0, %154
  %162 = xor i32 %152, %161
  %163 = lshr i32 %162, 16
  %164 = or i32 %160, %163
  %165 = or i32 %164, 1
  br label %166

166:                                              ; preds = %159, %156
  %167 = phi i32 [ %165, %159 ], [ %158, %156 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  %168 = shl nuw nsw i32 %150, 4
  %169 = getelementptr i8, ptr %139, i32 %168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #6, !srcloc !13
  %170 = add nuw nsw i32 %150, 1
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %172, label %149

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %173, align 8
  %174 = load ptr, ptr %14, align 8
  %175 = call i32 @of_platform_default_populate(ptr noundef %174, ptr noundef null, ptr noundef %4) #6
  br label %176

176:                                              ; preds = %172, %135, %88, %79, %74, %70, %60, %44, %38, %33, %29, %24, %20, %11, %1
  %177 = phi i32 [ %12, %11 ], [ %18, %20 ], [ -22, %24 ], [ %27, %29 ], [ -22, %33 ], [ %175, %172 ], [ -2, %38 ], [ -12, %1 ], [ -22, %135 ], [ -22, %60 ], [ -22, %70 ], [ -22, %74 ], [ -22, %79 ], [ -22, %88 ], [ -22, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %177
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_system_bus_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_system_bus_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 256
  br label %7

7:                                                ; preds = %24, %1
  %8 = phi i32 [ 0, %1 ], [ %28, %24 ]
  %9 = getelementptr %struct.uniphier_system_bus_priv, ptr %3, i32 0, i32 2, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.uniphier_system_bus_priv, ptr %3, i32 0, i32 2, i32 %8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = icmp ult i32 %8, 2
  %16 = sext i1 %15 to i32
  br label %24

17:                                               ; preds = %7
  %18 = and i32 %10, -131072
  %19 = sub i32 0, %12
  %20 = xor i32 %10, %19
  %21 = lshr i32 %20, 16
  %22 = or i32 %18, %21
  %23 = or i32 %22, 1
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i32 [ %23, %17 ], [ %16, %14 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %26 = shl nuw nsw i32 %8, 4
  %27 = getelementptr i8, ptr %6, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !13
  %28 = add nuw nsw i32 %8, 1
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %7

30:                                               ; preds = %24
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
!10 = !{i64 366961}
!11 = !{i64 2151348533}
!12 = !{i64 2151350572}
!13 = !{i64 366543}
