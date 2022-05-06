; ModuleID = '/llk/IR/drivers/pci/controller/dwc/pcie-designware.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-designware.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_find_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_find_capability\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_find_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_find_ext_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_find_ext_capability\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_find_ext_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_read:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_read\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_write:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_write\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_read_dbi:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_read_dbi\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_read_dbi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_write_dbi:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_write_dbi\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_write_dbi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_wait_for_link:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_wait_for_link\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_wait_for_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_link_up:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_link_up\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_link_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_upconfig_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_upconfig_setup\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_upconfig_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__kstrtab_dw_pcie_find_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_find_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_find_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_find_capability to i32), ptr @__kstrtab_dw_pcie_find_capability, ptr @__kstrtabns_dw_pcie_find_capability }, section "___ksymtab_gpl+dw_pcie_find_capability", align 4
@__kstrtab_dw_pcie_find_ext_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_find_ext_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_find_ext_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_find_ext_capability to i32), ptr @__kstrtab_dw_pcie_find_ext_capability, ptr @__kstrtabns_dw_pcie_find_ext_capability }, section "___ksymtab_gpl+dw_pcie_find_ext_capability", align 4
@__kstrtab_dw_pcie_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_read = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_read to i32), ptr @__kstrtab_dw_pcie_read, ptr @__kstrtabns_dw_pcie_read }, section "___ksymtab_gpl+dw_pcie_read", align 4
@__kstrtab_dw_pcie_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_write = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_write to i32), ptr @__kstrtab_dw_pcie_write, ptr @__kstrtabns_dw_pcie_write }, section "___ksymtab_gpl+dw_pcie_write", align 4
@.str = private unnamed_addr constant [25 x i8] c"Read DBI address failed\0A\00", align 1
@__kstrtab_dw_pcie_read_dbi = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_read_dbi = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_read_dbi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_read_dbi to i32), ptr @__kstrtab_dw_pcie_read_dbi, ptr @__kstrtabns_dw_pcie_read_dbi }, section "___ksymtab_gpl+dw_pcie_read_dbi", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Write DBI address failed\0A\00", align 1
@__kstrtab_dw_pcie_write_dbi = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_write_dbi = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_write_dbi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_write_dbi to i32), ptr @__kstrtab_dw_pcie_write_dbi, ptr @__kstrtabns_dw_pcie_write_dbi }, section "___ksymtab_gpl+dw_pcie_write_dbi", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"write DBI address failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Inbound iATU is not being enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Link up\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Phy link never came up\0A\00", align 1
@__kstrtab_dw_pcie_wait_for_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_wait_for_link = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_wait_for_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_wait_for_link to i32), ptr @__kstrtab_dw_pcie_wait_for_link, ptr @__kstrtabns_dw_pcie_wait_for_link }, section "___ksymtab_gpl+dw_pcie_wait_for_link", align 4
@__kstrtab_dw_pcie_link_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_link_up = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_link_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_link_up to i32), ptr @__kstrtab_dw_pcie_link_up, ptr @__kstrtabns_dw_pcie_link_up }, section "___ksymtab_gpl+dw_pcie_link_up", align 4
@__kstrtab_dw_pcie_upconfig_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_upconfig_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_upconfig_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_upconfig_setup to i32), ptr @__kstrtab_dw_pcie_upconfig_setup, ptr @__kstrtabns_dw_pcie_upconfig_setup }, section "___ksymtab_gpl+dw_pcie_upconfig_setup", align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"atu\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"iATU unroll: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Detected iATU regions: %u outbound, %u inbound\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"num-lanes\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"num-lanes %u: invalid value\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"snps,enable-cdm-check\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Outbound iATU is not being enabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Write ATU address failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Read ATU address failed\0A\00", align 1
@pcie_link_speed = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_dw_pcie_find_capability, ptr @__ksymtab_dw_pcie_find_ext_capability, ptr @__ksymtab_dw_pcie_link_up, ptr @__ksymtab_dw_pcie_read, ptr @__ksymtab_dw_pcie_read_dbi, ptr @__ksymtab_dw_pcie_upconfig_setup, ptr @__ksymtab_dw_pcie_wait_for_link, ptr @__ksymtab_dw_pcie_write, ptr @__ksymtab_dw_pcie_write_dbi], section "llvm.metadata"
@switch.table.dw_pcie_setup = private unnamed_addr constant [8 x i32] [i32 65536, i32 196608, i32 65536, i32 458752, i32 65536, i32 65536, i32 65536, i32 983040], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dw_pcie_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %0, ptr noundef %12, i32 noundef 52, i32 noundef 2) #4
  br label %26

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 52
  %18 = ptrtoint ptr %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %23 = zext i16 %22 to i32
  br label %26

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str) #5
  br label %26

26:                                               ; preds = %24, %21, %10
  %27 = phi i32 [ %13, %10 ], [ 0, %24 ], [ %23, %21 ]
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  br label %30

30:                                               ; preds = %62, %26
  %31 = phi i8 [ %28, %26 ], [ %64, %62 ]
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32
  %35 = load ptr, ptr %3, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dw_pcie_ops, ptr %35, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %29, align 4
  %43 = tail call i32 %39(ptr noundef %0, ptr noundef %42, i32 noundef %34, i32 noundef 2) #4
  br label %55

44:                                               ; preds = %37, %33
  %45 = load ptr, ptr %29, align 4
  %46 = getelementptr i8, ptr %45, i32 %34
  %47 = ptrtoint ptr %46 to i32
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %46) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %52 = zext i16 %51 to i32
  br label %55

53:                                               ; preds = %44
  %54 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str) #5
  br label %62

55:                                               ; preds = %50, %41
  %56 = phi i32 [ %43, %41 ], [ %52, %50 ]
  %57 = and i32 %56, 255
  %58 = icmp ugt i32 %57, 20
  %59 = trunc i32 %56 to i8
  %60 = lshr i32 %56, 8
  %61 = trunc i32 %60 to i8
  br i1 %58, label %66, label %62

62:                                               ; preds = %55, %53
  %63 = phi i8 [ 0, %53 ], [ %59, %55 ]
  %64 = phi i8 [ 0, %53 ], [ %61, %55 ]
  %65 = icmp eq i8 %63, %1
  br i1 %65, label %66, label %30

66:                                               ; preds = %62, %55, %30
  %67 = phi i8 [ 0, %30 ], [ 0, %55 ], [ %31, %62 ]
  ret i8 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dw_pcie_find_ext_capability(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dw_pcie_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %0, ptr noundef %12, i32 noundef 256, i32 noundef 4) #4
  br label %25

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 256
  %18 = ptrtoint ptr %17 to i32
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %25

23:                                               ; preds = %14
  %24 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str) #5
  br label %68

25:                                               ; preds = %21, %10
  %26 = phi i32 [ %13, %10 ], [ %22, %21 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %25
  %29 = zext i8 %1 to i32
  %30 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %31 = and i32 %26, 65535
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %68, label %37

33:                                               ; preds = %63
  %34 = add nsw i32 %39, -1
  %35 = and i32 %64, 65535
  %36 = icmp eq i32 %35, %29
  br i1 %36, label %66, label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %64, %33 ], [ %26, %28 ]
  %39 = phi i32 [ %34, %33 ], [ 479, %28 ]
  %40 = lshr i32 %38, 20
  %41 = and i32 %40, 4092
  %42 = icmp ult i32 %41, 256
  br i1 %42, label %68, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %3, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.dw_pcie_ops, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %30, align 4
  %52 = tail call i32 %48(ptr noundef %0, ptr noundef %51, i32 noundef %41, i32 noundef 4) #4
  br label %63

53:                                               ; preds = %46, %43
  %54 = load ptr, ptr %30, align 4
  %55 = getelementptr i8, ptr %54, i32 %41
  %56 = ptrtoint ptr %55 to i32
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %63

61:                                               ; preds = %53
  %62 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str) #5
  br label %63

63:                                               ; preds = %61, %59, %50
  %64 = phi i32 [ %52, %50 ], [ 0, %61 ], [ %60, %59 ]
  %65 = icmp eq i32 %39, 0
  br i1 %65, label %68, label %33

66:                                               ; preds = %33
  %67 = trunc i32 %41 to i16
  br label %68

68:                                               ; preds = %66, %63, %37, %28, %25, %23
  %69 = phi i16 [ 0, %25 ], [ 0, %23 ], [ 256, %28 ], [ %67, %66 ], [ 0, %63 ], [ 0, %37 ]
  ret i16 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = add i32 %1, -1
  %6 = and i32 %5, %4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  switch i32 %1, label %17 [
    i32 4, label %9
    i32 2, label %11
    i32 1, label %14
  ]

9:                                                ; preds = %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %17

