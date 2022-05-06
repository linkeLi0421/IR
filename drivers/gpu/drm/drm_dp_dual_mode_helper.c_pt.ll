; ModuleID = '/llk/IR/drivers/gpu/drm/drm_dp_dual_mode_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dp_dual_mode_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dual_mode_read:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dual_mode_read\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dual_mode_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dual_mode_write:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dual_mode_write\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dual_mode_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dual_mode_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dual_mode_detect\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dual_mode_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dual_mode_max_tmds_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dual_mode_max_tmds_clock\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dual_mode_max_tmds_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dual_mode_get_tmds_output:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dual_mode_get_tmds_output\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dual_mode_get_tmds_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dual_mode_set_tmds_output:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dual_mode_set_tmds_output\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dual_mode_set_tmds_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_dual_mode_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_dual_mode_type_name\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_dual_mode_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_lspcon_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_lspcon_get_mode\22\09\09\09\09\09"
module asm "__kstrtabns_drm_lspcon_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_lspcon_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_lspcon_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_drm_lspcon_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.72 = type { i32, ptr }

@__kstrtab_drm_dp_dual_mode_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dual_mode_read = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dual_mode_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dual_mode_read to i32), ptr @__kstrtab_drm_dp_dual_mode_read, ptr @__kstrtabns_drm_dp_dual_mode_read }, section "___ksymtab+drm_dp_dual_mode_read", align 4
@__kstrtab_drm_dp_dual_mode_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dual_mode_write = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dual_mode_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dual_mode_write to i32), ptr @__kstrtab_drm_dp_dual_mode_write, ptr @__kstrtabns_drm_dp_dual_mode_write }, section "___ksymtab+drm_dp_dual_mode_write", align 4
@.str = private unnamed_addr constant [38 x i8] c"DP dual mode HDMI ID: %*pE (err %zd)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"DP dual mode adaptor ID: %02x (err %zd)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* Unexpected DP dual mode adaptor ID %02x\0A\00", align 1
@__kstrtab_drm_dp_dual_mode_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dual_mode_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dual_mode_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dual_mode_detect to i32), ptr @__kstrtab_drm_dp_dual_mode_detect, ptr @__kstrtabns_drm_dp_dual_mode_detect }, section "___ksymtab+drm_dp_dual_mode_detect", align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to query max TMDS clock\0A\00", align 1
@__kstrtab_drm_dp_dual_mode_max_tmds_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dual_mode_max_tmds_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dual_mode_max_tmds_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dual_mode_max_tmds_clock to i32), ptr @__kstrtab_drm_dp_dual_mode_max_tmds_clock, ptr @__kstrtabns_drm_dp_dual_mode_max_tmds_clock }, section "___ksymtab+drm_dp_dual_mode_max_tmds_clock", align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to query state of TMDS output buffers\0A\00", align 1
@__kstrtab_drm_dp_dual_mode_get_tmds_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dual_mode_get_tmds_output = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dual_mode_get_tmds_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dual_mode_get_tmds_output to i32), ptr @__kstrtab_drm_dp_dual_mode_get_tmds_output, ptr @__kstrtabns_drm_dp_dual_mode_get_tmds_output }, section "___ksymtab+drm_dp_dual_mode_get_tmds_output", align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to %s TMDS output buffers (%d attempts)\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"I2C read failed during TMDS output buffer %s (%d attempts)\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"I2C write value mismatch during TMDS output buffer %s\0A\00", align 1
@__kstrtab_drm_dp_dual_mode_set_tmds_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dual_mode_set_tmds_output = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dual_mode_set_tmds_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dual_mode_set_tmds_output to i32), ptr @__kstrtab_drm_dp_dual_mode_set_tmds_output, ptr @__kstrtabns_drm_dp_dual_mode_set_tmds_output }, section "___ksymtab+drm_dp_dual_mode_set_tmds_output", align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"type 1 DVI\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"type 1 HDMI\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"type 2 DVI\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"type 2 HDMI\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"lspcon\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/drm_dp_dual_mode_helper.c\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__kstrtab_drm_dp_get_dual_mode_type_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_dual_mode_type_name = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_dual_mode_type_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_dual_mode_type_name to i32), ptr @__kstrtab_drm_dp_get_dual_mode_type_name, ptr @__kstrtabns_drm_dp_get_dual_mode_type_name }, section "___ksymtab+drm_dp_get_dual_mode_type_name", align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"[drm] *ERROR* NULL input\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"LSPCON read(0x80, 0x41) failed\0A\00", align 1
@__kstrtab_drm_lspcon_get_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_lspcon_get_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_lspcon_get_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_lspcon_get_mode to i32), ptr @__kstrtab_drm_lspcon_get_mode, ptr @__kstrtabns_drm_lspcon_get_mode }, section "___ksymtab+drm_lspcon_get_mode", align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"[drm] *ERROR* LSPCON mode change failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"[drm] *ERROR* can't confirm LSPCON mode change\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"LSPCON mode changed to %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"PCON\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"[drm] *ERROR* LSPCON mode change timed out\0A\00", align 1
@__kstrtab_drm_lspcon_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_lspcon_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_lspcon_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_lspcon_set_mode to i32), ptr @__kstrtab_drm_lspcon_set_mode, ptr @__kstrtabns_drm_lspcon_set_mode }, section "___ksymtab+drm_lspcon_set_mode", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@is_hdmi_adaptor.dp_dual_mode_hdmi_id = internal constant [16 x i8] c"DP-HDMI ADAPTOR\04", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_drm_dp_dual_mode_detect, ptr @__ksymtab_drm_dp_dual_mode_get_tmds_output, ptr @__ksymtab_drm_dp_dual_mode_max_tmds_clock, ptr @__ksymtab_drm_dp_dual_mode_read, ptr @__ksymtab_drm_dp_dual_mode_set_tmds_output, ptr @__ksymtab_drm_dp_dual_mode_write, ptr @__ksymtab_drm_dp_get_dual_mode_type_name, ptr @__ksymtab_drm_lspcon_get_mode, ptr @__ksymtab_drm_lspcon_set_mode], section "llvm.metadata"
@switch.table.drm_dp_get_dual_mode_type_name = private unnamed_addr constant [7 x ptr] [ptr @.str.12, ptr @.str.19, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dual_mode_read(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  store i16 64, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 64, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %14 = trunc i32 %3 to i16
  store i16 %14, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %2, ptr %15, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2) #9
  %17 = icmp slt i32 %16, 0
  %18 = icmp eq i32 %16, 2
  %19 = select i1 %18, i32 0, i32 -71
  %20 = select i1 %17, i32 %16, i32 %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dual_mode_write(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  store i16 64, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  %9 = trunc i32 %3 to i16
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  %11 = zext i16 %10 to i32
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %12, ptr %15, align 4
  store i8 %1, ptr %12, align 64
  %16 = getelementptr i8, ptr %12, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %2, i32 %3, i1 false)
  %17 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @kfree(ptr noundef nonnull %12) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %17, 1
  %21 = select i1 %20, i32 0, i32 -71
  br label %22

22:                                               ; preds = %19, %14, %4
  %23 = phi i32 [ -12, %4 ], [ %17, %14 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dual_mode_detect(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [16 x i8], align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %6, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %10, align 2
  store i16 1, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 64, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 16, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %15, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #9
  %17 = icmp slt i32 %16, 0
  %18 = icmp eq i32 %16, 2
  %19 = select i1 %18, i32 0, i32 -71
  %20 = select i1 %17, i32 %16, i32 %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %21 = icmp eq ptr %0, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi ptr [ %24, %22 ], [ null, %2 ]
  %27 = icmp eq i32 %20, 0
  %28 = select i1 %27, i32 16, i32 0
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %26, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %28, ptr noundef nonnull %7, i32 noundef %20) #9
  br i1 %27, label %29, label %74

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 16, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %4, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %31, align 2
  store i16 1, ptr %30, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 64, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %8, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #9
  %38 = icmp slt i32 %37, 0
  %39 = icmp eq i32 %37, 2
  %40 = select i1 %39, i32 0, i32 -71
  %41 = select i1 %38, i32 %37, i32 %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %21, label %45, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = phi ptr [ %44, %42 ], [ null, %29 ]
  %47 = load i8, ptr %8, align 1
  %48 = zext i8 %47 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %46, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %48, i32 noundef %41) #9
  %49 = icmp eq i32 %41, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i8, ptr %8, align 1
  %52 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %7, ptr noundef nonnull dereferenceable(16) @is_hdmi_adaptor.dp_dual_mode_hdmi_id, i32 16) #9
  %53 = icmp eq i32 %52, 0
  %54 = icmp eq i8 %51, -88
  %55 = and i1 %54, %53
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = icmp eq i8 %51, -96
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = select i1 %53, i32 5, i32 4
  br label %74

