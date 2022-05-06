; ModuleID = '/llk/IR/drivers/base/devres.c_pt.bc'
source_filename = "../drivers/base/devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devres_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__devres_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___devres_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_for_each_res:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_for_each_res\22\09\09\09\09\09"
module asm "__kstrtabns_devres_for_each_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_free:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_free\22\09\09\09\09\09"
module asm "__kstrtabns_devres_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_add\22\09\09\09\09\09"
module asm "__kstrtabns_devres_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_find:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_find\22\09\09\09\09\09"
module asm "__kstrtabns_devres_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_get\22\09\09\09\09\09"
module asm "__kstrtabns_devres_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_remove\22\09\09\09\09\09"
module asm "__kstrtabns_devres_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_devres_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_release:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_release\22\09\09\09\09\09"
module asm "__kstrtabns_devres_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_open_group:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_open_group\22\09\09\09\09\09"
module asm "__kstrtabns_devres_open_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_close_group:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_close_group\22\09\09\09\09\09"
module asm "__kstrtabns_devres_close_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_remove_group:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_remove_group\22\09\09\09\09\09"
module asm "__kstrtabns_devres_remove_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devres_release_group:\09\09\09\09\09"
module asm "\09.asciz \09\22devres_release_group\22\09\09\09\09\09"
module asm "__kstrtabns_devres_release_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_add_action:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_add_action\22\09\09\09\09\09"
module asm "__kstrtabns_devm_add_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_remove_action:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_remove_action\22\09\09\09\09\09"
module asm "__kstrtabns_devm_remove_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_release_action:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_release_action\22\09\09\09\09\09"
module asm "__kstrtabns_devm_release_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_krealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_krealloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_krealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kstrdup\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kstrdup_const:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kstrdup_const\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kstrdup_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kvasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kvasprintf\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kvasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kasprintf\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kfree\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kmemdup:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kmemdup\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kmemdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_get_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_get_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_devm_get_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_devm_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_alloc_percpu\22\09\09\09\09\09"
module asm "__kstrtabns___devm_alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_free_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_devm_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.devres_node = type { %struct.list_head, ptr, ptr, i32 }
%struct.devres = type { %struct.devres_node, [44 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.devres_group = type { [2 x %struct.devres_node], ptr, i32 }
%struct.action_devres = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.pages_devres = type { i32, i32 }

@__kstrtab___devres_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___devres_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___devres_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devres_alloc_node to i32), ptr @__kstrtab___devres_alloc_node, ptr @__kstrtabns___devres_alloc_node }, section "___ksymtab_gpl+__devres_alloc_node", align 4
@__kstrtab_devres_for_each_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_for_each_res = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_for_each_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_for_each_res to i32), ptr @__kstrtab_devres_for_each_res, ptr @__kstrtabns_devres_for_each_res }, section "___ksymtab_gpl+devres_for_each_res", align 4
@__kstrtab_devres_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_free = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_free to i32), ptr @__kstrtab_devres_free, ptr @__kstrtabns_devres_free }, section "___ksymtab_gpl+devres_free", align 4
@__kstrtab_devres_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_add to i32), ptr @__kstrtab_devres_add, ptr @__kstrtabns_devres_add }, section "___ksymtab_gpl+devres_add", align 4
@__kstrtab_devres_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_find = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_find to i32), ptr @__kstrtab_devres_find, ptr @__kstrtabns_devres_find }, section "___ksymtab_gpl+devres_find", align 4
@__kstrtab_devres_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_get to i32), ptr @__kstrtab_devres_get, ptr @__kstrtabns_devres_get }, section "___ksymtab_gpl+devres_get", align 4
@.str = private unnamed_addr constant [4 x i8] c"REM\00", align 1
@__kstrtab_devres_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_remove to i32), ptr @__kstrtab_devres_remove, ptr @__kstrtabns_devres_remove }, section "___ksymtab_gpl+devres_remove", align 4
@__kstrtab_devres_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_destroy to i32), ptr @__kstrtab_devres_destroy, ptr @__kstrtabns_devres_destroy }, section "___ksymtab_gpl+devres_destroy", align 4
@__kstrtab_devres_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_release = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_release to i32), ptr @__kstrtab_devres_release, ptr @__kstrtabns_devres_release }, section "___ksymtab_gpl+devres_release", align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"drivers/base/devres.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"grp<\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"grp>\00", align 1
@__kstrtab_devres_open_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_open_group = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_open_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_open_group to i32), ptr @__kstrtab_devres_open_group, ptr @__kstrtabns_devres_open_group }, section "___ksymtab_gpl+devres_open_group", align 4
@__kstrtab_devres_close_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_close_group = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_close_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_close_group to i32), ptr @__kstrtab_devres_close_group, ptr @__kstrtabns_devres_close_group }, section "___ksymtab_gpl+devres_close_group", align 4
@__kstrtab_devres_remove_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_remove_group = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_remove_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_remove_group to i32), ptr @__kstrtab_devres_remove_group, ptr @__kstrtabns_devres_remove_group }, section "___ksymtab_gpl+devres_remove_group", align 4
@__kstrtab_devres_release_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_devres_release_group = external dso_local constant [0 x i8], align 1
@__ksymtab_devres_release_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devres_release_group to i32), ptr @__kstrtab_devres_release_group, ptr @__kstrtabns_devres_release_group }, section "___ksymtab_gpl+devres_release_group", align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"devm_action_release\00", align 1
@__kstrtab_devm_add_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_add_action = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_add_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_add_action to i32), ptr @__kstrtab_devm_add_action, ptr @__kstrtabns_devm_add_action }, section "___ksymtab_gpl+devm_add_action", align 4
@__kstrtab_devm_remove_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_remove_action = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_remove_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_remove_action to i32), ptr @__kstrtab_devm_remove_action, ptr @__kstrtabns_devm_remove_action }, section "___ksymtab_gpl+devm_remove_action", align 4
@__kstrtab_devm_release_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_release_action = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_release_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_release_action to i32), ptr @__kstrtab_devm_release_action, ptr @__kstrtabns_devm_release_action }, section "___ksymtab_gpl+devm_release_action", align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"devm_kzalloc_release\00", align 1
@__kstrtab_devm_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kmalloc to i32), ptr @__kstrtab_devm_kmalloc, ptr @__kstrtabns_devm_kmalloc }, section "___ksymtab_gpl+devm_kmalloc", align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"Pointer doesn't point to dynamically allocated memory.\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Memory chunk not managed or managed by a different device.\00", align 1
@__kstrtab_devm_krealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_krealloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_krealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_krealloc to i32), ptr @__kstrtab_devm_krealloc, ptr @__kstrtabns_devm_krealloc }, section "___ksymtab_gpl+devm_krealloc", align 4
@__kstrtab_devm_kstrdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kstrdup = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kstrdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kstrdup to i32), ptr @__kstrtab_devm_kstrdup, ptr @__kstrtabns_devm_kstrdup }, section "___ksymtab_gpl+devm_kstrdup", align 4
@__kstrtab_devm_kstrdup_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kstrdup_const = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kstrdup_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kstrdup_const to i32), ptr @__kstrtab_devm_kstrdup_const, ptr @__kstrtabns_devm_kstrdup_const }, section "___ksymtab_gpl+devm_kstrdup_const", align 4
@__kstrtab_devm_kvasprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kvasprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kvasprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kvasprintf to i32), ptr @__kstrtab_devm_kvasprintf, ptr @__kstrtabns_devm_kvasprintf }, section "___ksymtab+devm_kvasprintf", align 4
@__kstrtab_devm_kasprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kasprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kasprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kasprintf to i32), ptr @__kstrtab_devm_kasprintf, ptr @__kstrtabns_devm_kasprintf }, section "___ksymtab_gpl+devm_kasprintf", align 4
@__kstrtab_devm_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kfree to i32), ptr @__kstrtab_devm_kfree, ptr @__kstrtabns_devm_kfree }, section "___ksymtab_gpl+devm_kfree", align 4
@__kstrtab_devm_kmemdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kmemdup = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kmemdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kmemdup to i32), ptr @__kstrtab_devm_kmemdup, ptr @__kstrtabns_devm_kmemdup }, section "___ksymtab_gpl+devm_kmemdup", align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"devm_pages_release\00", align 1
@__kstrtab_devm_get_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_get_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_get_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_get_free_pages to i32), ptr @__kstrtab_devm_get_free_pages, ptr @__kstrtabns_devm_get_free_pages }, section "___ksymtab_gpl+devm_get_free_pages", align 4
@__kstrtab_devm_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_free_pages to i32), ptr @__kstrtab_devm_free_pages, ptr @__kstrtabns_devm_free_pages }, section "___ksymtab_gpl+devm_free_pages", align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"devm_percpu_release\00", align 1
@__kstrtab___devm_alloc_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_alloc_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_alloc_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_alloc_percpu to i32), ptr @__kstrtab___devm_alloc_percpu, ptr @__kstrtabns___devm_alloc_percpu }, section "___ksymtab_gpl+__devm_alloc_percpu", align 4
@__kstrtab_devm_free_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_free_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_free_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_free_percpu to i32), ptr @__kstrtab_devm_free_percpu, ptr @__kstrtabns_devm_free_percpu }, section "___ksymtab_gpl+devm_free_percpu", align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@__tracepoint_devres_log = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"REL\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab___devm_alloc_percpu, ptr @__ksymtab___devres_alloc_node, ptr @__ksymtab_devm_add_action, ptr @__ksymtab_devm_free_pages, ptr @__ksymtab_devm_free_percpu, ptr @__ksymtab_devm_get_free_pages, ptr @__ksymtab_devm_kasprintf, ptr @__ksymtab_devm_kfree, ptr @__ksymtab_devm_kmalloc, ptr @__ksymtab_devm_kmemdup, ptr @__ksymtab_devm_krealloc, ptr @__ksymtab_devm_kstrdup, ptr @__ksymtab_devm_kstrdup_const, ptr @__ksymtab_devm_kvasprintf, ptr @__ksymtab_devm_release_action, ptr @__ksymtab_devm_remove_action, ptr @__ksymtab_devres_add, ptr @__ksymtab_devres_close_group, ptr @__ksymtab_devres_destroy, ptr @__ksymtab_devres_find, ptr @__ksymtab_devres_for_each_res, ptr @__ksymtab_devres_free, ptr @__ksymtab_devres_get, ptr @__ksymtab_devres_open_group, ptr @__ksymtab_devres_release, ptr @__ksymtab_devres_release_group, ptr @__ksymtab_devres_remove, ptr @__ksymtab_devres_remove_group], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @__devres_alloc_node(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3, ptr noundef %4) #0 {
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 64) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = or i32 %2, 256
  %10 = extractvalue { i32, i1 } %6, 0
  %11 = tail call ptr @llvm.returnaddress(i32 0) #13
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call ptr @__kmalloc_track_caller(i32 noundef %10, i32 noundef %9, i32 noundef %12) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !8

15:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %13, i8 0, i32 64, i1 false) #13
  store volatile ptr %13, ptr %13, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.devres_node, ptr %13, i32 0, i32 1
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.devres_node, ptr %13, i32 0, i32 2
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.devres_node, ptr %13, i32 0, i32 3
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.devres, ptr %13, i32 0, i32 2
  br label %21

21:                                               ; preds = %15, %8, %5
  %22 = phi ptr [ %20, %15 ], [ null, %5 ], [ null, %8 ]
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devres_for_each_res(ptr noundef %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5) #0 {
  %7 = icmp eq ptr %4, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #13
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %33, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %2, null
  br label %17

17:                                               ; preds = %31, %15
  %18 = phi ptr [ %13, %15 ], [ %20, %31 ]
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.devres_node, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  br i1 %16, label %29, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.devres, ptr %18, i32 0, i32 2
  %27 = tail call i32 %2(ptr noundef %0, ptr noundef %26, ptr noundef %3) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %24
  %30 = getelementptr inbounds %struct.devres, ptr %18, i32 0, i32 2
  tail call void %4(ptr noundef %0, ptr noundef %30, ptr noundef %5) #13
  br label %31

31:                                               ; preds = %29, %25, %17
  %32 = icmp eq ptr %20, %11
  br i1 %32, label %33, label %17