11:                                               ; preds = %8
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %13 = zext i16 %12 to i32
  br label %17

14:                                               ; preds = %8
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %0) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %14, %11, %9, %8, %3
  %18 = phi i32 [ %10, %9 ], [ %16, %14 ], [ %13, %11 ], [ 0, %3 ], [ 0, %8 ]
  %19 = phi i32 [ 0, %9 ], [ 0, %14 ], [ 0, %11 ], [ 135, %3 ], [ 135, %8 ]
  store i32 %18, ptr %2, align 4
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = add i32 %1, -1
  %6 = and i32 %5, %4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  switch i32 %1, label %14 [
    i32 4, label %9
    i32 2, label %10
    i32 1, label %12
  ]

9:                                                ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %2) #4, !srcloc !15
  br label %14

10:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %11 = trunc i32 %2 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %0, i16 %11) #4, !srcloc !17
  br label %14

12:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %13 = trunc i32 %2 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %0, i8 %13) #4, !srcloc !19
  br label %14

14:                                               ; preds = %12, %10, %9, %8, %3
  %15 = phi i32 [ 135, %3 ], [ 135, %8 ], [ 0, %10 ], [ 0, %12 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_read_dbi(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dw_pcie_ops, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %0, ptr noundef %13, i32 noundef %1, i32 noundef %2) #4
  br label %34

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %1
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %2, -1
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  switch i32 %2, label %32 [
    i32 4, label %24
    i32 2, label %26
    i32 1, label %29
  ]

24:                                               ; preds = %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %34

26:                                               ; preds = %23
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %28 = zext i16 %27 to i32
  br label %34

29:                                               ; preds = %23
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %31 = zext i8 %30 to i32
  br label %34

32:                                               ; preds = %23, %15
  %33 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str) #5
  br label %34

34:                                               ; preds = %32, %29, %26, %24, %11
  %35 = phi i32 [ %14, %11 ], [ 0, %32 ], [ %28, %26 ], [ %31, %29 ], [ %25, %24 ]
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_write_dbi(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dw_pcie_ops, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %10(ptr noundef %0, ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4
  br label %31

15:                                               ; preds = %8, %4
  %16 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %1
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %2, -1
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  switch i32 %2, label %29 [
    i32 4, label %24
    i32 2, label %25
    i32 1, label %27
  ]

24:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %3) #4, !srcloc !15
  br label %31

25:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %26 = trunc i32 %3 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %26) #4, !srcloc !17
  br label %31

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %28 = trunc i32 %3 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %28) #4, !srcloc !19
  br label %31

29:                                               ; preds = %23, %15
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.1) #5
  br label %31

31:                                               ; preds = %29, %27, %25, %24, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_write_dbi2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dw_pcie_ops, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  tail call void %10(ptr noundef %0, ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4
  br label %31

15:                                               ; preds = %8, %4
  %16 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 %1
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %2, -1
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  switch i32 %2, label %29 [
    i32 4, label %24
    i32 2, label %25
    i32 1, label %27
  ]

24:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %3) #4, !srcloc !15
  br label %31

25:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %26 = trunc i32 %3 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %26) #4, !srcloc !17
  br label %31

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %28 = trunc i32 %3 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %28) #4, !srcloc !19
  br label %31

29:                                               ; preds = %23, %15
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.2) #5
  br label %31

31:                                               ; preds = %29, %27, %25, %24, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_prog_outbound_atu(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @__dw_pcie_prog_outbound_atu(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dw_pcie_prog_outbound_atu(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i64 %12(ptr noundef %0, i64 noundef %4) #4
  br label %16

16:                                               ; preds = %14, %11, %7
  %17 = phi i64 [ %15, %14 ], [ %4, %11 ], [ %4, %7 ]
  %18 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 14
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %250, label %22

22:                                               ; preds = %16
  %23 = add i64 %6, -1
  %24 = add i64 %17, %23
  %25 = trunc i64 %17 to i32
  %26 = shl i32 %2, 9
  %27 = or i32 %26, 8
  %28 = load ptr, ptr %8, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.dw_pcie_ops, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  tail call void %32(ptr noundef %0, ptr noundef %36, i32 noundef %27, i32 noundef 4, i32 noundef %25) #4
  br label %47

37:                                               ; preds = %30, %22
  %38 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %27
  %41 = ptrtoint ptr %40 to i32
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %25) #4, !srcloc !15
  br label %47

45:                                               ; preds = %37
  %46 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.15) #5
  br label %47

47:                                               ; preds = %45, %44, %34
  %48 = lshr i64 %17, 32
  %49 = trunc i64 %48 to i32
  %50 = or i32 %26, 12
  %51 = load ptr, ptr %8, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.dw_pcie_ops, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  tail call void %55(ptr noundef %0, ptr noundef %59, i32 noundef %50, i32 noundef 4, i32 noundef %49) #4
  br label %70

60:                                               ; preds = %53, %47
  %61 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 %50
  %64 = ptrtoint ptr %63 to i32
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %49) #4, !srcloc !15
  br label %70

68:                                               ; preds = %60
  %69 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.15) #5
  br label %70

70:                                               ; preds = %68, %67, %57
  %71 = trunc i64 %24 to i32
  %72 = or i32 %26, 16
  %73 = load ptr, ptr %8, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.dw_pcie_ops, ptr %73, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  tail call void %77(ptr noundef %0, ptr noundef %81, i32 noundef %72, i32 noundef 4, i32 noundef %71) #4
  br label %92

82:                                               ; preds = %75, %70
  %83 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %72
  %86 = ptrtoint ptr %85 to i32
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %71) #4, !srcloc !15
  br label %92

90:                                               ; preds = %82
  %91 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.15) #5
  br label %92

92:                                               ; preds = %90, %89, %79
  %93 = lshr i64 %24, 32
  %94 = trunc i64 %93 to i32
  %95 = or i32 %26, 32
  %96 = load ptr, ptr %8, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.dw_pcie_ops, ptr %96, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  tail call void %100(ptr noundef %0, ptr noundef %104, i32 noundef %95, i32 noundef 4, i32 noundef %94) #4
  br label %115

105:                                              ; preds = %98, %92
  %106 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %95
  %109 = ptrtoint ptr %108 to i32
  %110 = and i32 %109, 3
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %94) #4, !srcloc !15
  br label %115

113:                                              ; preds = %105
  %114 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.15) #5
  br label %115

115:                                              ; preds = %113, %112, %102
  %116 = trunc i64 %5 to i32
  %117 = or i32 %26, 20
  %118 = load ptr, ptr %8, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.dw_pcie_ops, ptr %118, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  tail call void %122(ptr noundef %0, ptr noundef %126, i32 noundef %117, i32 noundef 4, i32 noundef %116) #4
  br label %137

127:                                              ; preds = %120, %115
  %128 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 %117
  %131 = ptrtoint ptr %130 to i32
  %132 = and i32 %131, 3
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %116) #4, !srcloc !15
  br label %137

135:                                              ; preds = %127
  %136 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.15) #5
  br label %137

137:                                              ; preds = %135, %134, %124
  %138 = lshr i64 %5, 32
  %139 = trunc i64 %138 to i32
  %140 = or i32 %26, 24
  %141 = load ptr, ptr %8, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.dw_pcie_ops, ptr %141, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  tail call void %145(ptr noundef %0, ptr noundef %149, i32 noundef %140, i32 noundef 4, i32 noundef %139) #4
  br label %160

150:                                              ; preds = %143, %137
  %151 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 %140
  %154 = ptrtoint ptr %153 to i32
  %155 = and i32 %154, 3
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %139) #4, !srcloc !15
  br label %160

158:                                              ; preds = %150
  %159 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.15) #5
  br label %160

160:                                              ; preds = %158, %157, %147
  %161 = zext i8 %1 to i32
  %162 = shl nuw nsw i32 %161, 20
  %163 = or i32 %162, %3
  %164 = icmp ult i64 %23, 4294967296
  %165 = or i32 %163, 8192
  %166 = select i1 %164, i32 %163, i32 %165
  %167 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 10
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 18698
  %170 = or i32 %166, 256
  %171 = select i1 %169, i32 %170, i32 %166
  %172 = load ptr, ptr %8, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %160
  %175 = getelementptr inbounds %struct.dw_pcie_ops, ptr %172, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  tail call void %176(ptr noundef %0, ptr noundef %180, i32 noundef %26, i32 noundef 4, i32 noundef %171) #4
  br label %191

181:                                              ; preds = %174, %160
  %182 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 %26
  %185 = ptrtoint ptr %184 to i32
  %186 = and i32 %185, 3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %171) #4, !srcloc !15
  br label %191

189:                                              ; preds = %181
  %190 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.15) #5
  br label %191

