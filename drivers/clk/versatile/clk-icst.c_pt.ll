; ModuleID = '/llk/IR/drivers/clk/versatile/clk-icst.c_pt.bc'
source_filename = "../drivers/clk/versatile/clk-icst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_clk_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_clk_setup\22\09\09\09\09\09"
module asm "__kstrtabns_icst_clk_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_clk_register\22\09\09\09\09\09"
module asm "__kstrtabns_icst_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_icst = type { %struct.clk_hw, ptr, i32, i32, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_icst_desc = type { ptr, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@icst_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icst_recalc_rate, ptr @icst_round_rate, ptr null, ptr null, ptr null, ptr @icst_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_icst_clk_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_clk_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_clk_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_clk_setup to i32), ptr @__kstrtab_icst_clk_setup, ptr @__kstrtabns_icst_clk_setup }, section "___ksymtab_gpl+icst_clk_setup", align 4
@.str = private unnamed_addr constant [36 x i8] c"\013could not initialize ICST regmap\0A\00", align 1
@__kstrtab_icst_clk_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_clk_register = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_clk_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_clk_register to i32), ptr @__kstrtab_icst_clk_register, ptr @__kstrtabns_icst_clk_register }, section "___ksymtab_gpl+icst_clk_register", align 4
@__of_table_arm_syscon_icst525_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_icst307_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst307\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorap_cm_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorap-cm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorap_sys_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorap-sys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorap_pci_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorap-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorcp_cm_core_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorcp-cm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@__of_table_arm_syscon_integratorcp_cm_mem_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,syscon-icst525-integratorcp-cm-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_syscon_icst_setup }, section "__clk_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013ICST: could not get VCO setting\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013ICST: cannot set PCI frequency %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013ICST error: tried to set bit 8 of VDW\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\013ICST error: tried to use VOD != 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\013ICST error: tried to use RDW != 22\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013no parent node for syscon ICST clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\013no regmap for syscon ICST clock parent\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"vco-offset\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\013no VCO register offset for ICST clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"lock-offset\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\013no lock register offset for ICST clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"arm,syscon-icst525\00", align 1
@icst525_params = internal constant %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 8, i16 263, i8 3, i8 65, ptr @icst525_s2div, ptr @icst525_idx2s }, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"arm,syscon-icst307\00", align 1
@icst307_params = internal constant %struct.icst_params { i32 0, i32 200000000, i32 6000000, i16 12, i16 519, i8 3, i8 -127, ptr @icst307_s2div, ptr @icst307_idx2s }, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"arm,syscon-icst525-integratorap-cm\00", align 1
@icst525_apcp_cm_params = internal constant %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 12, i16 192, i8 24, i8 24, ptr @icst525_s2div, ptr @icst525_idx2s }, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"arm,syscon-icst525-integratorap-sys\00", align 1
@icst525_ap_sys_params = internal constant %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 3, i16 50, i8 48, i8 48, ptr @icst525_s2div, ptr @icst525_idx2s }, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"arm,syscon-icst525-integratorap-pci\00", align 1
@icst525_ap_pci_params = internal constant %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 25, i16 33, i8 16, i8 24, ptr @icst525_s2div, ptr @icst525_idx2s }, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"arm,syscon-icst525-integratorcp-cm-core\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"arm,syscon-icst525-integratorcp-cm-mem\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\013unknown ICST clock %pOF\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%pOFP\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\013error setting up syscon ICST clock %s\0A\00", align 1
@icst525_s2div = external dso_local constant [0 x i8], align 1
@icst525_idx2s = external dso_local constant [0 x i8], align 1
@icst307_s2div = external dso_local constant [0 x i8], align 1
@icst307_idx2s = external dso_local constant [0 x i8], align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_icst_clk_register, ptr @__ksymtab_icst_clk_setup, ptr @__of_table_arm_syscon_icst307_clk, ptr @__of_table_arm_syscon_icst525_clk, ptr @__of_table_arm_syscon_integratorap_cm_clk, ptr @__of_table_arm_syscon_integratorap_pci_clk, ptr @__of_table_arm_syscon_integratorap_sys_clk, ptr @__of_table_arm_syscon_integratorcp_cm_core_clk, ptr @__of_table_arm_syscon_integratorcp_cm_mem_clk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @icst_clk_setup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #7
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %1, align 4
  %15 = tail call ptr @kmemdup(ptr noundef %14, i32 noundef 28, i32 noundef 3264) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #7
  br label %40