33:                                               ; preds = %31, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #13
  br label %34

34:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devres_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

8:                                                ; preds = %3
  tail call void @kfree(ptr noundef %4) #13
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devres_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr i8, ptr %1, i32 -52
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 -48
  %9 = load i32, ptr %8, align 4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %24 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %3, ptr noundef %7, i32 noundef %9) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %25

25:                                               ; preds = %23, %12, %2
  %26 = load volatile ptr, ptr %3, align 4
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %32 = load ptr, ptr %31, align 4
  store ptr %3, ptr %31, align 4
  store ptr %30, ptr %3, align 4
  %33 = getelementptr i8, ptr %1, i32 -60
  store ptr %32, ptr %33, align 4
  store volatile ptr %3, ptr %32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devres_find(ptr noundef %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %27, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %2, null
  br label %13

13:                                               ; preds = %23, %11
  %14 = phi ptr [ %9, %11 ], [ %25, %23 ]
  %15 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  br i1 %12, label %27, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.devres, ptr %14, i32 0, i32 2
  %21 = tail call i32 %2(ptr noundef %0, ptr noundef %20, ptr noundef %3) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %13
  %24 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %27, label %13

27:                                               ; preds = %23, %19, %18, %4
  %28 = phi ptr [ null, %4 ], [ null, %23 ], [ %14, %18 ], [ %14, %19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.devres, ptr %28, i32 0, i32 2
  %31 = select i1 %29, ptr null, ptr %30
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devres_get(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr i8, ptr %1, i32 -56
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %31, label %13

13:                                               ; preds = %4
  %14 = icmp eq ptr %2, null
  br label %15

15:                                               ; preds = %25, %13
  %16 = phi ptr [ %11, %13 ], [ %27, %25 ]
  %17 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %8
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  br i1 %14, label %29, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.devres, ptr %16, i32 0, i32 2
  %23 = tail call i32 %2(ptr noundef %0, ptr noundef %22, ptr noundef %3) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %9
  br i1 %28, label %31, label %15

29:                                               ; preds = %21, %20
  %30 = icmp eq ptr %16, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %29, %25, %4
  %32 = getelementptr i8, ptr %1, i32 -64
  %33 = getelementptr i8, ptr %1, i32 -52
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %1, i32 -48
  %36 = load i32, ptr %35, align 4
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %51 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %32, ptr noundef %34, i32 noundef %36) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %52

52:                                               ; preds = %50, %39, %31
  %53 = load volatile ptr, ptr %32, align 4
  %54 = icmp eq ptr %53, %32
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

56:                                               ; preds = %52
  %57 = load ptr, ptr %10, align 4
  store ptr %32, ptr %10, align 4
  store ptr %9, ptr %32, align 4
  %58 = getelementptr i8, ptr %1, i32 -60
  store ptr %57, ptr %58, align 4
  store volatile ptr %32, ptr %57, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  br label %67

59:                                               ; preds = %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  %60 = icmp eq ptr %1, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %1, i32 -64
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %66, label %65, !prof !9

65:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

66:                                               ; preds = %61
  tail call void @kfree(ptr noundef %62) #13
  br label %67

67:                                               ; preds = %66, %59, %56
  %68 = phi ptr [ %32, %56 ], [ %16, %59 ], [ %16, %66 ]
  %69 = getelementptr inbounds %struct.devres, ptr %68, i32 0, i32 2
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devres_remove(ptr noundef %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %55, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %2, null
  br label %13

13:                                               ; preds = %23, %11
  %14 = phi ptr [ %9, %11 ], [ %25, %23 ]
  %15 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  br i1 %12, label %27, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.devres, ptr %14, i32 0, i32 2
  %21 = tail call i32 %2(ptr noundef %0, ptr noundef %20, ptr noundef %3) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %13
  %24 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %55, label %13

27:                                               ; preds = %19, %18
  %28 = icmp eq ptr %14, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %30, align 4
  %34 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %52 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %14, ptr noundef %35, i32 noundef %37) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %53

53:                                               ; preds = %51, %40, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  %54 = getelementptr inbounds %struct.devres, ptr %14, i32 0, i32 2
  br label %56

55:                                               ; preds = %27, %23, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi ptr [ %54, %53 ], [ null, %55 ]
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devres_destroy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @devres_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !8

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %5, i32 -64
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef %8) #13
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ 0, %12 ], [ -2, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devres_release(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @devres_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !8

7:                                                ; preds = %4
  tail call void %1(ptr noundef %0, ptr noundef nonnull %5) #13
  %8 = getelementptr i8, ptr %5, i32 -64
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef %8) #13
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ 0, %12 ], [ -2, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devres_release_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 519, i32 noundef 9, ptr noundef null) #13
  br label %46

8:                                                ; preds = %1
  %9 = load volatile ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %46, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #13
  %14 = load ptr, ptr %4, align 4
  %15 = call fastcc i32 @remove_nodes(ptr noundef %14, ptr noundef %4, ptr noundef nonnull %2)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #13
  %16 = load ptr, ptr %3, align 4
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %46, label %18

18:                                               ; preds = %41, %11
  %19 = phi ptr [ %21, %41 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.devres_node, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.devres_node, ptr %19, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = tail call ptr @llvm.thread.pointer() #13
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %40 = call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %19, ptr noundef %23, i32 noundef %25) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %41

41:                                               ; preds = %39, %28, %18
  %42 = getelementptr inbounds %struct.devres_node, ptr %19, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.devres, ptr %19, i32 0, i32 2
  call void %43(ptr noundef %0, ptr noundef %44) #13
  call void @kfree(ptr noundef %19) #13
  %45 = icmp eq ptr %21, %2
  br i1 %45, label %46, label %18