191:                                              ; preds = %189, %188, %178
  %192 = or i32 %26, 4
  %193 = load ptr, ptr %8, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.dw_pcie_ops, ptr %193, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  tail call void %197(ptr noundef %0, ptr noundef %201, i32 noundef %192, i32 noundef 4, i32 noundef -2147483648) #4
  br label %212

202:                                              ; preds = %195, %191
  %203 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 %192
  %206 = ptrtoint ptr %205 to i32
  %207 = and i32 %206, 3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 -2147483648) #4, !srcloc !15
  br label %212

210:                                              ; preds = %202
  %211 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.15) #5
  br label %212

212:                                              ; preds = %210, %209, %199
  %213 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  br label %214

214:                                              ; preds = %238, %212
  %215 = phi i32 [ 0, %212 ], [ %248, %238 ]
  %216 = load ptr, ptr %8, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %225, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.dw_pcie_ops, ptr %216, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %213, align 4
  %224 = tail call i32 %220(ptr noundef %0, ptr noundef %223, i32 noundef %192, i32 noundef 4) #4
  br label %235

225:                                              ; preds = %218, %214
  %226 = load ptr, ptr %213, align 4
  %227 = getelementptr i8, ptr %226, i32 %192
  %228 = ptrtoint ptr %227 to i32
  %229 = and i32 %228, 3
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %235

233:                                              ; preds = %225
  %234 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.16) #5
  br label %238

235:                                              ; preds = %231, %222
  %236 = phi i32 [ %224, %222 ], [ %232, %231 ]
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %497

238:                                              ; preds = %235, %233
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %239(i32 noundef 214748000) #4
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %240(i32 noundef 214748000) #4
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %241(i32 noundef 214748000) #4
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %242(i32 noundef 214748000) #4
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %243(i32 noundef 214748000) #4
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %244(i32 noundef 214748000) #4
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %245(i32 noundef 214748000) #4
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %246(i32 noundef 214748000) #4
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %247(i32 noundef 214748000) #4
  %248 = add nuw nsw i32 %215, 1
  %249 = icmp eq i32 %248, 5
  br i1 %249, label %495, label %214

250:                                              ; preds = %16
  %251 = load ptr, ptr %8, align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %260, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.dw_pcie_ops, ptr %251, i32 0, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  tail call void %255(ptr noundef %0, ptr noundef %259, i32 noundef 2304, i32 noundef 4, i32 noundef %2) #4
  br label %270

260:                                              ; preds = %253, %250
  %261 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr i8, ptr %262, i32 2304
  %264 = ptrtoint ptr %263 to i32
  %265 = and i32 %264, 3
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %2) #4, !srcloc !15
  br label %270

268:                                              ; preds = %260
  %269 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %269, ptr noundef nonnull @.str.1) #5
  br label %270

270:                                              ; preds = %268, %267, %257
  %271 = trunc i64 %17 to i32
  %272 = load ptr, ptr %8, align 8
  %273 = icmp eq ptr %272, null
  br i1 %273, label %281, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.dw_pcie_ops, ptr %272, i32 0, i32 2
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %281, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  tail call void %276(ptr noundef %0, ptr noundef %280, i32 noundef 2316, i32 noundef 4, i32 noundef %271) #4
  br label %291

281:                                              ; preds = %274, %270
  %282 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr i8, ptr %283, i32 2316
  %285 = ptrtoint ptr %284 to i32
  %286 = and i32 %285, 3
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %271) #4, !srcloc !15
  br label %291

289:                                              ; preds = %281
  %290 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.1) #5
  br label %291

291:                                              ; preds = %289, %288, %278
  %292 = lshr i64 %17, 32
  %293 = trunc i64 %292 to i32
  %294 = load ptr, ptr %8, align 8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %303, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.dw_pcie_ops, ptr %294, i32 0, i32 2
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %303, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %302 = load ptr, ptr %301, align 4
  tail call void %298(ptr noundef %0, ptr noundef %302, i32 noundef 2320, i32 noundef 4, i32 noundef %293) #4
  br label %313

303:                                              ; preds = %296, %291
  %304 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr i8, ptr %305, i32 2320
  %307 = ptrtoint ptr %306 to i32
  %308 = and i32 %307, 3
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %293) #4, !srcloc !15
  br label %313

311:                                              ; preds = %303
  %312 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %312, ptr noundef nonnull @.str.1) #5
  br label %313

313:                                              ; preds = %311, %310, %300
  %314 = add i64 %6, -1
  %315 = add i64 %314, %17
  %316 = trunc i64 %315 to i32
  %317 = load ptr, ptr %8, align 8
  %318 = icmp eq ptr %317, null
  br i1 %318, label %326, label %319

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.dw_pcie_ops, ptr %317, i32 0, i32 2
  %321 = load ptr, ptr %320, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %326, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  tail call void %321(ptr noundef %0, ptr noundef %325, i32 noundef 2324, i32 noundef 4, i32 noundef %316) #4
  br label %336

326:                                              ; preds = %319, %313
  %327 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr i8, ptr %328, i32 2324
  %330 = ptrtoint ptr %329 to i32
  %331 = and i32 %330, 3
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %316) #4, !srcloc !15
  br label %336

334:                                              ; preds = %326
  %335 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.1) #5
  br label %336

336:                                              ; preds = %334, %333, %323
  %337 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 10
  %338 = load i32, ptr %337, align 4
  %339 = icmp ugt i32 %338, 17929
  br i1 %339, label %340, label %362

340:                                              ; preds = %336
  %341 = lshr i64 %315, 32
  %342 = trunc i64 %341 to i32
  %343 = load ptr, ptr %8, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %352, label %345

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.dw_pcie_ops, ptr %343, i32 0, i32 2
  %347 = load ptr, ptr %346, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %351 = load ptr, ptr %350, align 4
  tail call void %347(ptr noundef %0, ptr noundef %351, i32 noundef 2340, i32 noundef 4, i32 noundef %342) #4
  br label %362

352:                                              ; preds = %345, %340
  %353 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr i8, ptr %354, i32 2340
  %356 = ptrtoint ptr %355 to i32
  %357 = and i32 %356, 3
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %342) #4, !srcloc !15
  br label %362

360:                                              ; preds = %352
  %361 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.1) #5
  br label %362

362:                                              ; preds = %360, %359, %349, %336
  %363 = trunc i64 %5 to i32
  %364 = load ptr, ptr %8, align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %373, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.dw_pcie_ops, ptr %364, i32 0, i32 2
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %373, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  tail call void %368(ptr noundef %0, ptr noundef %372, i32 noundef 2328, i32 noundef 4, i32 noundef %363) #4
  br label %383

373:                                              ; preds = %366, %362
  %374 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr i8, ptr %375, i32 2328
  %377 = ptrtoint ptr %376 to i32
  %378 = and i32 %377, 3
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %373
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %363) #4, !srcloc !15
  br label %383

381:                                              ; preds = %373
  %382 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %382, ptr noundef nonnull @.str.1) #5
  br label %383

383:                                              ; preds = %381, %380, %370
  %384 = lshr i64 %5, 32
  %385 = trunc i64 %384 to i32
  %386 = load ptr, ptr %8, align 8
  %387 = icmp eq ptr %386, null
  br i1 %387, label %395, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.dw_pcie_ops, ptr %386, i32 0, i32 2
  %390 = load ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %395, label %392

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  tail call void %390(ptr noundef %0, ptr noundef %394, i32 noundef 2332, i32 noundef 4, i32 noundef %385) #4
  br label %405

395:                                              ; preds = %388, %383
  %396 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr i8, ptr %397, i32 2332
  %399 = ptrtoint ptr %398 to i32
  %400 = and i32 %399, 3
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %395
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %385) #4, !srcloc !15
  br label %405

403:                                              ; preds = %395
  %404 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %404, ptr noundef nonnull @.str.1) #5
  br label %405

405:                                              ; preds = %403, %402, %392
  %406 = zext i8 %1 to i32
  %407 = shl nuw nsw i32 %406, 20
  %408 = or i32 %407, %3
  %409 = icmp ult i64 %314, 4294967296
  %410 = load i32, ptr %337, align 4
  %411 = icmp ugt i32 %410, 17929
  %412 = or i32 %408, 8192
  %413 = select i1 %411, i32 %412, i32 %408
  %414 = select i1 %409, i32 %408, i32 %413
  %415 = icmp eq i32 %410, 18698
  %416 = or i32 %414, 256
  %417 = select i1 %415, i32 %416, i32 %414
  %418 = load ptr, ptr %8, align 8
  %419 = icmp eq ptr %418, null
  br i1 %419, label %427, label %420