18:                                               ; preds = %13
  store ptr %2, ptr %8, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @icst_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %20, align 4
  %21 = icmp eq ptr %3, null
  %22 = select i1 %21, ptr null, ptr %7
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ne ptr %3, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_icst, ptr %11, i32 0, i32 1
  store ptr %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_icst, ptr %11, i32 0, i32 4
  store ptr %15, ptr %29, align 8
  %30 = getelementptr inbounds %struct.clk_icst_desc, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.clk_icst, ptr %11, i32 0, i32 2
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clk_icst_desc, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clk_icst, ptr %11, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_icst, ptr %11, i32 0, i32 6
  store i32 %5, ptr %36, align 8
  %37 = call ptr @clk_register(ptr noundef %0, ptr noundef nonnull %11) #7
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %15) #7
  call void @kfree(ptr noundef nonnull %11) #7
  br label %40

40:                                               ; preds = %39, %18, %17, %6
  %41 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %37, %39 ], [ %37, %18 ], [ inttoptr (i32 -12 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #7
  ret ptr %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @icst_clk_register(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.regmap_config, align 4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %6, i8 0, i32 172, i1 false)
  %7 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %6, i32 0, i32 1
  store i32 32, ptr %7, align 4
  %8 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %6, i32 0, i32 2
  store i32 4, ptr %8, align 4
  %9 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %6, i32 0, i32 4
  store i32 32, ptr %9, align 4
  %10 = call ptr @__regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %4, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %16

14:                                               ; preds = %5
  %15 = call ptr @icst_clk_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %10, i32 noundef 0)
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %10, %12 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %6) #7
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_syscon_icst_setup(ptr noundef %0) #5 section ".init.text" {
  %2 = alloca %struct.clk_icst_desc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %67

7:                                                ; preds = %1
  %8 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %3) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %67

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.clk_icst_desc, ptr %2, i32 0, i32 1
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %13, i32 noundef 1, i32 noundef 0) #7
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %13, i32 noundef 1, i32 noundef 0) #7
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %67

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.clk_icst_desc, ptr %2, i32 0, i32 2
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %22, i32 noundef 1, i32 noundef 0) #7
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %67

27:                                               ; preds = %21
  %28 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store ptr @icst525_params, ptr %2, align 4
  br label %57

31:                                               ; preds = %27
  %32 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.14) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store ptr @icst307_params, ptr %2, align 4
  br label %57

35:                                               ; preds = %31
  %36 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.15) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store ptr @icst525_apcp_cm_params, ptr %2, align 4
  br label %57

39:                                               ; preds = %35
  %40 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.16) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store ptr @icst525_ap_sys_params, ptr %2, align 4
  br label %57

43:                                               ; preds = %39
  %44 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.17) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store ptr @icst525_ap_pci_params, ptr %2, align 4
  br label %57

47:                                               ; preds = %43
  %48 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store ptr @icst525_apcp_cm_params, ptr %2, align 4
  br label %57

51:                                               ; preds = %47
  %52 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.19) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store ptr @icst525_apcp_cm_params, ptr %2, align 4
  br label %57

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %0) #9
  br label %67

57:                                               ; preds = %54, %50, %46, %42, %38, %34, %30
  %58 = phi i32 [ 0, %30 ], [ 0, %34 ], [ 1, %38 ], [ 2, %42 ], [ 3, %46 ], [ 4, %50 ], [ 5, %54 ]
  %59 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #7
  %60 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %0) #7
  %61 = call ptr @icst_clk_setup(ptr noundef null, ptr noundef nonnull %2, ptr noundef %60, ptr noundef %59, ptr noundef %8, i32 noundef %58)
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %60) #9
  call void @kfree(ptr noundef %60) #7
  br label %67

65:                                               ; preds = %57
  %66 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %61) #7
  br label %67

67:                                               ; preds = %65, %63, %55, %25, %19, %10, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icst_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %41 [
    i32 1, label %18
    i32 2, label %21
    i32 3, label %24
    i32 4, label %30
    i32 5, label %35
  ]

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 255
  br label %50

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4
  %23 = and i32 %22, 255
  br label %50

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 14, i32 17
  %29 = select i1 %27, i32 14, i32 22
  br label %50

