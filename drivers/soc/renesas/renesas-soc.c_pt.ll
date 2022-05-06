; ModuleID = '/llk/IR/drivers/soc/renesas/renesas-soc.c_pt.bc'
source_filename = "../drivers/soc/renesas/renesas-soc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.renesas_id = type { i32, i32 }
%struct.renesas_soc = type { ptr, i32 }
%struct.renesas_family = type { [16 x i8], i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_renesas_soc__166_457_renesas_soc_initearly = internal global ptr @renesas_soc_init, section ".initcallearly.init", align 4
@renesas_socs = internal constant [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_a1h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_a2m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rmobile_ape6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rmobile_a1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1n }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1e }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rz_g1c }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_m1a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_h1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_h2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_m2_w }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_v2h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_m2_n }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_rcar_e2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_shmobile_ag5 }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@renesas_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,bsid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @id_bsid }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r9a07g044-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @id_rzg2l }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,prr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @id_prr }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@id_prr = internal constant %struct.renesas_id { i32 0, i32 65280 }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [33 x i8] c"\014SoC mismatch (product = 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ES%u.%u\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\016Detected Renesas %s %s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@soc_rz_a1h = internal constant %struct.renesas_soc { ptr @fam_rza1, i32 0 }, section ".init.rodata", align 4
@soc_rz_a2m = internal constant %struct.renesas_soc { ptr @fam_rza2, i32 59 }, section ".init.rodata", align 4
@soc_rmobile_ape6 = internal constant %struct.renesas_soc { ptr @fam_rmobile, i32 63 }, section ".init.rodata", align 4
@soc_rmobile_a1 = internal constant %struct.renesas_soc { ptr @fam_rmobile, i32 64 }, section ".init.rodata", align 4
@soc_rz_g1h = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 69 }, section ".init.rodata", align 4
@soc_rz_g1m = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 71 }, section ".init.rodata", align 4
@soc_rz_g1n = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 75 }, section ".init.rodata", align 4
@soc_rz_g1e = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 76 }, section ".init.rodata", align 4
@soc_rz_g1c = internal constant %struct.renesas_soc { ptr @fam_rzg1, i32 83 }, section ".init.rodata", align 4
@soc_rcar_m1a = internal constant %struct.renesas_soc { ptr @fam_rcar_gen1, i32 0 }, section ".init.rodata", align 4
@soc_rcar_h1 = internal constant %struct.renesas_soc { ptr @fam_rcar_gen1, i32 59 }, section ".init.rodata", align 4
@soc_rcar_h2 = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 69 }, section ".init.rodata", align 4
@soc_rcar_m2_w = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 71 }, section ".init.rodata", align 4
@soc_rcar_v2h = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 74 }, section ".init.rodata", align 4
@soc_rcar_m2_n = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 75 }, section ".init.rodata", align 4
@soc_rcar_e2 = internal constant %struct.renesas_soc { ptr @fam_rcar_gen2, i32 76 }, section ".init.rodata", align 4
@soc_shmobile_ag5 = internal constant %struct.renesas_soc { ptr @fam_shmobile, i32 55 }, section ".init.rodata", align 4
@fam_rza1 = internal constant %struct.renesas_family { [16 x i8] c"RZ/A1\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, section ".init.rodata", align 4
@fam_rza2 = internal constant %struct.renesas_family { [16 x i8] c"RZ/A2\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, section ".init.rodata", align 4
@fam_rmobile = internal constant %struct.renesas_family { [16 x i8] c"R-Mobile\00\00\00\00\00\00\00\00", i32 -436203492 }, section ".init.rodata", align 4
@fam_rzg1 = internal constant %struct.renesas_family { [16 x i8] c"RZ/G1\00\00\00\00\00\00\00\00\00\00\00", i32 -16777148 }, section ".init.rodata", align 4
@fam_rcar_gen1 = internal constant %struct.renesas_family { [16 x i8] c"R-Car Gen1\00\00\00\00\00\00", i32 -16777148 }, section ".init.rodata", align 4
@fam_rcar_gen2 = internal constant %struct.renesas_family { [16 x i8] c"R-Car Gen2\00\00\00\00\00\00", i32 -16777148 }, section ".init.rodata", align 4
@fam_shmobile = internal constant %struct.renesas_family { [16 x i8] c"SH-Mobile\00\00\00\00\00\00\00", i32 -436203492 }, section ".init.rodata", align 4
@id_bsid = internal constant %struct.renesas_id { i32 0, i32 16711680 }, section ".init.rodata", align 4
@id_rzg2l = internal constant %struct.renesas_id { i32 2564, i32 268435455 }, section ".init.rodata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_renesas_soc__166_457_renesas_soc_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @renesas_soc_init() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  %2 = load ptr, ptr @of_root, align 4
  %3 = tail call ptr @of_match_node(ptr noundef nonnull @renesas_socs, ptr noundef %2) #7
  store ptr %3, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 2
  %7 = tail call ptr @strchr(ptr noundef %6, i32 noundef 44)
  %8 = getelementptr i8, ptr %7, i32 1
  %9 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @renesas_ids, ptr noundef nonnull %1) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @of_iomap(ptr noundef nonnull %12, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %12) #7
  br label %29

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.renesas_soc, ptr %10, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.renesas_family, ptr %11, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %23
  %28 = call ptr @ioremap(i32 noundef %25, i32 noundef 4) #7
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi ptr [ %17, %14 ], [ @id_prr, %27 ]
  %31 = phi ptr [ %18, %14 ], [ %28, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %30, align 4
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  call void @iounmap(ptr noundef nonnull %31) #7
  %37 = icmp eq ptr %30, @id_prr
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = and i32 %36, 32767
  %40 = icmp eq i32 %39, 21008
  %41 = xor i32 %36, 17
  %42 = select i1 %40, i32 %41, i32 %36
  %43 = and i32 %42, 32767
  %44 = icmp eq i32 %43, 21009
  %45 = xor i32 %42, 18
  %46 = select i1 %44, i32 %45, i32 %42
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 15
  %49 = add nuw nsw i32 %48, 1
  %50 = and i32 %46, 15
  br label %51

51:                                               ; preds = %38, %33
  %52 = phi i32 [ %50, %38 ], [ 0, %33 ]
  %53 = phi i32 [ %49, %38 ], [ 0, %33 ]
  %54 = phi i32 [ %46, %38 ], [ %36, %33 ]
  %55 = getelementptr inbounds %struct.renesas_soc, ptr %10, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.renesas_id, ptr %30, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %54
  %62 = call i32 @llvm.cttz.i32(i32 %60, i1 false) #7, !range !10
  %63 = lshr i32 %61, %62
  %64 = icmp eq i32 %63, %56
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %54) #8
  br label %103

67:                                               ; preds = %58, %51, %29, %23, %19
  %68 = phi i32 [ %52, %58 ], [ %52, %51 ], [ 0, %29 ], [ 0, %23 ], [ 0, %19 ]
  %69 = phi i32 [ %53, %58 ], [ %53, %51 ], [ 0, %29 ], [ 0, %23 ], [ 0, %19 ]
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 28) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %103, label %73