420:                                              ; preds = %405
  %421 = getelementptr inbounds %struct.dw_pcie_ops, ptr %418, i32 0, i32 2
  %422 = load ptr, ptr %421, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %427, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %426 = load ptr, ptr %425, align 4
  tail call void %422(ptr noundef %0, ptr noundef %426, i32 noundef 2308, i32 noundef 4, i32 noundef %417) #4
  br label %437

427:                                              ; preds = %420, %405
  %428 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr i8, ptr %429, i32 2308
  %431 = ptrtoint ptr %430 to i32
  %432 = and i32 %431, 3
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %427
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %430, i32 %417) #4, !srcloc !15
  br label %437

435:                                              ; preds = %427
  %436 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %436, ptr noundef nonnull @.str.1) #5
  br label %437

437:                                              ; preds = %435, %434, %424
  %438 = load ptr, ptr %8, align 8
  %439 = icmp eq ptr %438, null
  br i1 %439, label %447, label %440

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.dw_pcie_ops, ptr %438, i32 0, i32 2
  %442 = load ptr, ptr %441, align 4
  %443 = icmp eq ptr %442, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %440
  %445 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %446 = load ptr, ptr %445, align 4
  tail call void %442(ptr noundef %0, ptr noundef %446, i32 noundef 2312, i32 noundef 4, i32 noundef -2147483648) #4
  br label %457

447:                                              ; preds = %440, %437
  %448 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr i8, ptr %449, i32 2312
  %451 = ptrtoint ptr %450 to i32
  %452 = and i32 %451, 3
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %447
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %450, i32 -2147483648) #4, !srcloc !15
  br label %457

455:                                              ; preds = %447
  %456 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %456, ptr noundef nonnull @.str.1) #5
  br label %457

457:                                              ; preds = %455, %454, %444
  %458 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  br label %459

459:                                              ; preds = %483, %457
  %460 = phi i32 [ 0, %457 ], [ %493, %483 ]
  %461 = load ptr, ptr %8, align 8
  %462 = icmp eq ptr %461, null
  br i1 %462, label %470, label %463

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.dw_pcie_ops, ptr %461, i32 0, i32 1
  %465 = load ptr, ptr %464, align 4
  %466 = icmp eq ptr %465, null
  br i1 %466, label %470, label %467

467:                                              ; preds = %463
  %468 = load ptr, ptr %458, align 4
  %469 = tail call i32 %465(ptr noundef %0, ptr noundef %468, i32 noundef 2312, i32 noundef 4) #4
  br label %480

470:                                              ; preds = %463, %459
  %471 = load ptr, ptr %458, align 4
  %472 = getelementptr i8, ptr %471, i32 2312
  %473 = ptrtoint ptr %472 to i32
  %474 = and i32 %473, 3
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %470
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %472) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %480

478:                                              ; preds = %470
  %479 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %479, ptr noundef nonnull @.str) #5
  br label %483

480:                                              ; preds = %476, %467
  %481 = phi i32 [ %469, %467 ], [ %477, %476 ]
  %482 = icmp sgt i32 %481, -1
  br i1 %482, label %483, label %497

483:                                              ; preds = %480, %478
  %484 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %484(i32 noundef 214748000) #4
  %485 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %485(i32 noundef 214748000) #4
  %486 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %486(i32 noundef 214748000) #4
  %487 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %487(i32 noundef 214748000) #4
  %488 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %488(i32 noundef 214748000) #4
  %489 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %489(i32 noundef 214748000) #4
  %490 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %490(i32 noundef 214748000) #4
  %491 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %491(i32 noundef 214748000) #4
  %492 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %492(i32 noundef 214748000) #4
  %493 = add nuw nsw i32 %460, 1
  %494 = icmp eq i32 %493, 5
  br i1 %494, label %495, label %459

495:                                              ; preds = %483, %238
  %496 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %496, ptr noundef nonnull @.str.14) #5
  br label %497

497:                                              ; preds = %495, %480, %235
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_prog_ep_outbound_atu(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @__dw_pcie_prog_outbound_atu(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_prog_inbound_atu(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %146, label %11

11:                                               ; preds = %6
  %12 = trunc i64 %4 to i32
  %13 = shl i32 %2, 9
  %14 = or i32 %13, 256
  %15 = or i32 %13, 276
  %16 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.dw_pcie_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %21(ptr noundef %0, ptr noundef %25, i32 noundef %15, i32 noundef 4, i32 noundef %12) #4
  br label %36

26:                                               ; preds = %19, %11
  %27 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %15
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %12) #4, !srcloc !15
  br label %36

34:                                               ; preds = %26
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.15) #5
  br label %36

36:                                               ; preds = %34, %33, %23
  %37 = lshr i64 %4, 32
  %38 = trunc i64 %37 to i32
  %39 = or i32 %13, 280
  %40 = load ptr, ptr %16, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.dw_pcie_ops, ptr %40, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  tail call void %44(ptr noundef %0, ptr noundef %48, i32 noundef %39, i32 noundef 4, i32 noundef %38) #4
  br label %59

49:                                               ; preds = %42, %36
  %50 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %39
  %53 = ptrtoint ptr %52 to i32
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %38) #4, !srcloc !15
  br label %59

57:                                               ; preds = %49
  %58 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.15) #5
  br label %59

59:                                               ; preds = %57, %56, %46
  switch i32 %5, label %299 [
    i32 1, label %61
    i32 2, label %60
  ]

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i32 [ 2, %60 ], [ 0, %59 ]
  %63 = zext i8 %1 to i32
  %64 = shl nuw nsw i32 %63, 20
  %65 = or i32 %62, %64
  %66 = load ptr, ptr %16, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.dw_pcie_ops, ptr %66, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  tail call void %70(ptr noundef %0, ptr noundef %74, i32 noundef %14, i32 noundef 4, i32 noundef %65) #4
  br label %85

75:                                               ; preds = %68, %61
  %76 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %14
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %65) #4, !srcloc !15
  br label %85

83:                                               ; preds = %75
  %84 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.15) #5
  br label %85

85:                                               ; preds = %83, %82, %72
  %86 = shl i32 %3, 8
  %87 = or i32 %86, -1073217536
  %88 = or i32 %13, 260
  %89 = load ptr, ptr %16, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.dw_pcie_ops, ptr %89, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  tail call void %93(ptr noundef %0, ptr noundef %97, i32 noundef %88, i32 noundef 4, i32 noundef %87) #4
  br label %108

98:                                               ; preds = %91, %85
  %99 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %88
  %102 = ptrtoint ptr %101 to i32
  %103 = and i32 %102, 3
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %87) #4, !srcloc !15
  br label %108

106:                                              ; preds = %98
  %107 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.15) #5
  br label %108

108:                                              ; preds = %106, %105, %95
  %109 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  br label %110

110:                                              ; preds = %134, %108
  %111 = phi i32 [ 0, %108 ], [ %144, %134 ]
  %112 = load ptr, ptr %16, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.dw_pcie_ops, ptr %112, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %109, align 4
  %120 = tail call i32 %116(ptr noundef %0, ptr noundef %119, i32 noundef %88, i32 noundef 4) #4
  br label %131

121:                                              ; preds = %114, %110
  %122 = load ptr, ptr %109, align 4
  %123 = getelementptr i8, ptr %122, i32 %88
  %124 = ptrtoint ptr %123 to i32
  %125 = and i32 %124, 3
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %131

129:                                              ; preds = %121
  %130 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.16) #5
  br label %134

131:                                              ; preds = %127, %118
  %132 = phi i32 [ %120, %118 ], [ %128, %127 ]
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %299

134:                                              ; preds = %131, %129
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #4
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #4
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #4
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #4
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #4
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #4
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #4
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #4
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #4
  %144 = add nuw nsw i32 %111, 1
  %145 = icmp eq i32 %144, 5
  br i1 %145, label %297, label %110

146:                                              ; preds = %6
  %147 = or i32 %2, -2147483648
  %148 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.dw_pcie_ops, ptr %149, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  tail call void %153(ptr noundef %0, ptr noundef %157, i32 noundef 2304, i32 noundef 4, i32 noundef %147) #4
  br label %168

158:                                              ; preds = %151, %146
  %159 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %160, i32 2304
  %162 = ptrtoint ptr %161 to i32
  %163 = and i32 %162, 3
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %147) #4, !srcloc !15
  br label %168

166:                                              ; preds = %158
  %167 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.1) #5
  br label %168

168:                                              ; preds = %166, %165, %155
  %169 = trunc i64 %4 to i32
  %170 = load ptr, ptr %148, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.dw_pcie_ops, ptr %170, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  tail call void %174(ptr noundef %0, ptr noundef %178, i32 noundef 2328, i32 noundef 4, i32 noundef %169) #4
  br label %189