30:                                               ; preds = %15
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 255
  %33 = lshr i32 %31, 8
  %34 = and i32 %33, 7
  br label %50

35:                                               ; preds = %15
  %36 = load i32, ptr %3, align 4
  %37 = lshr i32 %36, 12
  %38 = and i32 %37, 255
  %39 = lshr i32 %36, 20
  %40 = and i32 %39, 7
  br label %50

41:                                               ; preds = %15
  %42 = load i32, ptr %3, align 4
  %43 = and i32 %42, 511
  %44 = lshr i32 %42, 9
  %45 = and i32 %44, 127
  %46 = lshr i32 %42, 16
  %47 = and i32 %46, 3
  br label %50

48:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %63

50:                                               ; preds = %41, %35, %30, %24, %21, %18
  %51 = phi i32 [ 1, %18 ], [ 3, %21 ], [ 1, %24 ], [ %34, %30 ], [ %40, %35 ], [ %47, %41 ]
  %52 = phi i32 [ 22, %18 ], [ 46, %21 ], [ %29, %24 ], [ 22, %30 ], [ 22, %35 ], [ %45, %41 ]
  %53 = phi i32 [ %20, %18 ], [ %23, %21 ], [ %28, %24 ], [ %32, %30 ], [ %38, %35 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %54 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = shl nuw nsw i32 %51, 24
  %57 = shl nuw nsw i32 %52, 16
  %58 = or i32 %57, %56
  %59 = or i32 %58, %53
  %60 = insertvalue [1 x i32] poison, i32 %59, 0
  %61 = call i32 @icst_hz(ptr noundef %55, [1 x i32] %60) #7
  %62 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %50, %48
  %64 = phi i32 [ 0, %48 ], [ %61, %50 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icst_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %33 [
    i32 1, label %6
    i32 4, label %6
    i32 5, label %14
    i32 2, label %22
    i32 3, label %30
  ]

6:                                                ; preds = %3, %3
  %7 = icmp ult i32 %1, 12000001
  br i1 %7, label %40, label %8

8:                                                ; preds = %6
  %9 = icmp ugt i32 %1, 159999999
  br i1 %9, label %40, label %10

10:                                               ; preds = %8
  %11 = add nuw nsw i32 %1, 500000
  %12 = urem i32 %11, 1000000
  %13 = sub nuw nsw i32 %11, %12
  br label %40

14:                                               ; preds = %3
  %15 = icmp ult i32 %1, 6000001
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i32 %1, 65999999
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  %19 = add nuw nsw i32 %1, 250000
  %20 = urem i32 %19, 500000
  %21 = sub nuw nsw i32 %19, %20
  br label %40

22:                                               ; preds = %3
  %23 = icmp ult i32 %1, 3000001
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = icmp ugt i32 %1, 49999999
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = add nuw nsw i32 %1, 125000
  %28 = urem i32 %27, 250000
  %29 = sub nuw nsw i32 %27, %28
  br label %40

30:                                               ; preds = %3
  %31 = icmp ult i32 %1, 29000000
  %32 = select i1 %31, i32 25000000, i32 33000000
  br label %40

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @icst_hz_to_vco(ptr noundef %35, i32 noundef %1) #7
  %37 = load ptr, ptr %34, align 4
  %38 = insertvalue [1 x i32] poison, i32 %36, 0
  %39 = tail call i32 @icst_hz(ptr noundef %37, [1 x i32] %38) #7
  br label %40

40:                                               ; preds = %33, %30, %26, %24, %22, %18, %16, %14, %10, %8, %6
  %41 = phi i32 [ %13, %10 ], [ %21, %18 ], [ %29, %26 ], [ %39, %33 ], [ 12000000, %6 ], [ 160000000, %8 ], [ 6000000, %14 ], [ 66000000, %16 ], [ 3000000, %22 ], [ 5000000, %24 ], [ %32, %30 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icst_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  switch i32 %1, label %9 [
    i32 25000000, label %11
    i32 33000000, label %8
  ]

8:                                                ; preds = %7
  br label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %127

11:                                               ; preds = %8, %7
  %12 = phi i32 [ 256, %8 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %16, i32 noundef 41055) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %127

19:                                               ; preds = %11
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef 256, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %127

25:                                               ; preds = %19
  %26 = load ptr, ptr %13, align 4
  %27 = load i32, ptr %15, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %27, i32 noundef 0) #7
  br label %127

29:                                               ; preds = %3
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  store i32 %2, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @icst_hz_to_vco(ptr noundef %36, i32 noundef %1) #7
  %38 = load ptr, ptr %35, align 4
  %39 = insertvalue [1 x i32] poison, i32 %37, 0
  %40 = tail call i32 @icst_hz(ptr noundef %38, [1 x i32] %39) #7
  %41 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = lshr i32 %37, 24
  %43 = load i32, ptr %4, align 4
  switch i32 %43, label %101 [
    i32 1, label %44
    i32 2, label %59
    i32 4, label %74
    i32 5, label %87
  ]

44:                                               ; preds = %34
  %45 = and i32 %37, 255
  %46 = and i32 %37, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %50

50:                                               ; preds = %48, %44
  %51 = icmp eq i32 %42, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %54

54:                                               ; preds = %52, %50
  %55 = and i32 %37, 16711680
  %56 = icmp eq i32 %55, 1441792
  br i1 %56, label %108, label %57

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %108

59:                                               ; preds = %34
  %60 = and i32 %37, 255
  %61 = and i32 %37, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %65

65:                                               ; preds = %63, %59
  %66 = icmp eq i32 %42, 3
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %69

69:                                               ; preds = %67, %65
  %70 = and i32 %37, 16711680
  %71 = icmp eq i32 %70, 3014656
  br i1 %71, label %108, label %72

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %108

74:                                               ; preds = %34
  %75 = and i32 %37, 255
  %76 = shl nuw nsw i32 %42, 8
  %77 = or i32 %76, %75
  %78 = and i32 %37, 256
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %82

82:                                               ; preds = %80, %74
  %83 = and i32 %37, 16711680
  %84 = icmp eq i32 %83, 1441792
  br i1 %84, label %108, label %85

85:                                               ; preds = %82
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %108

87:                                               ; preds = %34
  %88 = shl i32 %37, 12
  %89 = and i32 %88, 1044480
  %90 = shl nuw nsw i32 %42, 20
  %91 = or i32 %89, %90
  %92 = and i32 %37, 256
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %96

96:                                               ; preds = %94, %87
  %97 = and i32 %37, 16711680
  %98 = icmp eq i32 %97, 1441792
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %108

101:                                              ; preds = %34
  %102 = and i32 %37, 65535
  %103 = lshr i32 %37, 7
  %104 = and i32 %103, 130560
  %105 = or i32 %104, %102
  %106 = shl nuw nsw i32 %42, 16
  %107 = or i32 %105, %106
  br label %108

108:                                              ; preds = %101, %99, %96, %85, %82, %72, %69, %57, %54
  %109 = phi i32 [ %107, %101 ], [ %91, %99 ], [ %91, %96 ], [ %77, %85 ], [ %77, %82 ], [ %60, %72 ], [ %60, %69 ], [ %45, %57 ], [ %45, %54 ]
  %110 = phi i32 [ 524287, %101 ], [ 8384512, %99 ], [ 8384512, %96 ], [ 2047, %85 ], [ 2047, %82 ], [ 255, %72 ], [ 255, %69 ], [ 255, %57 ], [ 255, %54 ]
  %111 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @regmap_write(ptr noundef %112, i32 noundef %114, i32 noundef 41055) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = load ptr, ptr %111, align 4
  %119 = getelementptr inbounds %struct.clk_icst, ptr %0, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef %120, i32 noundef %110, i32 noundef %109, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load ptr, ptr %111, align 4
  %125 = load i32, ptr %113, align 4
  %126 = tail call i32 @regmap_write(ptr noundef %124, i32 noundef %125, i32 noundef 0) #7
  br label %127

127:                                              ; preds = %123, %117, %108, %25, %19, %11, %9
  %128 = phi i32 [ -22, %9 ], [ %17, %11 ], [ %23, %19 ], [ %28, %25 ], [ %115, %108 ], [ %121, %117 ], [ %126, %123 ]
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icst_hz(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icst_hz_to_vco(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