46:                                               ; preds = %41, %11, %8, %7
  %47 = phi i32 [ -19, %7 ], [ 0, %8 ], [ %15, %11 ], [ %15, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @remove_nodes(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %88, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %7

7:                                                ; preds = %35, %5
  %8 = phi ptr [ %0, %5 ], [ %38, %35 ]
  %9 = phi ptr [ %0, %5 ], [ %12, %35 ]
  %10 = phi i32 [ 0, %5 ], [ %37, %35 ]
  %11 = phi i32 [ 0, %5 ], [ %36, %35 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @group_open_release
  %16 = icmp eq ptr %14, @group_close_release
  %17 = getelementptr i8, ptr %9, i32 -20
  %18 = select i1 %16, ptr %17, ptr null
  %19 = select i1 %15, ptr %9, ptr %18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.devres_group, ptr %19, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = add i32 %11, 1
  br label %35

24:                                               ; preds = %7
  %25 = icmp eq ptr %9, %8
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = load ptr, ptr %8, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %27, %26 ], [ %8, %24 ]
  %30 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %12, ptr %31, align 4
  %33 = load ptr, ptr %6, align 4
  store ptr %9, ptr %6, align 4
  store ptr %2, ptr %9, align 4
  store ptr %33, ptr %30, align 4
  store volatile ptr %9, ptr %33, align 4
  %34 = add i32 %10, 1
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi i32 [ %23, %21 ], [ %11, %28 ]
  %37 = phi i32 [ %10, %21 ], [ %34, %28 ]
  %38 = phi ptr [ %8, %21 ], [ %29, %28 ]
  %39 = icmp eq ptr %12, %1
  br i1 %39, label %40, label %7

40:                                               ; preds = %35
  %41 = icmp eq i32 %36, 0
  %42 = icmp eq ptr %38, %1
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %88, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %46

46:                                               ; preds = %86, %44
  %47 = phi ptr [ %38, %44 ], [ %48, %86 ]
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.devres_node, ptr %47, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, @group_open_release
  %52 = icmp eq ptr %50, @group_close_release
  %53 = getelementptr i8, ptr %47, i32 -20
  %54 = select i1 %52, ptr %53, ptr null
  %55 = select i1 %51, ptr %47, ptr %54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !8

57:                                               ; preds = %46
  %58 = load volatile ptr, ptr %55, align 4
  %59 = icmp eq ptr %58, %55
  br i1 %59, label %60, label %61, !prof !8

60:                                               ; preds = %57, %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.devres_group, ptr %55, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = getelementptr [2 x %struct.devres_node], ptr %55, i32 0, i32 1
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = add i32 %63, 2
  store i32 %69, ptr %62, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = phi i32 [ %69, %68 ], [ %64, %61 ]
  %72 = add i32 %71, -3
  %73 = icmp ult i32 %72, -2
  br i1 %73, label %74, label %75, !prof !8

74:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 478, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

75:                                               ; preds = %70
  %76 = icmp eq i32 %71, 2
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  store volatile ptr %58, ptr %79, align 4
  %81 = load ptr, ptr %45, align 4
  store ptr %55, ptr %45, align 4
  store ptr %2, ptr %55, align 4
  store ptr %81, ptr %78, align 4
  store volatile ptr %55, ptr %81, align 4
  %82 = getelementptr [2 x %struct.devres_node], ptr %55, i32 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %65, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 4
  store volatile ptr %84, ptr %83, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %82, align 4
  br label %86

86:                                               ; preds = %77, %75
  %87 = icmp eq ptr %48, %1
  br i1 %87, label %88, label %46

88:                                               ; preds = %86, %40, %3
  %89 = phi i32 [ %37, %40 ], [ 0, %3 ], [ %37, %86 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devres_open_group(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %2, i32 noundef 48) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16, !prof !8

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 1
  store ptr @group_open_release, ptr %17, align 8
  %18 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1
  %19 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1, i32 1
  store ptr @group_close_release, ptr %19, align 4
  store volatile ptr %14, ptr %14, align 8
  %20 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %14, ptr %20, align 4
  store volatile ptr %18, ptr %18, align 4
  %21 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1, i32 0, i32 1
  store ptr %18, ptr %21, align 8
  %22 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 2
  store ptr @.str.2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 3
  store i32 0, ptr %23, align 8
  %24 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1, i32 2
  store ptr @.str.3, ptr %24, align 8
  %25 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1, i32 3
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.devres_group, ptr %14, i32 0, i32 1
  %27 = icmp eq ptr %1, null
  %28 = select i1 %27, ptr %14, ptr %1
  store ptr %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #13
  %31 = load ptr, ptr %22, align 4
  %32 = load i32, ptr %23, align 8
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %16
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %47 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %14, ptr noundef %31, i32 noundef %32) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %48

48:                                               ; preds = %46, %35, %16
  %49 = load volatile ptr, ptr %14, align 8
  %50 = icmp eq ptr %49, %14
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %54 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %14, ptr %54, align 4
  store ptr %53, ptr %14, align 8
  store ptr %55, ptr %20, align 4
  store volatile ptr %14, ptr %55, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #13
  %56 = load ptr, ptr %26, align 8
  br label %57

57:                                               ; preds = %52, %10
  %58 = phi ptr [ %56, %52 ], [ null, %10 ]
  ret ptr %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @group_open_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @group_close_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devres_close_group(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %59, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br label %11

11:                                               ; preds = %25, %9
  %12 = phi ptr [ %7, %9 ], [ %27, %25 ]
  %13 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @group_open_release
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  br i1 %10, label %21, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.devres_group, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %29, label %25

21:                                               ; preds = %16
  %22 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %17, %11
  %26 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %59, label %11

29:                                               ; preds = %21, %17
  %30 = icmp eq ptr %12, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %29
  %32 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1
  %33 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %51 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %32, ptr noundef %34, i32 noundef %36) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %52

52:                                               ; preds = %50, %39, %31
  %53 = load volatile ptr, ptr %32, align 4
  %54 = icmp eq ptr %53, %32
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 4
  store ptr %32, ptr %6, align 4
  store ptr %5, ptr %32, align 4
  %58 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %32, ptr %57, align 4
  br label %60

59:                                               ; preds = %29, %25, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 615, i32 noundef 9, ptr noundef null) #13
  br label %60

60:                                               ; preds = %59, %56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devres_remove_group(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %60, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br label %11

11:                                               ; preds = %25, %9
  %12 = phi ptr [ %7, %9 ], [ %27, %25 ]
  %13 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @group_open_release
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  br i1 %10, label %21, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.devres_group, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %29, label %25

21:                                               ; preds = %16
  %22 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %17, %11
  %26 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %60, label %11

29:                                               ; preds = %21, %17
  %30 = icmp eq ptr %12, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %32, align 4
  %36 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1
  %37 = getelementptr [2 x %struct.devres_node], ptr %12, i32 0, i32 1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %37, align 4
  %41 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %31
  %48 = tail call ptr @llvm.thread.pointer() #13
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %59 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %12, ptr noundef %42, i32 noundef %44) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %61

60:                                               ; preds = %29, %25, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 643, i32 noundef 9, ptr noundef null) #13
  br label %61