179:                                              ; preds = %172, %168
  %180 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %181, i32 2328
  %183 = ptrtoint ptr %182 to i32
  %184 = and i32 %183, 3
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %169) #4, !srcloc !15
  br label %189

187:                                              ; preds = %179
  %188 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.1) #5
  br label %189

189:                                              ; preds = %187, %186, %176
  %190 = lshr i64 %4, 32
  %191 = trunc i64 %190 to i32
  %192 = load ptr, ptr %148, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %201, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.dw_pcie_ops, ptr %192, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  tail call void %196(ptr noundef %0, ptr noundef %200, i32 noundef 2332, i32 noundef 4, i32 noundef %191) #4
  br label %211

201:                                              ; preds = %194, %189
  %202 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 2332
  %205 = ptrtoint ptr %204 to i32
  %206 = and i32 %205, 3
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %191) #4, !srcloc !15
  br label %211

209:                                              ; preds = %201
  %210 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.1) #5
  br label %211

211:                                              ; preds = %209, %208, %198
  switch i32 %5, label %299 [
    i32 1, label %213
    i32 2, label %212
  ]

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212, %211
  %214 = phi i32 [ 2, %212 ], [ 0, %211 ]
  %215 = zext i8 %1 to i32
  %216 = shl nuw nsw i32 %215, 20
  %217 = or i32 %214, %216
  %218 = load ptr, ptr %148, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %227, label %220

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.dw_pcie_ops, ptr %218, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  tail call void %222(ptr noundef %0, ptr noundef %226, i32 noundef 2308, i32 noundef 4, i32 noundef %217) #4
  br label %237

227:                                              ; preds = %220, %213
  %228 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr i8, ptr %229, i32 2308
  %231 = ptrtoint ptr %230 to i32
  %232 = and i32 %231, 3
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %217) #4, !srcloc !15
  br label %237

235:                                              ; preds = %227
  %236 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.1) #5
  br label %237

237:                                              ; preds = %235, %234, %224
  %238 = shl i32 %3, 8
  %239 = or i32 %238, -1073217536
  %240 = load ptr, ptr %148, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %249, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.dw_pcie_ops, ptr %240, i32 0, i32 2
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  tail call void %244(ptr noundef %0, ptr noundef %248, i32 noundef 2312, i32 noundef 4, i32 noundef %239) #4
  br label %259

249:                                              ; preds = %242, %237
  %250 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr i8, ptr %251, i32 2312
  %253 = ptrtoint ptr %252 to i32
  %254 = and i32 %253, 3
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %239) #4, !srcloc !15
  br label %259

257:                                              ; preds = %249
  %258 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.1) #5
  br label %259

259:                                              ; preds = %257, %256, %246
  %260 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  br label %261

261:                                              ; preds = %285, %259
  %262 = phi i32 [ 0, %259 ], [ %295, %285 ]
  %263 = load ptr, ptr %148, align 8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %272, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.dw_pcie_ops, ptr %263, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = load ptr, ptr %260, align 4
  %271 = tail call i32 %267(ptr noundef %0, ptr noundef %270, i32 noundef 2312, i32 noundef 4) #4
  br label %282

272:                                              ; preds = %265, %261
  %273 = load ptr, ptr %260, align 4
  %274 = getelementptr i8, ptr %273, i32 2312
  %275 = ptrtoint ptr %274 to i32
  %276 = and i32 %275, 3
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %282

280:                                              ; preds = %272
  %281 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str) #5
  br label %285

282:                                              ; preds = %278, %269
  %283 = phi i32 [ %271, %269 ], [ %279, %278 ]
  %284 = icmp sgt i32 %283, -1
  br i1 %284, label %285, label %299

285:                                              ; preds = %282, %280
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %286(i32 noundef 214748000) #4
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %287(i32 noundef 214748000) #4
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %288(i32 noundef 214748000) #4
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %289(i32 noundef 214748000) #4
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %290(i32 noundef 214748000) #4
  %291 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %291(i32 noundef 214748000) #4
  %292 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %292(i32 noundef 214748000) #4
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %293(i32 noundef 214748000) #4
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %294(i32 noundef 214748000) #4
  %295 = add nuw nsw i32 %262, 1
  %296 = icmp eq i32 %295, 5
  br i1 %296, label %297, label %261

297:                                              ; preds = %285, %134
  %298 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.3) #5
  br label %299

299:                                              ; preds = %297, %282, %211, %131, %59
  %300 = phi i32 [ -22, %211 ], [ -22, %59 ], [ -16, %297 ], [ 0, %282 ], [ 0, %131 ]
  ret i32 %300
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_disable_atu(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %48 [
    i32 1, label %5
    i32 2, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 0, %4 ], [ -2147483648, %3 ]
  %7 = or i32 %6, %1
  %8 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dw_pcie_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %13(ptr noundef %0, ptr noundef %17, i32 noundef 2304, i32 noundef 4, i32 noundef %7) #4
  br label %28

18:                                               ; preds = %11, %5
  %19 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 2304
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %7) #4, !srcloc !15
  br label %28

26:                                               ; preds = %18
  %27 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1) #5
  br label %28

28:                                               ; preds = %26, %25, %15
  %29 = load ptr, ptr %8, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dw_pcie_ops, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %33(ptr noundef %0, ptr noundef %37, i32 noundef 2312, i32 noundef 4, i32 noundef 2147483647) #4
  br label %48

38:                                               ; preds = %31, %28
  %39 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 2312
  %42 = ptrtoint ptr %41 to i32
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 2147483647) #4, !srcloc !15
  br label %48

46:                                               ; preds = %38
  %47 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.1) #5
  br label %48

48:                                               ; preds = %46, %45, %35, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_wait_for_link(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %24, %1
  %5 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %6 = load ptr, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dw_pcie_ops, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0) #4
  br label %21

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 1836
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %18 = and i32 %17, 536870928
  %19 = icmp eq i32 %18, 16
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %14, %12
  %22 = phi i32 [ %13, %12 ], [ %20, %14 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #4
  %25 = add nuw nsw i32 %5, 1
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %4

27:                                               ; preds = %24, %21
  %28 = phi ptr [ @.str.4, %21 ], [ @.str.5, %24 ]
  %29 = phi i32 [ 0, %21 ], [ -110, %24 ]
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull %28) #5
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_link_up(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_pcie_ops, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #4
  br label %19

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1836
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %16 = and i32 %15, 536870928
  %17 = icmp eq i32 %16, 16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i32 [ %10, %9 ], [ %18, %11 ]
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_upconfig_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_pcie_ops, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %7(ptr noundef %0, ptr noundef %11, i32 noundef 2240, i32 noundef 4) #4
  br label %24

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 2240
  %17 = ptrtoint ptr %16 to i32
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str) #5
  br label %24

24:                                               ; preds = %22, %20, %9
  %25 = phi i32 [ %12, %9 ], [ 0, %22 ], [ %21, %20 ]
  %26 = or i32 %25, 128
  %27 = load ptr, ptr %2, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dw_pcie_ops, ptr %27, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %31(ptr noundef %0, ptr noundef %35, i32 noundef 2240, i32 noundef 4, i32 noundef %26) #4
  br label %46

36:                                               ; preds = %29, %24
  %37 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 2240
  %40 = ptrtoint ptr %39 to i32
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %26) #4, !srcloc !15
  br label %46

44:                                               ; preds = %36
  %45 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.1) #5
  br label %46

46:                                               ; preds = %44, %43, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_iatu_detect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 18441
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %170

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dw_pcie_ops, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %15(ptr noundef %0, ptr noundef %19, i32 noundef 2304, i32 noundef 4) #4
  br label %31

21:                                               ; preds = %13, %9
  %22 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 2304
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %31

30:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #5
  br label %170

31:                                               ; preds = %28, %17
  %32 = phi i32 [ %20, %17 ], [ %29, %28 ]
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %170

34:                                               ; preds = %31, %1
  %35 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 14
  %36 = load i8, ptr %35, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %35, align 2
  %38 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.6) #4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %42, align 4
  %48 = add i32 %46, 1
  %49 = sub i32 %48, %47
  %50 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 4
  store i32 %49, ptr %50, align 8
  %51 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %42) #4
  store ptr %51, ptr %38, align 4
  br label %54

52:                                               ; preds = %41
  %53 = load ptr, ptr %38, align 4
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi ptr [ %53, %52 ], [ %51, %44 ]
  %56 = icmp eq ptr %55, null
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 3145728
  store ptr %62, ptr %38, align 4
  br label %63

63:                                               ; preds = %59, %54, %34
  %64 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 4096, ptr %64, align 8
  br label %72

68:                                               ; preds = %63
  %69 = sdiv i32 %65, 512
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 256) #4
  %71 = icmp sgt i32 %65, 511
  br i1 %71, label %72, label %353