60:                                               ; preds = %56
  %61 = add i8 %51, 1
  %62 = icmp ult i8 %61, 2
  %63 = load i8, ptr %7, align 1
  %64 = icmp eq i8 %51, %63
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = zext i8 %51 to i32
  %68 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.2, i32 noundef %67) #11
  br label %70

70:                                               ; preds = %66, %60, %45
  %71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %7, ptr noundef nonnull dereferenceable(16) @is_hdmi_adaptor.dp_dual_mode_hdmi_id, i32 16) #9
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 3, i32 2
  br label %74

74:                                               ; preds = %70, %58, %50, %25
  %75 = phi i32 [ 1, %25 ], [ 6, %50 ], [ %59, %58 ], [ %73, %70 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dual_mode_max_tmds_clock(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = icmp ult i32 %1, 4
  br i1 %9, label %37, label %10

10:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 29, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 64, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %17, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 2) #9
  %19 = icmp slt i32 %18, 0
  %20 = icmp eq i32 %18, 2
  %21 = select i1 %20, i32 0, i32 -71
  %22 = select i1 %19, i32 %18, i32 %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %23 = freeze i32 %22
  %24 = icmp eq i32 %23, 0
  %25 = load i8, ptr %6, align 1
  br i1 %24, label %26, label %27

26:                                               ; preds = %10
  switch i8 %25, label %34 [
    i8 -1, label %27
    i8 0, label %27
  ]

27:                                               ; preds = %26, %26, %10
  %28 = icmp eq ptr %0, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ null, %27 ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %33, i32 noundef 4, ptr noundef nonnull @.str.3) #9
  br label %37