61:                                               ; preds = %60, %58, %47, %31
  %62 = phi ptr [ null, %60 ], [ %12, %31 ], [ %12, %47 ], [ %12, %58 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  tail call void @kfree(ptr noundef %62) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devres_release_group(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %69, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  br label %13

13:                                               ; preds = %27, %11
  %14 = phi ptr [ %9, %11 ], [ %29, %27 ]
  %15 = getelementptr inbounds %struct.devres_node, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @group_open_release
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  br i1 %12, label %23, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.devres_group, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %31, label %27

23:                                               ; preds = %18
  %24 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %19, %13
  %28 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %69, label %13

31:                                               ; preds = %23, %19
  %32 = icmp eq ptr %14, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %31
  %34 = getelementptr [2 x %struct.devres_node], ptr %14, i32 0, i32 1
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  %37 = select i1 %36, ptr %7, ptr %35
  %38 = call fastcc i32 @remove_nodes(ptr noundef nonnull %14, ptr noundef %37, ptr noundef nonnull %3)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  %39 = load ptr, ptr %4, align 4
  %40 = icmp eq ptr %39, %3
  br i1 %40, label %70, label %41

41:                                               ; preds = %64, %33
  %42 = phi ptr [ %44, %64 ], [ %39, %33 ]
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.devres_node, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.devres_node, ptr %42, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = tail call ptr @llvm.thread.pointer() #13
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %63 = call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %42, ptr noundef %46, i32 noundef %48) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %64

64:                                               ; preds = %62, %51, %41
  %65 = getelementptr inbounds %struct.devres_node, ptr %42, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.devres, ptr %42, i32 0, i32 2
  call void %66(ptr noundef %0, ptr noundef %67) #13
  call void @kfree(ptr noundef %42) #13
  %68 = icmp eq ptr %44, %3
  br i1 %68, label %70, label %41

69:                                               ; preds = %31, %27, %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 685, i32 noundef 9, ptr noundef null) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  br label %70

70:                                               ; preds = %69, %64, %33
  %71 = phi i32 [ 0, %69 ], [ %38, %33 ], [ %38, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_add_action(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @llvm.returnaddress(i32 0) #13
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @__kmalloc_track_caller(i32 noundef 72, i32 noundef 3520, i32 noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !8

8:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %6, i8 0, i32 64, i1 false) #13
  store volatile ptr %6, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.devres_node, ptr %6, i32 0, i32 1
  store ptr @devm_action_release, ptr %10, align 8
  %11 = getelementptr inbounds %struct.devres_node, ptr %6, i32 0, i32 2
  store ptr @.str.4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.devres_node, ptr %6, i32 0, i32 3
  store i32 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.devres, ptr %6, i32 0, i32 2
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  store ptr %2, ptr %13, align 4
  %16 = getelementptr inbounds %struct.devres, ptr %6, i32 1, i32 0, i32 0, i32 1
  store ptr %1, ptr %16, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %13)
  br label %17

17:                                               ; preds = %15, %8, %3
  %18 = phi i32 [ 0, %15 ], [ -12, %8 ], [ -12, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_action_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.action_devres, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  tail call void %4(ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_remove_action(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %53, label %10

10:                                               ; preds = %23, %3
  %11 = phi ptr [ %25, %23 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.devres_node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @devm_action_release
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.devres, ptr %11, i32 1, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.devres, ptr %11, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15, %10
  %24 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %53, label %10

27:                                               ; preds = %19
  %28 = icmp eq ptr %11, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %30, align 4
  %34 = getelementptr inbounds %struct.devres_node, ptr %11, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.devres_node, ptr %11, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %52 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %11, ptr noundef %35, i32 noundef %37) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %54

53:                                               ; preds = %27, %23, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %61

54:                                               ; preds = %51, %40, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  %55 = icmp eq ptr %20, null
  br i1 %55, label %61, label %56, !prof !8

56:                                               ; preds = %54
  %57 = load volatile ptr, ptr %11, align 4
  %58 = icmp eq ptr %57, %11
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

60:                                               ; preds = %56
  tail call void @kfree(ptr noundef nonnull %11) #13
  br label %62

61:                                               ; preds = %54, %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 762, i32 noundef 9, ptr noundef null) #13
  br label %62

62:                                               ; preds = %61, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_release_action(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %54, label %10

10:                                               ; preds = %23, %3
  %11 = phi ptr [ %25, %23 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.devres_node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @devm_action_release
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.devres, ptr %11, i32 1, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.devres, ptr %11, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15, %10
  %24 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %54, label %10

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.devres, ptr %11, i32 1, i32 0, i32 0, i32 1
  %29 = icmp eq ptr %11, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %31, align 4
  %35 = getelementptr inbounds %struct.devres_node, ptr %11, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.devres_node, ptr %11, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = tail call ptr @llvm.thread.pointer() #13
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %53 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %11, ptr noundef %36, i32 noundef %38) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %55

54:                                               ; preds = %27, %23, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %64

55:                                               ; preds = %52, %41, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  %56 = icmp eq ptr %20, null
  br i1 %56, label %64, label %57, !prof !8

57:                                               ; preds = %55
  %58 = load ptr, ptr %28, align 4
  %59 = load ptr, ptr %20, align 4
  tail call void %58(ptr noundef %59) #13
  %60 = load volatile ptr, ptr %11, align 4
  %61 = icmp eq ptr %60, %11
  br i1 %61, label %63, label %62, !prof !9

62:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

63:                                               ; preds = %57
  tail call void @kfree(ptr noundef nonnull %11) #13
  br label %65

64:                                               ; preds = %55, %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 784, i32 noundef 9, ptr noundef null) #13
  br label %65

65:                                               ; preds = %64, %63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %20, label %5, !prof !8

5:                                                ; preds = %3
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 64) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = extractvalue { i32, i1 } %6, 0
  %10 = tail call ptr @llvm.returnaddress(i32 0) #13
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call ptr @__kmalloc_track_caller(i32 noundef %9, i32 noundef %2, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !8

14:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %12, i8 0, i32 64, i1 false) #13
  store volatile ptr %12, ptr %12, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 1
  store ptr @devm_kmalloc_release, ptr %16, align 8
  %17 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 2
  store ptr @.str.5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.devres_node, ptr %12, i32 0, i32 3
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.devres, ptr %12, i32 0, i32 2
  tail call void @devres_add(ptr noundef %0, ptr noundef %19)
  br label %20

20:                                               ; preds = %14, %8, %5, %3
  %21 = phi ptr [ %19, %14 ], [ inttoptr (i32 16 to ptr), %3 ], [ null, %5 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @devm_kmalloc_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_krealloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void @devm_kfree(ptr noundef %0, ptr noundef %1)
  br label %91

7:                                                ; preds = %4
  %8 = icmp ult ptr %1, inttoptr (i32 17 to ptr)
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %7
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  br label %91

11:                                               ; preds = %7
  %12 = icmp uge ptr %1, @__start_rodata
  %13 = icmp ult ptr %1, @__end_rodata
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 867, i32 noundef 9, ptr noundef null) #13
  br label %91

16:                                               ; preds = %11
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 64) #13
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = extractvalue { i32, i1 } %17, 0
  br i1 %18, label %91, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %1, i32 -64
  %22 = tail call i32 @ksize(ptr noundef %21) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 879, i32 noundef 9, ptr noundef nonnull @.str.6) #13
  br label %91