72:                                               ; preds = %68, %67
  %73 = phi i32 [ 8, %67 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %75 = tail call i32 @llvm.smax.i32(i32 %73, i32 1) #4
  br label %76

76:                                               ; preds = %120, %72
  %77 = phi i32 [ 0, %72 ], [ %121, %120 ]
  %78 = shl i32 %77, 9
  %79 = or i32 %78, 20
  %80 = load ptr, ptr %74, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.dw_pcie_ops, ptr %80, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %38, align 4
  tail call void %84(ptr noundef %0, ptr noundef %87, i32 noundef %79, i32 noundef 4, i32 noundef 286326784) #4
  br label %97

88:                                               ; preds = %82, %76
  %89 = load ptr, ptr %38, align 4
  %90 = getelementptr i8, ptr %89, i32 %79
  %91 = ptrtoint ptr %90 to i32
  %92 = and i32 %91, 3
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 286326784) #4, !srcloc !15
  br label %97

95:                                               ; preds = %88
  %96 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.15) #5
  br label %97

97:                                               ; preds = %95, %94, %86
  %98 = load ptr, ptr %74, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.dw_pcie_ops, ptr %98, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %38, align 4
  %106 = tail call i32 %102(ptr noundef %0, ptr noundef %105, i32 noundef %79, i32 noundef 4) #4
  br label %117

107:                                              ; preds = %100, %97
  %108 = load ptr, ptr %38, align 4
  %109 = getelementptr i8, ptr %108, i32 %79
  %110 = ptrtoint ptr %109 to i32
  %111 = and i32 %110, 3
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %117

115:                                              ; preds = %107
  %116 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.16) #5
  br label %123

117:                                              ; preds = %113, %104
  %118 = phi i32 [ %106, %104 ], [ %114, %113 ]
  %119 = icmp eq i32 %118, 286326784
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = add nuw nsw i32 %77, 1
  %122 = icmp eq i32 %121, %75
  br i1 %122, label %123, label %76

123:                                              ; preds = %120, %117, %115
  %124 = phi i32 [ %77, %115 ], [ %77, %117 ], [ %75, %120 ]
  br label %125

125:                                              ; preds = %167, %123
  %126 = phi i32 [ 0, %123 ], [ %168, %167 ]
  %127 = shl i32 %126, 9
  %128 = or i32 %127, 276
  %129 = load ptr, ptr %74, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.dw_pcie_ops, ptr %129, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %38, align 4
  tail call void %133(ptr noundef %0, ptr noundef %136, i32 noundef %128, i32 noundef 4, i32 noundef 286326784) #4
  br label %146

137:                                              ; preds = %131, %125
  %138 = load ptr, ptr %38, align 4
  %139 = getelementptr i8, ptr %138, i32 %128
  %140 = ptrtoint ptr %139 to i32
  %141 = and i32 %140, 3
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 286326784) #4, !srcloc !15
  br label %146

144:                                              ; preds = %137
  %145 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.15) #5
  br label %146

146:                                              ; preds = %144, %143, %135
  %147 = load ptr, ptr %74, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.dw_pcie_ops, ptr %147, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %38, align 4
  %155 = tail call i32 %151(ptr noundef %0, ptr noundef %154, i32 noundef %128, i32 noundef 4) #4
  br label %164

156:                                              ; preds = %149, %146
  %157 = load ptr, ptr %38, align 4
  %158 = getelementptr i8, ptr %157, i32 %128
  %159 = ptrtoint ptr %158 to i32
  %160 = and i32 %159, 3
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %348

162:                                              ; preds = %156
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %164

164:                                              ; preds = %162, %153
  %165 = phi i32 [ %155, %153 ], [ %163, %162 ]
  %166 = icmp eq i32 %165, 286326784
  br i1 %166, label %167, label %353

167:                                              ; preds = %164
  %168 = add nuw nsw i32 %126, 1
  %169 = icmp eq i32 %168, %75
  br i1 %169, label %353, label %125

170:                                              ; preds = %31, %30, %7
  %171 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %172 = load ptr, ptr %171, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.dw_pcie_ops, ptr %172, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  tail call void %176(ptr noundef %0, ptr noundef %180, i32 noundef 2304, i32 noundef 4, i32 noundef 255) #4
  br label %191

181:                                              ; preds = %174, %170
  %182 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 2304
  %185 = ptrtoint ptr %184 to i32
  %186 = and i32 %185, 3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 255) #4, !srcloc !15
  br label %191

189:                                              ; preds = %181
  %190 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.1) #5
  br label %191

191:                                              ; preds = %189, %188, %178
  %192 = load ptr, ptr %171, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %202, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.dw_pcie_ops, ptr %192, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = tail call i32 %196(ptr noundef %0, ptr noundef %200, i32 noundef 2304, i32 noundef 4) #4
  br label %213

202:                                              ; preds = %194, %191
  %203 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 2304
  %206 = ptrtoint ptr %205 to i32
  %207 = and i32 %206, 3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %213

211:                                              ; preds = %202
  %212 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str) #5
  br label %217

213:                                              ; preds = %209, %198
  %214 = phi i32 [ %201, %198 ], [ %210, %209 ]
  %215 = add i32 %214, 1
  %216 = icmp ult i32 %214, 2147483647
  br i1 %216, label %217, label %353

217:                                              ; preds = %213, %211
  %218 = phi i32 [ 1, %211 ], [ %215, %213 ]
  %219 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  br label %220

220:                                              ; preds = %280, %217
  %221 = phi i32 [ 0, %217 ], [ %281, %280 ]
  %222 = load ptr, ptr %171, align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.dw_pcie_ops, ptr %222, i32 0, i32 2
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %219, align 4
  tail call void %226(ptr noundef %0, ptr noundef %229, i32 noundef 2304, i32 noundef 4, i32 noundef %221) #4
  br label %239

230:                                              ; preds = %224, %220
  %231 = load ptr, ptr %219, align 4
  %232 = getelementptr i8, ptr %231, i32 2304
  %233 = ptrtoint ptr %232 to i32
  %234 = and i32 %233, 3
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %221) #4, !srcloc !15
  br label %239

237:                                              ; preds = %230
  %238 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull @.str.1) #5
  br label %239

239:                                              ; preds = %237, %236, %228
  %240 = load ptr, ptr %171, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.dw_pcie_ops, ptr %240, i32 0, i32 2
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr %219, align 4
  tail call void %244(ptr noundef %0, ptr noundef %247, i32 noundef 2328, i32 noundef 4, i32 noundef 286326784) #4
  br label %257

248:                                              ; preds = %242, %239
  %249 = load ptr, ptr %219, align 4
  %250 = getelementptr i8, ptr %249, i32 2328
  %251 = ptrtoint ptr %250 to i32
  %252 = and i32 %251, 3
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 286326784) #4, !srcloc !15
  br label %257

255:                                              ; preds = %248
  %256 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.1) #5
  br label %257

257:                                              ; preds = %255, %254, %246
  %258 = load ptr, ptr %171, align 8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %267, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.dw_pcie_ops, ptr %258, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %219, align 4
  %266 = tail call i32 %262(ptr noundef %0, ptr noundef %265, i32 noundef 2328, i32 noundef 4) #4
  br label %277

267:                                              ; preds = %260, %257
  %268 = load ptr, ptr %219, align 4
  %269 = getelementptr i8, ptr %268, i32 2328
  %270 = ptrtoint ptr %269 to i32
  %271 = and i32 %270, 3
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %277

275:                                              ; preds = %267
  %276 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str) #5
  br label %283

277:                                              ; preds = %273, %264
  %278 = phi i32 [ %266, %264 ], [ %274, %273 ]
  %279 = icmp eq i32 %278, 286326784
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = add nuw nsw i32 %221, 1
  %282 = icmp eq i32 %281, %218
  br i1 %282, label %283, label %220

283:                                              ; preds = %280, %277, %275
  %284 = phi i32 [ %221, %275 ], [ %218, %280 ], [ %221, %277 ]
  %285 = tail call i32 @llvm.smax.i32(i32 %218, i32 1) #4
  br label %286

286:                                              ; preds = %345, %283
  %287 = phi i32 [ 0, %283 ], [ %346, %345 ]
  %288 = or i32 %287, -2147483648
  %289 = load ptr, ptr %171, align 8
  %290 = icmp eq ptr %289, null
  br i1 %290, label %297, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.dw_pcie_ops, ptr %289, i32 0, i32 2
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr %219, align 4
  tail call void %293(ptr noundef %0, ptr noundef %296, i32 noundef 2304, i32 noundef 4, i32 noundef %288) #4
  br label %306