73:                                               ; preds = %67
  %74 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.1, ptr noundef null) #7
  %75 = call i32 @of_property_read_string(ptr noundef %74, ptr noundef nonnull @.str.2, ptr noundef nonnull %71) #7
  call void @of_node_put(ptr noundef %74) #7
  %76 = call ptr @kstrdup_const(ptr noundef %11, i32 noundef 3264) #7
  %77 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  %78 = call ptr @kstrdup_const(ptr noundef %8, i32 noundef 3264) #7
  %79 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 4
  store ptr %78, ptr %79, align 8
  %80 = icmp eq i32 %69, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  br label %88

84:                                               ; preds = %73
  %85 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %69, i32 noundef %68) #7
  %86 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 2
  store ptr %85, ptr %86, align 8
  %87 = load ptr, ptr %79, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi ptr [ %83, %81 ], [ %85, %84 ]
  %90 = phi ptr [ %78, %81 ], [ %87, %84 ]
  %91 = load ptr, ptr %77, align 4
  %92 = icmp eq ptr %89, null
  %93 = select i1 %92, ptr @.str.5, ptr %89
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %91, ptr noundef %90, ptr noundef %93) #8
  %95 = call ptr @soc_device_register(ptr noundef nonnull %71) #7
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.soc_device_attribute, ptr %71, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  call void @kfree(ptr noundef %99) #7
  %100 = load ptr, ptr %79, align 8
  call void @kfree_const(ptr noundef %100) #7
  %101 = load ptr, ptr %77, align 4
  call void @kfree_const(ptr noundef %101) #7
  call void @kfree(ptr noundef nonnull %71) #7
  %102 = ptrtoint ptr %95 to i32
  br label %103

103:                                              ; preds = %97, %88, %67, %65, %0
  %104 = phi i32 [ -19, %65 ], [ %102, %97 ], [ -19, %0 ], [ -12, %67 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  ret i32 %104
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 371743}
!9 = !{i64 2151404777}
!10 = !{i32 0, i32 33}