25:                                               ; preds = %20
  %26 = icmp ugt i32 %19, %22
  br i1 %26, label %27, label %91

27:                                               ; preds = %25
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %19, i32 64) #13
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %91, label %30

30:                                               ; preds = %27
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = tail call ptr @llvm.returnaddress(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call ptr @__kmalloc_track_caller(i32 noundef %31, i32 noundef %3, i32 noundef %33) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %91, label %36, !prof !8

36:                                               ; preds = %30
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %34, i8 0, i32 64, i1 false) #13
  store volatile ptr %34, ptr %34, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.devres_node, ptr %34, i32 0, i32 1
  store ptr @devm_kmalloc_release, ptr %38, align 8
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #13
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %41
  br i1 %44, label %59, label %45

45:                                               ; preds = %53, %36
  %46 = phi ptr [ %55, %53 ], [ %43, %36 ]
  %47 = getelementptr inbounds %struct.devres_node, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, @devm_kmalloc_release
  %50 = getelementptr inbounds %struct.devres, ptr %46, i32 0, i32 2
  %51 = icmp eq ptr %50, %1
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %41
  br i1 %56, label %59, label %45

57:                                               ; preds = %45
  %58 = icmp eq ptr %46, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %57, %53, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #13
  tail call void @kfree(ptr noundef nonnull %34) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 909, i32 noundef 9, ptr noundef nonnull @.str.7) #13
  br label %91

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.devres_node, ptr %46, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.devres_node, ptr %46, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = tail call ptr @llvm.thread.pointer() #13
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %79 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %46, ptr noundef %62, i32 noundef %64) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %80

80:                                               ; preds = %78, %67, %60
  %81 = load volatile ptr, ptr %34, align 4
  %82 = icmp eq ptr %81, %34
  br i1 %82, label %84, label %83, !prof !9

83:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

84:                                               ; preds = %80
  %85 = load ptr, ptr %46, align 4
  store ptr %85, ptr %34, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %34, ptr %86, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %37, align 4
  store ptr %34, ptr %88, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #13
  %89 = getelementptr inbounds %struct.devres, ptr %34, i32 0, i32 2
  %90 = add i32 %22, -64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 64 %89, ptr align 64 %1, i32 %90, i1 false)
  tail call void @kfree(ptr noundef nonnull %46) #13
  br label %91

91:                                               ; preds = %84, %59, %30, %27, %25, %24, %16, %15, %9, %6
  %92 = phi ptr [ inttoptr (i32 16 to ptr), %6 ], [ %10, %9 ], [ null, %15 ], [ null, %24 ], [ %89, %84 ], [ null, %59 ], [ null, %16 ], [ %1, %25 ], [ null, %27 ], [ null, %30 ]
  ret ptr %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_kfree(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp uge ptr %1, @__start_rodata
  %4 = icmp ult ptr %1, @__end_rodata
  %5 = and i1 %3, %4
  %6 = icmp ult ptr %1, inttoptr (i32 17 to ptr)
  %7 = or i1 %6, %5
  br i1 %7, label %62, label %8, !prof !8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #13
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %53, label %15

15:                                               ; preds = %23, %8
  %16 = phi ptr [ %25, %23 ], [ %13, %8 ]
  %17 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @devm_kmalloc_release
  %20 = getelementptr inbounds %struct.devres, ptr %16, i32 0, i32 2
  %21 = icmp eq ptr %20, %1
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %11
  br i1 %26, label %53, label %15

27:                                               ; preds = %15
  %28 = icmp eq ptr %16, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %30, align 4
  %34 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %52 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %16, ptr noundef %35, i32 noundef %37) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %54

53:                                               ; preds = %27, %23, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #13
  br label %61

54:                                               ; preds = %51, %40, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #13
  %55 = icmp eq ptr %1, null
  br i1 %55, label %61, label %56, !prof !8

56:                                               ; preds = %54
  %57 = load volatile ptr, ptr %16, align 4
  %58 = icmp eq ptr %57, %16
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

60:                                               ; preds = %56
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %62