297:                                              ; preds = %291, %286
  %298 = load ptr, ptr %219, align 4
  %299 = getelementptr i8, ptr %298, i32 2304
  %300 = ptrtoint ptr %299 to i32
  %301 = and i32 %300, 3
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %297
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %288) #4, !srcloc !15
  br label %306

304:                                              ; preds = %297
  %305 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %305, ptr noundef nonnull @.str.1) #5
  br label %306

306:                                              ; preds = %304, %303, %295
  %307 = load ptr, ptr %171, align 8
  %308 = icmp eq ptr %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.dw_pcie_ops, ptr %307, i32 0, i32 2
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = load ptr, ptr %219, align 4
  tail call void %311(ptr noundef %0, ptr noundef %314, i32 noundef 2328, i32 noundef 4, i32 noundef 286326784) #4
  br label %324

315:                                              ; preds = %309, %306
  %316 = load ptr, ptr %219, align 4
  %317 = getelementptr i8, ptr %316, i32 2328
  %318 = ptrtoint ptr %317 to i32
  %319 = and i32 %318, 3
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 286326784) #4, !srcloc !15
  br label %324

322:                                              ; preds = %315
  %323 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %323, ptr noundef nonnull @.str.1) #5
  br label %324

324:                                              ; preds = %322, %321, %313
  %325 = load ptr, ptr %171, align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %334, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.dw_pcie_ops, ptr %325, i32 0, i32 1
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %334, label %331

331:                                              ; preds = %327
  %332 = load ptr, ptr %219, align 4
  %333 = tail call i32 %329(ptr noundef %0, ptr noundef %332, i32 noundef 2328, i32 noundef 4) #4
  br label %342

334:                                              ; preds = %327, %324
  %335 = load ptr, ptr %219, align 4
  %336 = getelementptr i8, ptr %335, i32 2328
  %337 = ptrtoint ptr %336 to i32
  %338 = and i32 %337, 3
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %334
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %336) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %342

342:                                              ; preds = %340, %331
  %343 = phi i32 [ %333, %331 ], [ %341, %340 ]
  %344 = icmp eq i32 %343, 286326784
  br i1 %344, label %345, label %353

345:                                              ; preds = %342
  %346 = add nuw nsw i32 %287, 1
  %347 = icmp eq i32 %346, %285
  br i1 %347, label %353, label %286

348:                                              ; preds = %334, %156
  %349 = phi ptr [ @.str.16, %156 ], [ @.str, %334 ]
  %350 = phi i32 [ %126, %156 ], [ %287, %334 ]
  %351 = phi i32 [ %124, %156 ], [ %284, %334 ]
  %352 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull %349) #5
  br label %353

353:                                              ; preds = %348, %345, %342, %213, %167, %164, %68
  %354 = phi i32 [ 0, %68 ], [ 0, %213 ], [ %350, %348 ], [ %75, %167 ], [ %126, %164 ], [ %285, %345 ], [ %287, %342 ]
  %355 = phi i32 [ 0, %68 ], [ 0, %213 ], [ %351, %348 ], [ %124, %164 ], [ %124, %167 ], [ %284, %342 ], [ %284, %345 ]
  %356 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 5
  store i32 %354, ptr %356, align 4
  %357 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 6
  store i32 %355, ptr %357, align 8
  %358 = load ptr, ptr %0, align 8
  %359 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 14
  %360 = load i8, ptr %359, align 2
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  %363 = select i1 %362, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %358, ptr noundef nonnull @.str.7, ptr noundef nonnull %363) #5
  %364 = load ptr, ptr %0, align 8
  %365 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 6
  %366 = load i32, ptr %365, align 8
  %367 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 5
  %368 = load i32, ptr %367, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %364, ptr noundef nonnull @.str.10, i32 noundef %366, i32 noundef %368) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %114

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %0, i8 noundef zeroext 16) #4
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 12
  %12 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.dw_pcie_ops, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %17(ptr noundef %0, ptr noundef %21, i32 noundef %11, i32 noundef 4) #4
  br label %34

23:                                               ; preds = %15, %8
  %24 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %11
  %27 = ptrtoint ptr %26 to i32
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %34

32:                                               ; preds = %23
  %33 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str) #5
  br label %34

34:                                               ; preds = %32, %30, %19
  %35 = phi i32 [ %22, %19 ], [ 0, %32 ], [ %31, %30 ]
  %36 = add nuw nsw i32 %10, 48
  %37 = load ptr, ptr %12, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dw_pcie_ops, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %41(ptr noundef %0, ptr noundef %45, i32 noundef %36, i32 noundef 4) #4
  br label %58

47:                                               ; preds = %39, %34
  %48 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 %36
  %51 = ptrtoint ptr %50 to i32
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %58

56:                                               ; preds = %47
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str) #5
  br label %58

58:                                               ; preds = %56, %54, %43
  %59 = phi i32 [ %46, %43 ], [ 0, %56 ], [ %55, %54 ]
  %60 = and i32 %59, -16
  %61 = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %6
  %62 = load i8, ptr %61, align 1
  switch i8 %62, label %66 [
    i8 20, label %69
    i8 21, label %63
    i8 22, label %64
    i8 23, label %65
  ]

63:                                               ; preds = %58
  br label %69

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58
  br label %69

66:                                               ; preds = %58
  %67 = and i32 %35, 15
  %68 = and i32 %59, -48
  br label %69

69:                                               ; preds = %66, %65, %64, %63, %58
  %70 = phi i32 [ %68, %66 ], [ %60, %65 ], [ %60, %64 ], [ %60, %63 ], [ %60, %58 ]
  %71 = phi i32 [ %67, %66 ], [ 4, %65 ], [ 3, %64 ], [ 2, %63 ], [ 1, %58 ]
  %72 = or i32 %71, %70
  %73 = load ptr, ptr %12, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.dw_pcie_ops, ptr %73, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void %77(ptr noundef %0, ptr noundef %81, i32 noundef %36, i32 noundef 4, i32 noundef %72) #4
  br label %92

82:                                               ; preds = %75, %69
  %83 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %36
  %86 = ptrtoint ptr %85 to i32
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %72) #4, !srcloc !15
  br label %92

90:                                               ; preds = %82
  %91 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.1) #5
  br label %92

92:                                               ; preds = %90, %89, %79
  %93 = and i32 %35, -16
  %94 = or i32 %71, %93
  %95 = load ptr, ptr %12, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.dw_pcie_ops, ptr %95, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  tail call void %99(ptr noundef %0, ptr noundef %103, i32 noundef %11, i32 noundef 4, i32 noundef %94) #4
  br label %114

104:                                              ; preds = %97, %92
  %105 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 %11
  %108 = ptrtoint ptr %107 to i32
  %109 = and i32 %108, 3
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %94) #4, !srcloc !15
  br label %114

112:                                              ; preds = %104
  %113 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.1) #5
  br label %114

114:                                              ; preds = %112, %111, %101, %1
  %115 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 13
  %116 = load i8, ptr %115, align 8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %169, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.dw_pcie_ops, ptr %120, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 %124(ptr noundef %0, ptr noundef %128, i32 noundef 1804, i32 noundef 4) #4
  br label %141

130:                                              ; preds = %122, %118
  %131 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 1804
  %134 = ptrtoint ptr %133 to i32
  %135 = and i32 %134, 3
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %141

139:                                              ; preds = %130
  %140 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str) #5
  br label %141

141:                                              ; preds = %139, %137, %126
  %142 = phi i32 [ %129, %126 ], [ 0, %139 ], [ %138, %137 ]
  %143 = and i32 %142, -16776961
  %144 = load i8, ptr %115, align 8
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = or i32 %146, %143
  %148 = shl nuw nsw i32 %145, 16
  %149 = or i32 %147, %148
  %150 = load ptr, ptr %119, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.dw_pcie_ops, ptr %150, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  tail call void %154(ptr noundef %0, ptr noundef %158, i32 noundef 1804, i32 noundef 4, i32 noundef %149) #4
  br label %169

159:                                              ; preds = %152, %141
  %160 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 1804
  %163 = ptrtoint ptr %162 to i32
  %164 = and i32 %163, 3
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %149) #4, !srcloc !15
  br label %169

167:                                              ; preds = %159
  %168 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.1) #5
  br label %169

169:                                              ; preds = %167, %166, %156, %114
  %170 = getelementptr %struct.dw_pcie, ptr %0, i32 0, i32 13, i32 1
  %171 = load i8, ptr %170, align 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %224, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.dw_pcie_ops, ptr %175, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = tail call i32 %179(ptr noundef %0, ptr noundef %183, i32 noundef 2060, i32 noundef 4) #4
  br label %196

185:                                              ; preds = %177, %173
  %186 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr i8, ptr %187, i32 2060
  %189 = ptrtoint ptr %188 to i32
  %190 = and i32 %189, 3
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %196