34:                                               ; preds = %26
  %35 = zext i8 %25 to i32
  %36 = mul nuw nsw i32 %35, 2500
  br label %37

37:                                               ; preds = %34, %32, %8, %3
  %38 = phi i32 [ 165000, %32 ], [ %36, %34 ], [ 0, %3 ], [ 165000, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dual_mode_get_tmds_output(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = icmp ult i32 %1, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i8 1, ptr %3, align 1
  br label %35

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 64, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %17, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #9
  %19 = icmp slt i32 %18, 0
  %20 = icmp eq i32 %18, 2
  %21 = select i1 %20, i32 0, i32 -71
  %22 = select i1 %19, i32 %18, i32 %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %10
  %25 = icmp eq ptr %0, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ null, %24 ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %30, i32 noundef 4, ptr noundef nonnull @.str.4) #9
  br label %35

31:                                               ; preds = %10
  %32 = load i8, ptr %7, align 1
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, ptr %3, align 1
  br label %35

35:                                               ; preds = %31, %29, %9
  %36 = phi i32 [ 0, %9 ], [ %22, %29 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dual_mode_set_tmds_output(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca i8, align 1
  %9 = xor i1 %3, true
  %10 = zext i1 %9 to i8
  %11 = icmp ult i32 %1, 4
  br i1 %11, label %112, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds i8, ptr %7, i32 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %16 = getelementptr inbounds i8, ptr %6, i32 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i32 2, ptr %13, align 4, !annotation !8
  store i16 64, ptr %7, align 4
  store i16 0, ptr %14, align 2
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 2) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %12
  store ptr %24, ptr %15, align 4
  store i8 32, ptr %24, align 8
  %27 = getelementptr i8, ptr %24, i32 1
  store i8 %10, ptr %27, align 1
  %28 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @kfree(ptr noundef nonnull %24) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %28, 1
  br i1 %31, label %42, label %32

32:                                               ; preds = %92, %88, %84, %72, %68, %64, %30, %26, %12
  %33 = phi i32 [ 1, %12 ], [ 1, %26 ], [ 1, %30 ], [ 2, %64 ], [ 2, %68 ], [ 2, %72 ], [ 3, %84 ], [ 3, %88 ], [ 3, %92 ]
  %34 = phi i32 [ -12, %12 ], [ %28, %26 ], [ -71, %30 ], [ -12, %64 ], [ %70, %68 ], [ -71, %72 ], [ -12, %84 ], [ %90, %88 ], [ -71, %92 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  %35 = icmp eq ptr %0, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi ptr [ %38, %36 ], [ null, %32 ]
  %41 = select i1 %3, ptr @.str.6, ptr @.str.7
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %40, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull %41, i32 noundef %33) #9
  br label %59

42:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %6, align 4
  store i16 0, ptr %17, align 2
  store i16 1, ptr %16, align 4
  store ptr %5, ptr %18, align 4
  store i16 64, ptr %19, align 4
  store i16 1, ptr %20, align 2
  store i16 1, ptr %21, align 4
  store ptr %8, ptr %22, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #9
  %44 = icmp slt i32 %43, 0
  %45 = icmp eq i32 %43, 2
  %46 = select i1 %45, i32 0, i32 -71
  %47 = select i1 %44, i32 %43, i32 %46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %94, %74, %42
  %50 = phi i32 [ %47, %42 ], [ %79, %74 ], [ %99, %94 ]
  %51 = phi i32 [ 1, %42 ], [ 2, %74 ], [ 3, %94 ]
  %52 = icmp eq ptr %0, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ null, %49 ]
  %58 = select i1 %3, ptr @.str.9, ptr @.str.10
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %57, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull %58, i32 noundef %51) #9
  br label %59