61:                                               ; preds = %54, %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1058, i32 noundef 9, ptr noundef null) #13
  br label %62

62:                                               ; preds = %61, %60, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @devm_kstrdup(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strlen(ptr noundef nonnull %1)
  %7 = add i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !8

9:                                                ; preds = %5
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 64) #13
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call ptr @llvm.returnaddress(i32 0) #13
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call ptr @__kmalloc_track_caller(i32 noundef %13, i32 noundef %2, i32 noundef %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18, !prof !8

18:                                               ; preds = %12
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %16, i8 0, i32 64, i1 false) #13
  store volatile ptr %16, ptr %16, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 1
  store ptr @devm_kmalloc_release, ptr %20, align 8
  %21 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 2
  store ptr @.str.5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.devres_node, ptr %16, i32 0, i32 3
  store i32 %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.devres, ptr %16, i32 0, i32 2
  tail call void @devres_add(ptr noundef %0, ptr noundef %23) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18, %5
  %26 = phi ptr [ %23, %18 ], [ inttoptr (i32 16 to ptr), %5 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i32 %7, i1 false)
  br label %27

27:                                               ; preds = %25, %18, %12, %9, %3
  %28 = phi ptr [ null, %3 ], [ %26, %25 ], [ null, %18 ], [ null, %9 ], [ null, %12 ]
  ret ptr %28
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_kstrdup_const(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp uge ptr %1, @__start_rodata
  %5 = icmp ult ptr %1, @__end_rodata
  %6 = and i1 %4, %5
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @strlen(ptr noundef nonnull %1) #13
  %11 = add i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13, !prof !8

13:                                               ; preds = %9
  %14 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 64) #13
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = extractvalue { i32, i1 } %14, 0
  %18 = tail call ptr @llvm.returnaddress(i32 0) #13
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call ptr @__kmalloc_track_caller(i32 noundef %17, i32 noundef %2, i32 noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22, !prof !8

22:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %20, i8 0, i32 64, i1 false) #13
  store volatile ptr %20, ptr %20, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.devres_node, ptr %20, i32 0, i32 1
  store ptr @devm_kmalloc_release, ptr %24, align 8
  %25 = getelementptr inbounds %struct.devres_node, ptr %20, i32 0, i32 2
  store ptr @.str.5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.devres_node, ptr %20, i32 0, i32 3
  store i32 %11, ptr %26, align 4
  %27 = getelementptr inbounds %struct.devres, ptr %20, i32 0, i32 2
  tail call void @devres_add(ptr noundef %0, ptr noundef %27) #13
  br label %28

28:                                               ; preds = %22, %9
  %29 = phi ptr [ %27, %22 ], [ inttoptr (i32 16 to ptr), %9 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %29, ptr nonnull align 1 %1, i32 %11, i1 false) #13
  br label %30

30:                                               ; preds = %28, %16, %13, %7, %3
  %31 = phi ptr [ %1, %3 ], [ null, %7 ], [ %29, %28 ], [ null, %13 ], [ null, %16 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @devm_kvasprintf(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, [1 x i32] %3) #0 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca %struct.__va_list, align 4
  %7 = extractvalue [1 x i32] %3, 0
  store i32 %7, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !17
  call void @llvm.va_copy(ptr nonnull %6, ptr nonnull %5)
  %8 = load i32, ptr %6, align 4
  %9 = insertvalue [1 x i32] poison, i32 %8, 0
  %10 = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %2, [1 x i32] %9)
  call void @llvm.va_end(ptr nonnull %6)
  %11 = add i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13, !prof !8

13:                                               ; preds = %4
  %14 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 64) #13
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = extractvalue { i32, i1 } %14, 0
  %18 = call ptr @llvm.returnaddress(i32 0) #13
  %19 = ptrtoint ptr %18 to i32
  %20 = call ptr @__kmalloc_track_caller(i32 noundef %17, i32 noundef %1, i32 noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22, !prof !8

22:                                               ; preds = %16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %20, i8 0, i32 64, i1 false) #13
  store volatile ptr %20, ptr %20, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.devres_node, ptr %20, i32 0, i32 1
  store ptr @devm_kmalloc_release, ptr %24, align 8
  %25 = getelementptr inbounds %struct.devres_node, ptr %20, i32 0, i32 2
  store ptr @.str.5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.devres_node, ptr %20, i32 0, i32 3
  store i32 %11, ptr %26, align 4
  %27 = getelementptr inbounds %struct.devres, ptr %20, i32 0, i32 2
  call void @devres_add(ptr noundef %0, ptr noundef %27) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22, %4
  %30 = phi ptr [ %27, %22 ], [ inttoptr (i32 16 to ptr), %4 ]
  %31 = load i32, ptr %5, align 4
  %32 = insertvalue [1 x i32] poison, i32 %31, 0
  %33 = call i32 @vsnprintf(ptr noundef nonnull %30, i32 noundef %11, ptr noundef %2, [1 x i32] %32)
  br label %34

34:                                               ; preds = %29, %22, %16, %13
  %35 = phi ptr [ %30, %29 ], [ null, %22 ], [ null, %13 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret ptr %35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @devm_kasprintf(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call noalias ptr @devm_kvasprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret ptr %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_kmemdup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %22, label %6, !prof !8

6:                                                ; preds = %4
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 64) #13
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = extractvalue { i32, i1 } %7, 0
  %11 = tail call ptr @llvm.returnaddress(i32 0) #13
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call ptr @__kmalloc_track_caller(i32 noundef %10, i32 noundef %3, i32 noundef %12) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15, !prof !8

15:                                               ; preds = %9
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %13, i8 0, i32 64, i1 false) #13
  store volatile ptr %13, ptr %13, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.devres_node, ptr %13, i32 0, i32 1
  store ptr @devm_kmalloc_release, ptr %17, align 8
  %18 = getelementptr inbounds %struct.devres_node, ptr %13, i32 0, i32 2
  store ptr @.str.5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.devres_node, ptr %13, i32 0, i32 3
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.devres, ptr %13, i32 0, i32 2
  tail call void @devres_add(ptr noundef %0, ptr noundef %20) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15, %4
  %23 = phi ptr [ %20, %15 ], [ inttoptr (i32 16 to ptr), %4 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %23, ptr align 1 %1, i32 %2, i1 false)
  br label %24