194:                                              ; preds = %185
  %195 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str) #5
  br label %196

196:                                              ; preds = %194, %192, %181
  %197 = phi i32 [ %184, %181 ], [ 0, %194 ], [ %193, %192 ]
  %198 = and i32 %197, -256
  %199 = load i32, ptr %5, align 4
  %200 = add i32 %199, -1
  %201 = getelementptr %struct.dw_pcie, ptr %0, i32 0, i32 13, i32 %200
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i32
  %204 = or i32 %198, %203
  %205 = load ptr, ptr %174, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %214, label %207

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.dw_pcie_ops, ptr %205, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  tail call void %209(ptr noundef %0, ptr noundef %213, i32 noundef 2060, i32 noundef 4, i32 noundef %204) #4
  br label %224

214:                                              ; preds = %207, %196
  %215 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr i8, ptr %216, i32 2060
  %218 = ptrtoint ptr %217 to i32
  %219 = and i32 %218, 3
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %204) #4, !srcloc !15
  br label %224

222:                                              ; preds = %214
  %223 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.1) #5
  br label %224

224:                                              ; preds = %222, %221, %211, %169
  %225 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 9
  %226 = load ptr, ptr %225, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %236, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.dw_pcie_ops, ptr %226, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = tail call i32 %230(ptr noundef %0, ptr noundef %234, i32 noundef 1808, i32 noundef 4) #4
  br label %247

236:                                              ; preds = %228, %224
  %237 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr i8, ptr %238, i32 1808
  %240 = ptrtoint ptr %239 to i32
  %241 = and i32 %240, 3
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %247

245:                                              ; preds = %236
  %246 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str) #5
  br label %247

247:                                              ; preds = %245, %243, %232
  %248 = phi i32 [ %235, %232 ], [ 0, %245 ], [ %244, %243 ]
  %249 = and i32 %248, -161
  %250 = or i32 %249, 32
  %251 = load ptr, ptr %225, align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %260, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.dw_pcie_ops, ptr %251, i32 0, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  tail call void %255(ptr noundef %0, ptr noundef %259, i32 noundef 1808, i32 noundef 4, i32 noundef %250) #4
  br label %270

260:                                              ; preds = %253, %247
  %261 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr i8, ptr %262, i32 1808
  %264 = ptrtoint ptr %263 to i32
  %265 = and i32 %264, 3
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %250) #4, !srcloc !15
  br label %270

268:                                              ; preds = %260
  %269 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %269, ptr noundef nonnull @.str.1) #5
  br label %270

270:                                              ; preds = %268, %267, %257
  %271 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 11
  %272 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef %271, i32 noundef 1, i32 noundef 0) #4
  %273 = load i32, ptr %271, align 8
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %411, label %275

275:                                              ; preds = %270
  %276 = and i32 %250, -4128897
  %277 = add i32 %273, -1
  %278 = icmp ult i32 %277, 8
  br i1 %278, label %281, label %279

279:                                              ; preds = %281, %275
  %280 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.12, i32 noundef %273) #5
  br label %411

281:                                              ; preds = %275
  %282 = trunc i32 %277 to i8
  %283 = lshr i8 -117, %282
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %279, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds [8 x i32], ptr @switch.table.dw_pcie_setup, i32 0, i32 %277
  %288 = load i32, ptr %287, align 4
  %289 = or i32 %276, %288
  %290 = load ptr, ptr %225, align 8
  %291 = icmp eq ptr %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.dw_pcie_ops, ptr %290, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %298 = load ptr, ptr %297, align 4
  tail call void %294(ptr noundef %0, ptr noundef %298, i32 noundef 1808, i32 noundef 4, i32 noundef %289) #4
  br label %309

299:                                              ; preds = %292, %286
  %300 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr i8, ptr %301, i32 1808
  %303 = ptrtoint ptr %302 to i32
  %304 = and i32 %303, 3
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %289) #4, !srcloc !15
  br label %309

307:                                              ; preds = %299
  %308 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %308, ptr noundef nonnull @.str.1) #5
  br label %309

309:                                              ; preds = %307, %306, %296
  %310 = load ptr, ptr %225, align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %320, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.dw_pcie_ops, ptr %310, i32 0, i32 1
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %320, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = tail call i32 %314(ptr noundef %0, ptr noundef %318, i32 noundef 2060, i32 noundef 4) #4
  br label %331

320:                                              ; preds = %312, %309
  %321 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr i8, ptr %322, i32 2060
  %324 = ptrtoint ptr %323 to i32
  %325 = and i32 %324, 3
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %320
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %331

329:                                              ; preds = %320
  %330 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %330, ptr noundef nonnull @.str) #5
  br label %331

331:                                              ; preds = %329, %327, %316
  %332 = phi i32 [ %319, %316 ], [ 0, %329 ], [ %328, %327 ]
  %333 = and i32 %332, -7937
  %334 = load i32, ptr %271, align 8
  switch i32 %334, label %343 [
    i32 1, label %335
    i32 2, label %337
    i32 4, label %339
    i32 8, label %341
  ]

335:                                              ; preds = %331
  %336 = or i32 %333, 256
  br label %343

337:                                              ; preds = %331
  %338 = or i32 %333, 512
  br label %343

339:                                              ; preds = %331
  %340 = or i32 %333, 1024
  br label %343

341:                                              ; preds = %331
  %342 = or i32 %333, 2048
  br label %343

343:                                              ; preds = %341, %339, %337, %335, %331
  %344 = phi i32 [ %333, %331 ], [ %342, %341 ], [ %340, %339 ], [ %338, %337 ], [ %336, %335 ]
  %345 = load ptr, ptr %225, align 8
  %346 = icmp eq ptr %345, null
  br i1 %346, label %354, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.dw_pcie_ops, ptr %345, i32 0, i32 2
  %349 = load ptr, ptr %348, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  tail call void %349(ptr noundef %0, ptr noundef %353, i32 noundef 2060, i32 noundef 4, i32 noundef %344) #4
  br label %364

354:                                              ; preds = %347, %343
  %355 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr i8, ptr %356, i32 2060
  %358 = ptrtoint ptr %357 to i32
  %359 = and i32 %358, 3
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 %344) #4, !srcloc !15
  br label %364

362:                                              ; preds = %354
  %363 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %363, ptr noundef nonnull @.str.1) #5
  br label %364

364:                                              ; preds = %362, %361, %351
  %365 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef null) #4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %411, label %367

367:                                              ; preds = %364
  %368 = load ptr, ptr %225, align 8
  %369 = icmp eq ptr %368, null
  br i1 %369, label %378, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.dw_pcie_ops, ptr %368, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %376 = load ptr, ptr %375, align 4
  %377 = tail call i32 %372(ptr noundef %0, ptr noundef %376, i32 noundef 2848, i32 noundef 4) #4
  br label %389

378:                                              ; preds = %370, %367
  %379 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr i8, ptr %380, i32 2848
  %382 = ptrtoint ptr %381 to i32
  %383 = and i32 %382, 3
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %378
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %381) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %389

387:                                              ; preds = %378
  %388 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %388, ptr noundef nonnull @.str) #5
  br label %389

389:                                              ; preds = %387, %385, %374
  %390 = phi i32 [ %377, %374 ], [ 0, %387 ], [ %386, %385 ]
  %391 = or i32 %390, 3
  %392 = load ptr, ptr %225, align 8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %401, label %394

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.dw_pcie_ops, ptr %392, i32 0, i32 2
  %396 = load ptr, ptr %395, align 4
  %397 = icmp eq ptr %396, null
  br i1 %397, label %401, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %400 = load ptr, ptr %399, align 4
  tail call void %396(ptr noundef %0, ptr noundef %400, i32 noundef 2848, i32 noundef 4, i32 noundef %391) #4
  br label %411

401:                                              ; preds = %394, %389
  %402 = getelementptr inbounds %struct.dw_pcie, ptr %0, i32 0, i32 1
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr i8, ptr %403, i32 2848
  %405 = ptrtoint ptr %404 to i32
  %406 = and i32 %405, 3
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %401
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 %391) #4, !srcloc !15
  br label %411

409:                                              ; preds = %401
  %410 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %410, ptr noundef nonnull @.str.1) #5
  br label %411

411:                                              ; preds = %409, %408, %398, %364, %279, %270
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 4010929}
!9 = !{i64 2153432262}
!10 = !{i64 4011767}
!11 = !{i64 2153431967}
!12 = !{i64 4011547}
!13 = !{i64 2153432439}
!14 = !{i64 2153433858}
!15 = !{i64 4011349}
!16 = !{i64 2153434146}
!17 = !{i64 4010729}
!18 = !{i64 2153434434}
!19 = !{i64 4011152}
!20 = !{i64 2153454203}