59:                                               ; preds = %56, %39
  %60 = phi i32 [ %50, %56 ], [ %34, %39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  br label %112

61:                                               ; preds = %42
  %62 = load i8, ptr %8, align 1
  %63 = icmp eq i8 %62, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  br i1 %63, label %112, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i32 2, ptr %13, align 4, !annotation !8
  store i16 64, ptr %7, align 4
  store i16 0, ptr %14, align 2
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 2) #12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %32, label %68

68:                                               ; preds = %64
  store ptr %66, ptr %15, align 4
  store i8 32, ptr %66, align 8
  %69 = getelementptr i8, ptr %66, i32 1
  store i8 %10, ptr %69, align 1
  %70 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @kfree(ptr noundef nonnull %66) #9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %32, label %72

72:                                               ; preds = %68
  %73 = icmp eq i32 %70, 1
  br i1 %73, label %74, label %32

74:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %6, align 4
  store i16 0, ptr %17, align 2
  store i16 1, ptr %16, align 4
  store ptr %5, ptr %18, align 4
  store i16 64, ptr %19, align 4
  store i16 1, ptr %20, align 2
  store i16 1, ptr %21, align 4
  store ptr %8, ptr %22, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #9
  %76 = icmp slt i32 %75, 0
  %77 = icmp eq i32 %75, 2
  %78 = select i1 %77, i32 0, i32 -71
  %79 = select i1 %76, i32 %75, i32 %78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %49

81:                                               ; preds = %74
  %82 = load i8, ptr %8, align 1
  %83 = icmp eq i8 %82, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  br i1 %83, label %112, label %84

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i32 2, ptr %13, align 4, !annotation !8
  store i16 64, ptr %7, align 4
  store i16 0, ptr %14, align 2
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %86 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3264, i32 noundef 2) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %32, label %88

88:                                               ; preds = %84
  store ptr %86, ptr %15, align 4
  store i8 32, ptr %86, align 8
  %89 = getelementptr i8, ptr %86, i32 1
  store i8 %10, ptr %89, align 1
  %90 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @kfree(ptr noundef nonnull %86) #9
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %32, label %92

92:                                               ; preds = %88
  %93 = icmp eq i32 %90, 1
  br i1 %93, label %94, label %32

94:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %6, align 4
  store i16 0, ptr %17, align 2
  store i16 1, ptr %16, align 4
  store ptr %5, ptr %18, align 4
  store i16 64, ptr %19, align 4
  store i16 1, ptr %20, align 2
  store i16 1, ptr %21, align 4
  store ptr %8, ptr %22, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #9
  %96 = icmp slt i32 %95, 0
  %97 = icmp eq i32 %95, 2
  %98 = select i1 %97, i32 0, i32 -71
  %99 = select i1 %96, i32 %95, i32 %98
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %49

101:                                              ; preds = %94
  %102 = load i8, ptr %8, align 1
  %103 = icmp eq i8 %102, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = icmp eq ptr %0, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi ptr [ %108, %106 ], [ null, %104 ]
  %111 = select i1 %3, ptr @.str.9, ptr @.str.10
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %110, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %111) #9
  br label %112

112:                                              ; preds = %109, %101, %81, %61, %59, %4
  %113 = phi i32 [ -5, %109 ], [ 0, %4 ], [ %60, %59 ], [ 0, %101 ], [ 0, %81 ], [ 0, %61 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local nonnull ptr @drm_dp_get_dual_mode_type_name(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 422, i32 noundef 9, ptr noundef null) #9
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [7 x ptr], ptr @switch.table.drm_dp_get_dual_mode_type_name, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi ptr [ @.str.19, %3 ], [ %6, %4 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_lspcon_get_mode(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20) #11
  br label %44

19:                                               ; preds = %26
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %32, label %22

22:                                               ; preds = %19, %8
  %23 = phi i32 [ 0, %8 ], [ %20, %19 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  br label %26

26:                                               ; preds = %25, %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 65, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #9, !annotation !8
  store i16 64, ptr %5, align 4
  store i16 0, ptr %10, align 2
  store i16 1, ptr %9, align 4
  store ptr %4, ptr %11, align 4
  store i16 64, ptr %12, align 4
  store i16 1, ptr %13, align 2
  store i16 1, ptr %14, align 4
  store ptr %6, ptr %15, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #9
  %28 = icmp slt i32 %27, 0
  %29 = icmp eq i32 %27, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %30 = icmp eq i32 %27, 0
  %31 = select i1 %28, i1 %30, i1 %29
  br i1 %31, label %39, label %19

32:                                               ; preds = %19
  %33 = icmp eq ptr %0, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi ptr [ %36, %34 ], [ null, %32 ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %38, i32 noundef 4, ptr noundef nonnull @.str.21) #9
  br label %44

39:                                               ; preds = %26
  %40 = load i8, ptr %6, align 1
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i32 1, i32 2
  store i32 %43, ptr %2, align 4
  br label %44

44:                                               ; preds = %39, %37, %16
  %45 = phi i32 [ -14, %37 ], [ 0, %39 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_lspcon_set_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %6, align 4, !annotation !8
  store i16 64, ptr %4, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %7, align 2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 2) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %13 = icmp eq i32 %2, 2
  %14 = zext i1 %13 to i8
  store ptr %9, ptr %12, align 4
  store i8 64, ptr %9, align 8
  %15 = getelementptr i8, ptr %9, i32 1
  store i8 %14, ptr %15, align 1
  %16 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @kfree(ptr noundef nonnull %9) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = icmp eq i32 %16, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %25

21:                                               ; preds = %18, %11, %3
  %22 = phi i32 [ -71, %18 ], [ %16, %11 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.22) #11
  br label %50

25:                                               ; preds = %35, %20
  %26 = phi i32 [ 200, %20 ], [ %36, %35 ]
  %27 = call i32 @drm_lspcon_get_mode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.23) #11
  br label %50

32:                                               ; preds = %25
  %33 = load i32, ptr %5, align 4
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  call void @msleep(i32 noundef 10) #9
  %36 = add nsw i32 %26, -10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %25

38:                                               ; preds = %32
  %39 = icmp eq ptr %0, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %42, %40 ], [ null, %38 ]
  %45 = icmp eq i32 %2, 1
  %46 = select i1 %45, ptr @.str.25, ptr @.str.26
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %44, i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull %46) #9
  br label %50

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.27) #11
  br label %50

50:                                               ; preds = %47, %43, %29, %21
  %51 = phi i32 [ %22, %21 ], [ %27, %29 ], [ -110, %47 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