24:                                               ; preds = %22, %15, %9, %6
  %25 = phi ptr [ %23, %22 ], [ null, %15 ], [ null, %6 ], [ null, %9 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_get_free_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__get_free_pages(i32 noundef %1, i32 noundef %2) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6, !prof !8

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.returnaddress(i32 0) #13
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call ptr @__kmalloc_track_caller(i32 noundef 72, i32 noundef 3520, i32 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !8

11:                                               ; preds = %6
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %9, i8 0, i32 64, i1 false) #13
  store volatile ptr %9, ptr %9, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 1
  store ptr @devm_pages_release, ptr %13, align 8
  %14 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 2
  store ptr @.str.8, ptr %14, align 4
  %15 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 3
  store i32 8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.devres, ptr %9, i32 0, i32 2
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %11, %6
  tail call void @free_pages(i32 noundef %4, i32 noundef %2) #13
  br label %21

19:                                               ; preds = %11
  store i32 %4, ptr %16, align 4
  %20 = getelementptr inbounds %struct.devres, ptr %9, i32 1, i32 0, i32 0, i32 1
  store i32 %2, ptr %20, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %16)
  br label %21

21:                                               ; preds = %19, %18, %3
  %22 = phi i32 [ 0, %18 ], [ %4, %19 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pages_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.pages_devres, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void @free_pages(i32 noundef %3, i32 noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_free_pages(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %48, label %9

9:                                                ; preds = %18, %2
  %10 = phi ptr [ %20, %18 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.devres_node, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @devm_pages_release
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.devres, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %48, label %9

22:                                               ; preds = %14
  %23 = icmp eq ptr %10, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %25, align 4
  %29 = getelementptr inbounds %struct.devres_node, ptr %10, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.devres_node, ptr %10, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %24
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %47 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %10, ptr noundef %30, i32 noundef %32) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %49

48:                                               ; preds = %22, %18, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  br label %59

49:                                               ; preds = %46, %35, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  %50 = icmp eq ptr %15, null
  br i1 %50, label %59, label %51, !prof !8

51:                                               ; preds = %49
  %52 = load i32, ptr %15, align 4
  %53 = getelementptr inbounds %struct.devres, ptr %10, i32 1, i32 0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  tail call void @free_pages(i32 noundef %52, i32 noundef %54) #13
  %55 = load volatile ptr, ptr %10, align 4
  %56 = icmp eq ptr %55, %10
  br i1 %56, label %58, label %57, !prof !9

57:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

58:                                               ; preds = %51
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %60

59:                                               ; preds = %49, %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1155, i32 noundef 9, ptr noundef null) #13
  br label %60

60:                                               ; preds = %59, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_alloc_percpu(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__alloc_percpu(i32 noundef %1, i32 noundef %2) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.returnaddress(i32 0) #13
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call ptr @__kmalloc_track_caller(i32 noundef 68, i32 noundef 3520, i32 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !8

11:                                               ; preds = %6
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %9, i8 0, i32 64, i1 false) #13
  store volatile ptr %9, ptr %9, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 1
  store ptr @devm_percpu_release, ptr %13, align 8
  %14 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 2
  store ptr @.str.9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.devres_node, ptr %9, i32 0, i32 3
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.devres, ptr %9, i32 0, i32 2
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %6
  tail call void @free_percpu(ptr noundef nonnull %4) #13
  br label %20

19:                                               ; preds = %11
  store ptr %4, ptr %16, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %16)
  br label %20

20:                                               ; preds = %19, %18, %3
  %21 = phi ptr [ %4, %19 ], [ null, %18 ], [ null, %3 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_percpu_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @free_percpu(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_free_percpu(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %48, label %9

9:                                                ; preds = %18, %2
  %10 = phi ptr [ %20, %18 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.devres_node, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @devm_percpu_release
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.devres, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 64
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %48, label %9

22:                                               ; preds = %14
  %23 = icmp eq ptr %10, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %25, align 4
  %29 = getelementptr inbounds %struct.devres_node, ptr %10, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.devres_node, ptr %10, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %24
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %47 = tail call i32 @__traceiter_devres_log(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %10, ptr noundef %30, i32 noundef %32) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %49

48:                                               ; preds = %22, %18, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  br label %56

49:                                               ; preds = %46, %35, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  %50 = icmp eq ptr %15, null
  br i1 %50, label %56, label %51, !prof !8

51:                                               ; preds = %49
  %52 = load volatile ptr, ptr %10, align 4
  %53 = icmp eq ptr %52, %10
  br i1 %53, label %55, label %54, !prof !9

54:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

55:                                               ; preds = %51
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %57

56:                                               ; preds = %49, %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1220, i32 noundef 9, ptr noundef null) #13
  br label %57

57:                                               ; preds = %56, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_devres_log(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2151352308, i64 2151352794, i64 2151352345, i64 2151352401, i64 2151352435, i64 2151352459, i64 2151352500, i64 2151352521, i64 2151352549, i64 2151352583}
!11 = !{i64 2151318268}
!12 = !{i64 2151318450}
!13 = !{i64 2151335945, i64 2151336431, i64 2151335982, i64 2151336038, i64 2151336072, i64 2151336096, i64 2151336137, i64 2151336158, i64 2151336186, i64 2151336220}
!14 = !{i64 2151378632, i64 2151379118, i64 2151378669, i64 2151378725, i64 2151378759, i64 2151378783, i64 2151378824, i64 2151378845, i64 2151378873, i64 2151378907}
!15 = !{i64 2151379696, i64 2151380182, i64 2151379733, i64 2151379789, i64 2151379823, i64 2151379847, i64 2151379888, i64 2151379909, i64 2151379937, i64 2151379971}
!16 = !{i64 2151336991, i64 2151341538, i64 2151337028, i64 2151337084, i64 2151337118, i64 2151337142, i64 2151337183, i64 2151337204, i64 2151337232, i64 2151337266}
!17 = !{!"auto-init"}
