; ModuleID = '/llk/IR/crypto/algapi.c_pt.bc'
source_filename = "../crypto/algapi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_remove_spawns:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_remove_spawns\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_remove_spawns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alg_tested:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alg_tested\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alg_tested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_remove_final:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_remove_final\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_remove_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_alg\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_alg\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_algs:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_algs\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_algs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_algs:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_algs\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_algs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_template:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_template\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_templates:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_templates\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_templates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_template:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_template\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_templates:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_templates\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_templates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_lookup_template:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_lookup_template\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_lookup_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_instance\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_spawn:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_spawn\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_spawn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_drop_spawn:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_drop_spawn\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_drop_spawn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_spawn_tfm:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_spawn_tfm\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_spawn_tfm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_spawn_tfm2:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_spawn_tfm2\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_spawn_tfm2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_get_attr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_get_attr_type\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_get_attr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_check_attr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_check_attr_type\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_check_attr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_attr_alg_name:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_attr_alg_name\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_attr_alg_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_inst_setname:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_inst_setname\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_inst_setname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_init_queue\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_enqueue_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_enqueue_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_enqueue_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_enqueue_request_head:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_enqueue_request_head\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_enqueue_request_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_dequeue_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_dequeue_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_dequeue_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_inc\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___crypto_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22__crypto_xor\22\09\09\09\09\09"
module asm "__kstrtabns___crypto_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alg_extsize:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alg_extsize\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alg_extsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_type_has_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_type_has_alg\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_type_has_alg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.110, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.110 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.112, ptr, i32, i8, i8 }
%union.anon.112 = type { ptr }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.111, [52 x i8], [0 x ptr] }
%union.anon.111 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.crypto_larval = type { %struct.crypto_alg, ptr, %struct.completion, i32, i8, [39 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rtattr = type { i16, i16 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }

@__kstrtab_crypto_remove_spawns = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_remove_spawns = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_remove_spawns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_remove_spawns to i32), ptr @__kstrtab_crypto_remove_spawns, ptr @__kstrtabns_crypto_remove_spawns }, section "___ksymtab_gpl+crypto_remove_spawns", align 4
@crypto_alg_sem = external dso_local global %struct.rw_semaphore, align 4
@crypto_alg_list = external dso_local global %struct.list_head, align 4
@.str = private unnamed_addr constant [42 x i8] c"\013alg: Unexpected test result for %s: %d\0A\00", align 1
@__kstrtab_crypto_alg_tested = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alg_tested = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alg_tested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alg_tested to i32), ptr @__kstrtab_crypto_alg_tested, ptr @__kstrtabns_crypto_alg_tested }, section "___ksymtab_gpl+crypto_alg_tested", align 4
@__kstrtab_crypto_remove_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_remove_final = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_remove_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_remove_final to i32), ptr @__kstrtab_crypto_remove_final, ptr @__kstrtabns_crypto_remove_final }, section "___ksymtab_gpl+crypto_remove_final", align 4
@crypto_boot_test_finished = external dso_local global %struct.static_key_false, align 4
@__kstrtab_crypto_register_alg = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_alg = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_alg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_alg to i32), ptr @__kstrtab_crypto_register_alg, ptr @__kstrtabns_crypto_register_alg }, section "___ksymtab_gpl+crypto_register_alg", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"crypto/algapi.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Algorithm %s is not registered\00", align 1
@__kstrtab_crypto_unregister_alg = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_alg = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_alg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_alg to i32), ptr @__kstrtab_crypto_unregister_alg, ptr @__kstrtabns_crypto_unregister_alg }, section "___ksymtab_gpl+crypto_unregister_alg", align 4
@__kstrtab_crypto_register_algs = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_algs = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_algs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_algs to i32), ptr @__kstrtab_crypto_register_algs, ptr @__kstrtabns_crypto_register_algs }, section "___ksymtab_gpl+crypto_register_algs", align 4
@__kstrtab_crypto_unregister_algs = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_algs = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_algs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_algs to i32), ptr @__kstrtab_crypto_unregister_algs, ptr @__kstrtabns_crypto_unregister_algs }, section "___ksymtab_gpl+crypto_unregister_algs", align 4
@crypto_template_list = internal global %struct.list_head { ptr @crypto_template_list, ptr @crypto_template_list }, align 4
@__kstrtab_crypto_register_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_template = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_template to i32), ptr @__kstrtab_crypto_register_template, ptr @__kstrtabns_crypto_register_template }, section "___ksymtab_gpl+crypto_register_template", align 4
@__kstrtab_crypto_register_templates = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_templates = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_templates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_templates to i32), ptr @__kstrtab_crypto_register_templates, ptr @__kstrtabns_crypto_register_templates }, section "___ksymtab_gpl+crypto_register_templates", align 4
@__kstrtab_crypto_unregister_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_template = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_template to i32), ptr @__kstrtab_crypto_unregister_template, ptr @__kstrtabns_crypto_unregister_template }, section "___ksymtab_gpl+crypto_unregister_template", align 4
@__kstrtab_crypto_unregister_templates = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_templates = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_templates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_templates to i32), ptr @__kstrtab_crypto_unregister_templates, ptr @__kstrtabns_crypto_unregister_templates }, section "___ksymtab_gpl+crypto_unregister_templates", align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"crypto-%s\00", align 1
@__kstrtab_crypto_lookup_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_lookup_template = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_lookup_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_lookup_template to i32), ptr @__kstrtab_crypto_lookup_template, ptr @__kstrtabns_crypto_lookup_template }, section "___ksymtab_gpl+crypto_lookup_template", align 4
@__kstrtab_crypto_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_instance to i32), ptr @__kstrtab_crypto_register_instance, ptr @__kstrtabns_crypto_register_instance }, section "___ksymtab_gpl+crypto_register_instance", align 4
@__kstrtab_crypto_unregister_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_instance to i32), ptr @__kstrtab_crypto_unregister_instance, ptr @__kstrtabns_crypto_unregister_instance }, section "___ksymtab_gpl+crypto_unregister_instance", align 4
@crypto_grab_spawn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_crypto_grab_spawn = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_spawn = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_spawn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_spawn to i32), ptr @__kstrtab_crypto_grab_spawn, ptr @__kstrtabns_crypto_grab_spawn }, section "___ksymtab_gpl+crypto_grab_spawn", align 4
@__kstrtab_crypto_drop_spawn = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_drop_spawn = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_drop_spawn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_drop_spawn to i32), ptr @__kstrtab_crypto_drop_spawn, ptr @__kstrtabns_crypto_drop_spawn }, section "___ksymtab_gpl+crypto_drop_spawn", align 4
@__kstrtab_crypto_spawn_tfm = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_spawn_tfm = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_spawn_tfm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_spawn_tfm to i32), ptr @__kstrtab_crypto_spawn_tfm, ptr @__kstrtabns_crypto_spawn_tfm }, section "___ksymtab_gpl+crypto_spawn_tfm", align 4
@__kstrtab_crypto_spawn_tfm2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_spawn_tfm2 = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_spawn_tfm2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_spawn_tfm2 to i32), ptr @__kstrtab_crypto_spawn_tfm2, ptr @__kstrtabns_crypto_spawn_tfm2 }, section "___ksymtab_gpl+crypto_spawn_tfm2", align 4
@crypto_chain = external dso_local global %struct.blocking_notifier_head, align 4
@__kstrtab_crypto_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_notifier to i32), ptr @__kstrtab_crypto_register_notifier, ptr @__kstrtabns_crypto_register_notifier }, section "___ksymtab_gpl+crypto_register_notifier", align 4
@__kstrtab_crypto_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_notifier to i32), ptr @__kstrtab_crypto_unregister_notifier, ptr @__kstrtabns_crypto_unregister_notifier }, section "___ksymtab_gpl+crypto_unregister_notifier", align 4
@__kstrtab_crypto_get_attr_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_get_attr_type = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_get_attr_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_get_attr_type to i32), ptr @__kstrtab_crypto_get_attr_type, ptr @__kstrtabns_crypto_get_attr_type }, section "___ksymtab_gpl+crypto_get_attr_type", align 4
@__kstrtab_crypto_check_attr_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_check_attr_type = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_check_attr_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_check_attr_type to i32), ptr @__kstrtab_crypto_check_attr_type, ptr @__kstrtabns_crypto_check_attr_type }, section "___ksymtab_gpl+crypto_check_attr_type", align 4
@__kstrtab_crypto_attr_alg_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_attr_alg_name = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_attr_alg_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_attr_alg_name to i32), ptr @__kstrtab_crypto_attr_alg_name, ptr @__kstrtabns_crypto_attr_alg_name }, section "___ksymtab_gpl+crypto_attr_alg_name", align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@__kstrtab_crypto_inst_setname = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_inst_setname = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_inst_setname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_inst_setname to i32), ptr @__kstrtab_crypto_inst_setname, ptr @__kstrtabns_crypto_inst_setname }, section "___ksymtab_gpl+crypto_inst_setname", align 4
@__kstrtab_crypto_init_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_init_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_init_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_init_queue to i32), ptr @__kstrtab_crypto_init_queue, ptr @__kstrtabns_crypto_init_queue }, section "___ksymtab_gpl+crypto_init_queue", align 4
@__kstrtab_crypto_enqueue_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_enqueue_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_enqueue_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_enqueue_request to i32), ptr @__kstrtab_crypto_enqueue_request, ptr @__kstrtabns_crypto_enqueue_request }, section "___ksymtab_gpl+crypto_enqueue_request", align 4
@__kstrtab_crypto_enqueue_request_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_enqueue_request_head = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_enqueue_request_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_enqueue_request_head to i32), ptr @__kstrtab_crypto_enqueue_request_head, ptr @__kstrtabns_crypto_enqueue_request_head }, section "___ksymtab_gpl+crypto_enqueue_request_head", align 4
@__kstrtab_crypto_dequeue_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_dequeue_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_dequeue_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_dequeue_request to i32), ptr @__kstrtab_crypto_dequeue_request, ptr @__kstrtabns_crypto_dequeue_request }, section "___ksymtab_gpl+crypto_dequeue_request", align 4
@__kstrtab_crypto_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_inc to i32), ptr @__kstrtab_crypto_inc, ptr @__kstrtabns_crypto_inc }, section "___ksymtab_gpl+crypto_inc", align 4
@__kstrtab___crypto_xor = external dso_local constant [0 x i8], align 1
@__kstrtabns___crypto_xor = external dso_local constant [0 x i8], align 1
@__ksymtab___crypto_xor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__crypto_xor to i32), ptr @__kstrtab___crypto_xor, ptr @__kstrtabns___crypto_xor }, section "___ksymtab_gpl+__crypto_xor", align 4
@__kstrtab_crypto_alg_extsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alg_extsize = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alg_extsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alg_extsize to i32), ptr @__kstrtab_crypto_alg_extsize, ptr @__kstrtabns_crypto_alg_extsize }, section "___ksymtab_gpl+crypto_alg_extsize", align 4
@__kstrtab_crypto_type_has_alg = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_type_has_alg = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_type_has_alg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_type_has_alg to i32), ptr @__kstrtab_crypto_type_has_alg, ptr @__kstrtabns_crypto_type_has_alg }, section "___ksymtab_gpl+crypto_type_has_alg", align 4
@__initcall__kmod_crypto_algapi__321_1322_crypto_algapi_init7 = internal global ptr @crypto_algapi_init, section ".initcall7.init", align 4
@__exitcall_crypto_algapi_exit = internal global ptr @crypto_algapi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file322 = internal constant [40 x i8] c"crypto_algapi.file=crypto/crypto_algapi\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [26 x i8] c"crypto_algapi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [55 x i8] c"crypto_algapi.description=Cryptographic algorithms API\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep325 = internal constant [37 x i8] c"crypto_algapi.softdep=pre: cryptomgr\00", section ".modinfo", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__UNIQUE_ID_softdep325, ptr @__exitcall_crypto_algapi_exit, ptr @__initcall__kmod_crypto_algapi__321_1322_crypto_algapi_init7, ptr @__ksymtab___crypto_xor, ptr @__ksymtab_crypto_alg_extsize, ptr @__ksymtab_crypto_alg_tested, ptr @__ksymtab_crypto_attr_alg_name, ptr @__ksymtab_crypto_check_attr_type, ptr @__ksymtab_crypto_dequeue_request, ptr @__ksymtab_crypto_drop_spawn, ptr @__ksymtab_crypto_enqueue_request, ptr @__ksymtab_crypto_enqueue_request_head, ptr @__ksymtab_crypto_get_attr_type, ptr @__ksymtab_crypto_grab_spawn, ptr @__ksymtab_crypto_inc, ptr @__ksymtab_crypto_init_queue, ptr @__ksymtab_crypto_inst_setname, ptr @__ksymtab_crypto_lookup_template, ptr @__ksymtab_crypto_register_alg, ptr @__ksymtab_crypto_register_algs, ptr @__ksymtab_crypto_register_instance, ptr @__ksymtab_crypto_register_notifier, ptr @__ksymtab_crypto_register_template, ptr @__ksymtab_crypto_register_templates, ptr @__ksymtab_crypto_remove_final, ptr @__ksymtab_crypto_remove_spawns, ptr @__ksymtab_crypto_spawn_tfm, ptr @__ksymtab_crypto_spawn_tfm2, ptr @__ksymtab_crypto_type_has_alg, ptr @__ksymtab_crypto_unregister_alg, ptr @__ksymtab_crypto_unregister_algs, ptr @__ksymtab_crypto_unregister_instance, ptr @__ksymtab_crypto_unregister_notifier, ptr @__ksymtab_crypto_unregister_template, ptr @__ksymtab_crypto_unregister_templates, ptr @crypto_algapi_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_remove_spawns(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.list_head, align 8
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr %0, ptr %2
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr %4, ptr %4, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr %5, ptr %5, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %6, ptr %6, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %37, label %17

17:                                               ; preds = %35, %3
  %18 = phi ptr [ %19, %35 ], [ %15, %3 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_spawn, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 16
  %24 = xor i32 %23, %10
  %25 = getelementptr inbounds %struct.crypto_spawn, ptr %18, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %19, ptr %31, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %18, ptr %34, align 4
  store ptr %33, ptr %18, align 4
  store ptr %6, ptr %30, align 4
  store volatile ptr %18, ptr %6, align 8
  br label %35

35:                                               ; preds = %29, %17
  %36 = icmp eq ptr %19, %14
  br i1 %36, label %37, label %17

37:                                               ; preds = %35, %3
  br label %38

38:                                               ; preds = %67, %37
  %39 = phi ptr [ %6, %37 ], [ %68, %67 ]
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %69, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.crypto_spawn, ptr %40, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %40, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %40, ptr %50, align 4
  store ptr %49, ptr %40, align 4
  store ptr %5, ptr %45, align 4
  store volatile ptr %40, ptr %5, align 8
  %51 = getelementptr inbounds %struct.crypto_spawn, ptr %40, i32 0, i32 6
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = icmp ne ptr %44, %2
  %55 = select i1 %53, i1 true, i1 %54
  %56 = getelementptr inbounds %struct.crypto_spawn, ptr %40, i32 0, i32 5
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 4
  br i1 %53, label %69, label %58

58:                                               ; preds = %42
  %59 = icmp eq ptr %44, %0
  br i1 %59, label %60, label %61, !prof !9

60:                                               ; preds = %58
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #18, !srcloc !10
  unreachable

61:                                               ; preds = %58
  %62 = icmp eq ptr %44, %2
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.crypto_alg, ptr %44, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %95, %63
  %68 = phi ptr [ %64, %63 ], [ %96, %95 ]
  br label %38

69:                                               ; preds = %63, %61, %42, %38
  %70 = load volatile ptr, ptr %5, align 8
  %71 = icmp eq ptr %70, %5
  %72 = icmp eq ptr %70, null
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %4, align 8
  br label %98

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %70, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store volatile ptr %79, ptr %78, align 4
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %70, ptr %82, align 4
  store ptr %81, ptr %70, align 4
  store ptr %4, ptr %77, align 4
  store volatile ptr %70, ptr %4, align 8
  %83 = load ptr, ptr %78, align 4
  %84 = icmp eq ptr %83, %5
  br i1 %84, label %95, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.crypto_spawn, ptr %70, i32 0, i32 5
  %87 = load i8, ptr %86, align 4, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.crypto_spawn, ptr %83, i32 0, i32 5
  store i8 0, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = getelementptr inbounds %struct.crypto_spawn, ptr %83, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.crypto_alg, ptr %93, i32 0, i32 1
  br label %95

95:                                               ; preds = %91, %76
  %96 = phi ptr [ %94, %91 ], [ %6, %76 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %67

98:                                               ; preds = %95, %74
  %99 = phi ptr [ %75, %74 ], [ %70, %95 ]
  %100 = icmp eq ptr %99, %4
  br i1 %100, label %158, label %101

101:                                              ; preds = %156, %98
  %102 = phi ptr [ %103, %156 ], [ %99, %98 ]
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.crypto_spawn, ptr %102, i32 0, i32 5
  %105 = load i8, ptr %104, align 4, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.crypto_spawn, ptr %102, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.crypto_alg, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %112, ptr %113, align 4
  store volatile ptr %103, ptr %112, align 4
  %114 = load ptr, ptr %110, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %102, ptr %115, align 4
  store ptr %114, ptr %102, align 4
  store ptr %110, ptr %111, align 4
  store volatile ptr %102, ptr %110, align 4
  br label %156

116:                                              ; preds = %101
  %117 = getelementptr inbounds %struct.crypto_spawn, ptr %102, i32 0, i32 6
  %118 = load i8, ptr %117, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %156, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.crypto_spawn, ptr %102, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.crypto_instance, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 64
  %125 = getelementptr inbounds %struct.crypto_alg, ptr %122, i32 0, i32 2
  %126 = load i32, ptr %125, align 16
  %127 = and i32 %126, 32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %156

129:                                              ; preds = %120
  %130 = or i32 %126, 32
  store i32 %130, ptr %125, align 16
  %131 = icmp eq ptr %124, null
  br i1 %131, label %156, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.crypto_template, ptr %124, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = call zeroext i1 @try_module_get(ptr noundef %134) #18
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %122, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  store ptr %138, ptr %140, align 4
  store volatile ptr %139, ptr %138, align 4
  %141 = load ptr, ptr %1, align 4
  %142 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  store ptr %122, ptr %142, align 4
  store ptr %141, ptr %122, align 4
  store ptr %1, ptr %137, align 4
  store volatile ptr %122, ptr %1, align 4
  %143 = getelementptr inbounds %struct.crypto_instance, ptr %122, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.crypto_instance, ptr %122, i32 0, i32 2, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  store volatile ptr %144, ptr %146, align 4
  %147 = icmp eq ptr %144, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.hlist_node, ptr %144, i32 0, i32 1
  store volatile ptr %146, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %136
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  %151 = getelementptr inbounds %struct.crypto_alg, ptr %122, i32 0, i32 14
  store ptr @crypto_destroy_instance, ptr %151, align 8
  %152 = getelementptr inbounds %struct.crypto_alg, ptr %122, i32 0, i32 1
  %153 = load volatile ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %152
  br i1 %154, label %156, label %155, !prof !11

155:                                              ; preds = %150
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #18, !srcloc !12
  unreachable

156:                                              ; preds = %150, %132, %129, %120, %116, %107
  %157 = icmp eq ptr %103, %4
  br i1 %157, label %158, label %101

158:                                              ; preds = %156, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_alg_tested(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %5 = load ptr, ptr @crypto_alg_list, align 4
  %6 = icmp eq ptr %5, @crypto_alg_list
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %2
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, 112
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 9
  %15 = call i32 @strcmp(ptr noundef %14, ptr noundef %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %7
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, @crypto_alg_list
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %2
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %1) #19
  br label %112

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 2
  %24 = or i32 %10, 32
  store i32 %24, ptr %23, align 16
  %25 = getelementptr inbounds %struct.crypto_larval, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 64
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %28, label %110

28:                                               ; preds = %22
  %29 = load volatile ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %110, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 2
  %33 = load i32, ptr %32, align 16
  %34 = or i32 %33, 1024
  store i32 %34, ptr %32, align 16
  %35 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 8
  %36 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 6
  br label %37

37:                                               ; preds = %52, %31
  %38 = phi ptr [ %5, %31 ], [ %53, %52 ]
  %39 = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 16
  %41 = and i32 %40, 112
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 8
  %45 = call i32 @strcmp(ptr noundef %35, ptr noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 6
  %49 = load i32, ptr %48, align 32
  %50 = load i32, ptr %36, align 32
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %43, %37
  %53 = load ptr, ptr %38, align 4
  %54 = icmp eq ptr %53, @crypto_alg_list
  br i1 %54, label %55, label %37

55:                                               ; preds = %52, %47
  %56 = phi i1 [ true, %52 ], [ false, %47 ]
  %57 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 8
  %58 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 9
  %59 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 6
  br label %60

60:                                               ; preds = %107, %55
  %61 = phi ptr [ %5, %55 ], [ %108, %107 ]
  %62 = icmp eq ptr %61, %26
  br i1 %62, label %107, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.crypto_alg, ptr %61, i32 0, i32 2
  %65 = load i32, ptr %64, align 16
  %66 = and i32 %65, 96
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %63
  %69 = and i32 %65, 16
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.crypto_alg, ptr %61, i32 0, i32 8
  %72 = call i32 @strcmp(ptr noundef %57, ptr noundef %71)
  %73 = icmp eq i32 %72, 0
  br i1 %70, label %96, label %74

74:                                               ; preds = %68
  br i1 %73, label %78, label %75

75:                                               ; preds = %74
  %76 = call i32 @strcmp(ptr noundef %58, ptr noundef %71)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %75, %74
  %79 = getelementptr inbounds %struct.crypto_larval, ptr %61, i32 0, i32 1
  %80 = load ptr, ptr %79, align 64
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load i32, ptr %32, align 16
  %84 = xor i32 %83, %65
  %85 = getelementptr inbounds %struct.crypto_larval, ptr %61, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %84, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  br i1 %56, label %90, label %93

90:                                               ; preds = %89
  %91 = call ptr @crypto_mod_get(ptr noundef %26) #18
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %89
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi ptr [ inttoptr (i32 -11 to ptr), %93 ], [ %26, %90 ]
  store ptr %95, ptr %79, align 64
  br label %107

96:                                               ; preds = %68
  br i1 %73, label %97, label %107

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.crypto_alg, ptr %61, i32 0, i32 9
  %99 = call i32 @strcmp(ptr noundef %58, ptr noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.crypto_alg, ptr %61, i32 0, i32 6
  %103 = load i32, ptr %102, align 32
  %104 = load i32, ptr %59, align 32
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %97
  call void @crypto_remove_spawns(ptr noundef %61, ptr noundef nonnull %3, ptr noundef %26)
  br label %107

107:                                              ; preds = %106, %101, %96, %94, %82, %78, %75, %63, %60
  %108 = load ptr, ptr %61, align 4
  %109 = icmp eq ptr %108, @crypto_alg_list
  br i1 %109, label %110, label %60

110:                                              ; preds = %107, %28, %22
  %111 = getelementptr inbounds %struct.crypto_larval, ptr %8, i32 0, i32 2
  call void @complete_all(ptr noundef %111) #18
  br label %112

112:                                              ; preds = %110, %20
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %113 = load ptr, ptr %3, align 8
  %114 = icmp eq ptr %113, %3
  br i1 %114, label %135, label %115

115:                                              ; preds = %133, %112
  %116 = phi ptr [ %117, %133 ], [ %113, %112 ]
  %117 = load ptr, ptr %116, align 64
  %118 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %119, ptr %120, align 4
  store volatile ptr %117, ptr %119, align 4
  store volatile ptr %116, ptr %116, align 4
  store ptr %116, ptr %118, align 4
  %121 = getelementptr inbounds %struct.crypto_alg, ptr %116, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #18, !srcloc !14
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #18, !srcloc !15
  %123 = extractvalue { i32, i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = icmp sgt i32 %123, 0
  br i1 %126, label %133, label %127, !prof !11

127:                                              ; preds = %125
  call void @refcount_warn_saturate(ptr noundef %121, i32 noundef 3) #18
  br label %133

128:                                              ; preds = %115
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %129 = getelementptr inbounds %struct.crypto_alg, ptr %116, i32 0, i32 14
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void %130(ptr noundef %116) #18
  br label %133

133:                                              ; preds = %132, %128, %127, %125
  %134 = icmp eq ptr %117, %3
  br i1 %134, label %135, label %115

135:                                              ; preds = %133, %112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_mod_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_remove_final(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %24, label %4

4:                                                ; preds = %22, %1
  %5 = phi ptr [ %6, %22 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %7, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #18, !srcloc !14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #18, !srcloc !15
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %22, label %16, !prof !11

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #18
  br label %22

17:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %5) #18
  br label %22

22:                                               ; preds = %21, %17, %16, %14
  %23 = icmp eq ptr %6, %0
  br i1 %23, label %24, label %4

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_alg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, -33
  store i32 %4, ptr %2, align 16
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  %10 = load i8, ptr %9, align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  %16 = or i32 %15, -64
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 160
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = and i32 %3, 15
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = icmp ugt i32 %14, 15
  %32 = icmp ugt i32 %21, 16
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %30, %23
  %35 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  store volatile i32 1, ptr %39, align 4
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %40 = tail call fastcc ptr @__crypto_register_alg(ptr noundef %0)
  %41 = load volatile i32, ptr @crypto_boot_test_finished, align 4
  %42 = icmp eq ptr %40, null
  %43 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %46 = ptrtoint ptr %40 to i32
  br label %52

47:                                               ; preds = %38
  %48 = icmp sgt i32 %41, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.crypto_larval, ptr %40, i32 0, i32 4
  store i8 %49, ptr %50, align 8
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  br i1 %48, label %51, label %52

51:                                               ; preds = %47
  tail call void @crypto_wait_for_test(ptr noundef nonnull %40) #18
  br label %52

52:                                               ; preds = %51, %47, %45, %34, %30, %19, %12, %8, %1
  %53 = phi i32 [ %46, %45 ], [ 0, %51 ], [ 0, %47 ], [ -22, %8 ], [ -22, %1 ], [ -22, %12 ], [ -22, %19 ], [ -22, %30 ], [ -22, %34 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__crypto_register_alg(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %66

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = and i32 %3, -1025
  store i32 %9, ptr %2, align 16
  %10 = load ptr, ptr @crypto_alg_list, align 4
  %11 = icmp eq ptr %10, @crypto_alg_list
  br i1 %11, label %40, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 8
  br label %15

15:                                               ; preds = %37, %12
  %16 = phi ptr [ %10, %12 ], [ %38, %37 ]
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %66, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 16
  %21 = and i32 %20, 96
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = and i32 %20, 16
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 9
  br i1 %25, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %26)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %66, label %37

30:                                               ; preds = %23
  %31 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %14)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 8
  %35 = tail call i32 @strcmp(ptr noundef %34, ptr noundef %13)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %33, %27, %18
  %38 = load ptr, ptr %16, align 4
  %39 = icmp eq ptr %38, @crypto_alg_list
  br i1 %39, label %40, label %15

40:                                               ; preds = %37, %6
  %41 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 8
  %42 = or i32 %3, 1024
  %43 = tail call ptr @crypto_larval_alloc(ptr noundef %41, i32 noundef %42, i32 noundef 0) #18
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %66, label %45

45:                                               ; preds = %40
  %46 = tail call ptr @crypto_mod_get(ptr noundef %0) #18
  %47 = getelementptr inbounds %struct.crypto_larval, ptr %43, i32 0, i32 1
  store ptr %46, ptr %47, align 64
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @kfree(ptr noundef %43) #18
  br label %66

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.crypto_alg, ptr %43, i32 0, i32 7
  store volatile i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.crypto_alg, ptr %43, i32 0, i32 9
  %53 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %52, ptr noundef align 8 dereferenceable(128) %53, i32 128, i1 false) #18
  %54 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 32
  %56 = getelementptr inbounds %struct.crypto_alg, ptr %43, i32 0, i32 6
  store i32 %55, ptr %56, align 32
  %57 = load ptr, ptr @crypto_alg_list, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %0, ptr %58, align 4
  store ptr %57, ptr %0, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @crypto_alg_list, ptr %59, align 4
  store volatile ptr %0, ptr @crypto_alg_list, align 4
  %60 = icmp eq ptr %43, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  store ptr %43, ptr %59, align 4
  store ptr %0, ptr %43, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr @crypto_alg_list, ptr %62, align 4
  store volatile ptr %43, ptr @crypto_alg_list, align 4
  br label %66

63:                                               ; preds = %50
  %64 = load i32, ptr %2, align 16
  %65 = or i32 %64, 1024
  store i32 %65, ptr %2, align 16
  br label %66

66:                                               ; preds = %63, %61, %49, %40, %33, %30, %27, %15, %1
  %67 = phi ptr [ inttoptr (i32 -2 to ptr), %49 ], [ null, %63 ], [ %43, %61 ], [ inttoptr (i32 -11 to ptr), %1 ], [ %43, %40 ], [ inttoptr (i32 -17 to ptr), %30 ], [ inttoptr (i32 -17 to ptr), %33 ], [ inttoptr (i32 -17 to ptr), %27 ], [ inttoptr (i32 -17 to ptr), %15 ]
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_wait_for_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_alg(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %8, !prof !9

6:                                                ; preds = %1
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 458, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %7) #18
  br label %47

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 16
  %11 = or i32 %10, 32
  store i32 %11, ptr %9, align 16
  %12 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %4, ptr %13, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %12, align 4
  call void @crypto_remove_spawns(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null) #18
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %15 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 7
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %8
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #18, !srcloc !17
  unreachable

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void %21(ptr noundef %0) #18
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %2, align 8
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %47, label %27

27:                                               ; preds = %45, %24
  %28 = phi ptr [ %29, %45 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 4
  store volatile ptr %28, ptr %28, align 4
  store ptr %28, ptr %30, align 4
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #18, !srcloc !14
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #18, !srcloc !15
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %45, label %39, !prof !11

39:                                               ; preds = %37
  call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #18
  br label %45

40:                                               ; preds = %27
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %41 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 14
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void %42(ptr noundef %28) #18
  br label %45

45:                                               ; preds = %44, %40, %39, %37
  %46 = icmp eq ptr %29, %2
  br i1 %46, label %47, label %27

47:                                               ; preds = %45, %24, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_algs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %11, %2
  %5 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %6 = getelementptr %struct.crypto_alg, ptr %0, i32 %5
  %7 = tail call i32 @crypto_register_alg(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %19, label %14

11:                                               ; preds = %4
  %12 = add nuw nsw i32 %5, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %19, label %4

14:                                               ; preds = %14, %9
  %15 = phi i32 [ %16, %14 ], [ %5, %9 ]
  %16 = add nsw i32 %15, -1
  %17 = getelementptr %struct.crypto_alg, ptr %0, i32 %16
  tail call void @crypto_unregister_alg(ptr noundef %17)
  %18 = icmp sgt i32 %15, 1
  br i1 %18, label %14, label %19

19:                                               ; preds = %14, %11, %9, %2
  %20 = phi i32 [ %7, %9 ], [ 0, %2 ], [ %7, %14 ], [ 0, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_algs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.crypto_alg, ptr %0, i32 %5
  tail call void @crypto_unregister_alg(ptr noundef %6)
  %7 = add nuw nsw i32 %5, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_template(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @crypto_template_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @crypto_template_list
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, %0
  br i1 %7, label %12, label %2

8:                                                ; preds = %2
  %9 = load ptr, ptr @crypto_template_list, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %9, ptr %0, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @crypto_template_list, ptr %11, align 4
  store volatile ptr %0, ptr @crypto_template_list, align 4
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i32 [ 0, %8 ], [ -17, %6 ]
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_templates(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %15, %2
  %5 = phi i32 [ %19, %15 ], [ 0, %2 ]
  %6 = getelementptr %struct.crypto_template, ptr %0, i32 %5
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ @crypto_template_list, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @crypto_template_list
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %6
  br i1 %12, label %13, label %7

13:                                               ; preds = %11
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %26, label %21

15:                                               ; preds = %7
  %16 = load ptr, ptr @crypto_template_list, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %6, ptr %17, align 4
  store ptr %16, ptr %6, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr @crypto_template_list, ptr %18, align 4
  store volatile ptr %6, ptr @crypto_template_list, align 4
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %26, label %4

21:                                               ; preds = %21, %13
  %22 = phi i32 [ %23, %21 ], [ %5, %13 ]
  %23 = add nsw i32 %22, -1
  %24 = getelementptr %struct.crypto_template, ptr %0, i32 %23
  tail call void @crypto_unregister_template(ptr noundef %24)
  %25 = icmp sgt i32 %22, 1
  br i1 %25, label %21, label %26

26:                                               ; preds = %21, %15, %13, %2
  %27 = phi i32 [ -17, %13 ], [ 0, %2 ], [ -17, %21 ], [ 0, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_template(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #18, !srcloc !18
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %4, ptr %9, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %8, align 4
  %11 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -388
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %22, %7
  %18 = phi ptr [ %32, %22 ], [ %14, %7 ]
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %17
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 554, 0\0A.popsection", ""() #18, !srcloc !19
  unreachable

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 2
  %24 = load i32, ptr %23, align 16
  %25 = or i32 %24, 32
  store i32 %25, ptr %23, align 16
  %26 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %19, ptr %27, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %26, align 4
  call void @crypto_remove_spawns(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef null) #18
  %29 = getelementptr inbounds %struct.crypto_instance, ptr %18, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 -388
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %17

35:                                               ; preds = %22, %7
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %36 = load ptr, ptr %11, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -388
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %58, label %41

41:                                               ; preds = %49, %35
  %42 = phi ptr [ %55, %49 ], [ %38, %35 ]
  %43 = getelementptr inbounds %struct.crypto_instance, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 7
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %49, label %48, !prof !11

48:                                               ; preds = %41
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 560, 0\0A.popsection", ""() #18, !srcloc !20
  unreachable

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 10
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.crypto_type, ptr %51, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef nonnull %42) #18
  %54 = icmp eq ptr %44, null
  %55 = getelementptr i8, ptr %44, i32 -388
  %56 = icmp eq ptr %55, null
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %41

58:                                               ; preds = %49, %35
  %59 = load ptr, ptr %2, align 8
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %81, label %61

61:                                               ; preds = %79, %58
  %62 = phi ptr [ %63, %79 ], [ %59, %58 ]
  %63 = load ptr, ptr %62, align 64
  %64 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  store volatile ptr %63, ptr %65, align 4
  store volatile ptr %62, ptr %62, align 4
  store ptr %62, ptr %64, align 4
  %67 = getelementptr inbounds %struct.crypto_alg, ptr %62, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #18, !srcloc !14
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #18, !srcloc !15
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %79, label %73, !prof !11

73:                                               ; preds = %71
  call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #18
  br label %79

74:                                               ; preds = %61
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %75 = getelementptr inbounds %struct.crypto_alg, ptr %62, i32 0, i32 14
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void %76(ptr noundef %62) #18
  br label %79

79:                                               ; preds = %78, %74, %73, %71
  %80 = icmp eq ptr %63, %2
  br i1 %80, label %81, label %61

81:                                               ; preds = %79, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_templates(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.crypto_template, ptr %0, i32 %6
  tail call void @crypto_unregister_template(ptr noundef %7)
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_lookup_template(ptr noundef %0) #0 {
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #18
  %2 = load ptr, ptr @crypto_template_list, align 4
  %3 = icmp eq ptr %2, @crypto_template_list
  br i1 %3, label %16, label %4

4:                                                ; preds = %13, %1
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.crypto_template, ptr %5, i32 0, i32 4
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %0) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.crypto_template, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @try_module_get(ptr noundef %11) #18
  br i1 %12, label %17, label %13, !prof !11

13:                                               ; preds = %9, %4
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, @crypto_template_list
  br i1 %15, label %16, label %4

16:                                               ; preds = %13, %1
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #18
  br label %19

17:                                               ; preds = %9
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #18
  %18 = icmp eq ptr %5, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %17, %16
  %20 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %0) #18
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #18
  %21 = load ptr, ptr @crypto_template_list, align 4
  %22 = icmp eq ptr %21, @crypto_template_list
  br i1 %22, label %35, label %23

23:                                               ; preds = %32, %19
  %24 = phi ptr [ %33, %32 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.crypto_template, ptr %24, i32 0, i32 4
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef %0) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.crypto_template, ptr %24, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call zeroext i1 @try_module_get(ptr noundef %30) #18
  br i1 %31, label %35, label %32, !prof !11

32:                                               ; preds = %28, %23
  %33 = load ptr, ptr %24, align 4
  %34 = icmp eq ptr %33, @crypto_template_list
  br i1 %34, label %35, label %23

35:                                               ; preds = %32, %28, %19
  %36 = phi ptr [ null, %19 ], [ null, %32 ], [ %24, %28 ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #18
  br label %37

37:                                               ; preds = %35, %17
  %38 = phi ptr [ %36, %35 ], [ %5, %17 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_instance(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %4 = load i8, ptr %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %84, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 9
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  %14 = or i32 %13, -64
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 160
  br i1 %20, label %84, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 16
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = icmp ugt i32 %12, 15
  %32 = icmp ugt i32 %19, 16
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %84, label %34

34:                                               ; preds = %30, %25, %21
  %35 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 7
  store volatile i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 15
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 16
  %45 = or i32 %44, 2048
  store i32 %45, ptr %43, align 16
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %46 = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %54, %38
  %50 = phi ptr [ %56, %54 ], [ %47, %38 ]
  %51 = getelementptr inbounds %struct.crypto_spawn, ptr %50, i32 0, i32 5
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.crypto_spawn, ptr %50, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  store ptr %1, ptr %55, align 4
  %57 = getelementptr inbounds %struct.crypto_spawn, ptr %50, i32 0, i32 6
  store i8 1, ptr %57, align 1
  %58 = getelementptr inbounds %struct.crypto_spawn, ptr %50, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void @crypto_mod_put(ptr noundef %59) #18
  %60 = icmp eq ptr %56, null
  br i1 %60, label %61, label %49

61:                                               ; preds = %54, %38
  %62 = tail call fastcc ptr @__crypto_register_alg(ptr noundef %1)
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = icmp eq ptr %62, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.crypto_larval, ptr %62, i32 0, i32 4
  store i8 1, ptr %67, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  store volatile ptr %70, ptr %46, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.hlist_node, ptr %70, i32 0, i32 1
  store volatile ptr %46, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %68
  store volatile ptr %46, ptr %69, align 4
  %75 = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %69, ptr %75, align 4
  %76 = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 1
  store ptr %0, ptr %76, align 64
  br label %77

77:                                               ; preds = %74, %61, %49
  %78 = phi ptr [ %62, %61 ], [ %62, %74 ], [ inttoptr (i32 -11 to ptr), %49 ]
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %79 = ptrtoint ptr %78 to i32
  %80 = icmp eq ptr %78, null
  %81 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  %82 = or i1 %80, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  tail call void @crypto_wait_for_test(ptr noundef nonnull %78) #18
  br label %84

84:                                               ; preds = %83, %77, %34, %30, %17, %10, %6, %2
  %85 = phi i32 [ %79, %77 ], [ 0, %83 ], [ -22, %6 ], [ -22, %2 ], [ -22, %10 ], [ -22, %17 ], [ -22, %30 ], [ -22, %34 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_instance(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  call void @crypto_remove_spawns(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null)
  %4 = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 16
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = or i32 %7, 32
  store i32 %11, ptr %6, align 16
  %12 = icmp eq ptr %5, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.crypto_template, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = call zeroext i1 @try_module_get(ptr noundef %15) #18
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  store ptr %22, ptr %0, align 4
  store ptr %2, ptr %18, align 4
  store volatile ptr %0, ptr %2, align 8
  %24 = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 2, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  store volatile ptr %25, ptr %27, align 4
  %28 = icmp eq ptr %25, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  store volatile ptr %27, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %17
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %32 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 14
  store ptr @crypto_destroy_instance, ptr %32, align 8
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 1
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %37, label %36, !prof !11

36:                                               ; preds = %31
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #18, !srcloc !12
  unreachable

37:                                               ; preds = %31, %13, %10, %1
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %38 = load ptr, ptr %2, align 8
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %60, label %40

40:                                               ; preds = %58, %37
  %41 = phi ptr [ %42, %58 ], [ %38, %37 ]
  %42 = load ptr, ptr %41, align 64
  %43 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %42, ptr %44, align 4
  store volatile ptr %41, ptr %41, align 4
  store ptr %41, ptr %43, align 4
  %46 = getelementptr inbounds %struct.crypto_alg, ptr %41, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #18, !srcloc !14
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #18, !srcloc !15
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %58, label %52, !prof !11

52:                                               ; preds = %50
  call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #18
  br label %58

53:                                               ; preds = %40
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %54 = getelementptr inbounds %struct.crypto_alg, ptr %41, i32 0, i32 14
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void %55(ptr noundef %41) #18
  br label %58

58:                                               ; preds = %57, %53, %52, %50
  %59 = icmp eq ptr %42, %2
  br i1 %59, label %60, label %40

60:                                               ; preds = %58, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_spawn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  %7 = load i1, ptr @crypto_grab_spawn.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  store i1 true, ptr @crypto_grab_spawn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 679, i32 noundef 9, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %5
  br i1 %6, label %44, label %12

12:                                               ; preds = %11
  %13 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = ptrtoint ptr %2 to i32
  br label %44

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @crypto_find_alg(ptr noundef %2, ptr noundef %18, i32 noundef %3, i32 noundef %4) #18
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = ptrtoint ptr %19 to i32
  br label %44

23:                                               ; preds = %16
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %24 = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 2
  %25 = load i32, ptr %24, align 16
  %26 = and i32 %25, 96
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %0, ptr %31, align 4
  store ptr %30, ptr %0, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %29, ptr %32, align 4
  store volatile ptr %0, ptr %29, align 4
  %33 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 1
  store ptr %19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 4
  store i32 %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.crypto_instance, ptr %1, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  store ptr %0, ptr %35, align 4
  %38 = load i32, ptr %24, align 16
  %39 = and i32 %38, 65920
  %40 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %41 = load i32, ptr %40, align 16
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 16
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  br label %44

43:                                               ; preds = %23
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  tail call void @crypto_mod_put(ptr noundef %19) #18
  br label %44

44:                                               ; preds = %43, %28, %21, %14, %11
  %45 = phi i32 [ %15, %14 ], [ %22, %21 ], [ -22, %11 ], [ -11, %43 ], [ 0, %28 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_find_alg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_drop_spawn(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  br label %14

14:                                               ; preds = %9, %5
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %15 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 6
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 4
  tail call void @crypto_mod_put(ptr noundef %19) #18
  br label %20

20:                                               ; preds = %18, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_spawn_tfm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @crypto_spawn_alg(ptr noundef %0)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 16
  %9 = xor i32 %8, %1
  %10 = and i32 %9, %2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !11

12:                                               ; preds = %6
  %13 = tail call ptr @__crypto_alloc_tfm(ptr noundef %4, i32 noundef %1, i32 noundef %2) #18
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %6
  %16 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %13, %12 ]
  tail call void @crypto_mod_put(ptr noundef %4) #18
  br label %17

17:                                               ; preds = %15, %12, %3
  %18 = phi ptr [ %16, %15 ], [ %13, %12 ], [ %4, %3 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @crypto_spawn_alg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #18
  %2 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @crypto_mod_get(ptr noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #18, !srcloc !14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #18, !srcloc !21
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !9

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %23, label %19, !prof !11

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #18
  br label %23

21:                                               ; preds = %5, %1
  %22 = phi ptr [ inttoptr (i32 -11 to ptr), %1 ], [ %7, %5 ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #18
  br label %35

23:                                               ; preds = %19, %15
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #18
  tail call void @crypto_shoot_alg(ptr noundef %7) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #18, !srcloc !14
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #18, !srcloc !15
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %35, label %29, !prof !11

29:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #18
  br label %35

30:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %31 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(ptr noundef %7) #18
  br label %35

35:                                               ; preds = %34, %30, %29, %27, %21
  %36 = phi ptr [ %22, %21 ], [ inttoptr (i32 -11 to ptr), %27 ], [ inttoptr (i32 -11 to ptr), %29 ], [ inttoptr (i32 -11 to ptr), %30 ], [ inttoptr (i32 -11 to ptr), %34 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__crypto_alloc_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_spawn_tfm2(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc ptr @crypto_spawn_alg(ptr noundef %0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @crypto_create_tfm_node(ptr noundef %2, ptr noundef %6, i32 noundef -1) #18
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @crypto_mod_put(ptr noundef %2) #18
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi ptr [ %7, %9 ], [ %7, %4 ], [ %2, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @crypto_chain, ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @crypto_chain, ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @crypto_get_attr_type(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr %2, align 2
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -4
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtattr, ptr %2, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %2, i32 4
  br label %15

15:                                               ; preds = %13, %9, %4, %1
  %16 = phi ptr [ %14, %13 ], [ inttoptr (i32 -2 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %9 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_check_attr_type(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %4, align 2
  %8 = zext i16 %7 to i32
  %9 = add nsw i32 %8, -4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtattr, ptr %4, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %4, i32 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %11, %6, %3
  %19 = phi ptr [ %16, %15 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %3 ]
  %20 = ptrtoint ptr %19 to i32
  br label %32

21:                                               ; preds = %15
  %22 = load i32, ptr %16, align 4
  %23 = xor i32 %22, %1
  %24 = getelementptr i8, ptr %4, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = and i32 %22, 65920
  %30 = xor i32 %29, 65920
  %31 = and i32 %30, %25
  store i32 %31, ptr %2, align 4
  br label %32

32:                                               ; preds = %28, %21, %18
  %33 = phi i32 [ %20, %18 ], [ 0, %28 ], [ -22, %21 ]
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @crypto_attr_alg_name(ptr noundef %0) #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2
  %5 = zext i16 %4 to i32
  %6 = add nsw i32 %5, -4
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtattr, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 4
  %14 = getelementptr i8, ptr %0, i32 131
  store i8 0, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %8, %3, %1
  %16 = phi ptr [ %13, %12 ], [ inttoptr (i32 -2 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -22 to ptr), %8 ]
  ret ptr %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_inst_setname(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #8 {
  %4 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 8
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %4, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %5)
  %7 = icmp sgt i32 %6, 127
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 9
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %10)
  %12 = icmp sgt i32 %11, 127
  %13 = select i1 %12, i32 -36, i32 0
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ -36, %3 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_init_queue(ptr noundef %0, i32 noundef %1) #10 {
  store volatile ptr %0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 1
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 2
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 3
  store i32 %1, ptr %6, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_enqueue_request(ptr noundef %0, ptr noundef %1) #11 {
  %3 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %18, label %8, !prof !11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 4
  br label %18

18:                                               ; preds = %17, %13, %2
  %19 = phi i32 [ -16, %17 ], [ -16, %13 ], [ -115, %2 ]
  %20 = add i32 %4, 1
  store i32 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %1, ptr %21, align 4
  store ptr %0, ptr %1, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %1, ptr %22, align 4
  br label %24

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %19, %18 ], [ -28, %8 ]
  ret i32 %25
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_enqueue_request_head(ptr noundef %0, ptr noundef %1) #11 {
  %3 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  store ptr %6, ptr %1, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  store volatile ptr %1, ptr %0, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_dequeue_request(ptr noundef %0) #11 {
  %2 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5, !prof !9

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.crypto_queue, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 4
  store ptr %11, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi ptr [ %13, %12 ], [ null, %1 ]
  ret ptr %19
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_inc(ptr nocapture noundef %0, i32 noundef %1) #12 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 %1
  br label %6

6:                                                ; preds = %15, %4
  %7 = phi ptr [ %9, %15 ], [ %5, %4 ]
  %8 = phi i32 [ %16, %15 ], [ %1, %4 ]
  %9 = getelementptr i32, ptr %7, i32 -1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = add i32 %11, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  store i32 %13, ptr %9, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %33, !prof !9

15:                                               ; preds = %6
  %16 = add i32 %8, -4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %6, label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %1, %2 ], [ %16, %15 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 %19
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %22, %21 ], [ %26, %23 ]
  %25 = phi i32 [ %19, %21 ], [ %30, %23 ]
  %26 = getelementptr i8, ptr %24, i32 -1
  %27 = load i8, ptr %26, align 1
  %28 = add i8 %27, 1
  store i8 %28, ptr %26, align 1
  %29 = icmp ne i8 %28, 0
  %30 = add i32 %25, -1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %23

33:                                               ; preds = %23, %18, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__crypto_xor(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #14 {
  %5 = icmp ugt i32 %3, 3
  br i1 %5, label %12, label %6

6:                                                ; preds = %12, %4
  %7 = phi ptr [ %0, %4 ], [ %20, %12 ]
  %8 = phi ptr [ %1, %4 ], [ %21, %12 ]
  %9 = phi ptr [ %2, %4 ], [ %22, %12 ]
  %10 = phi i32 [ %3, %4 ], [ %23, %12 ]
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %31, label %25

12:                                               ; preds = %12, %4
  %13 = phi i32 [ %23, %12 ], [ %3, %4 ]
  %14 = phi ptr [ %22, %12 ], [ %2, %4 ]
  %15 = phi ptr [ %21, %12 ], [ %1, %4 ]
  %16 = phi ptr [ %20, %12 ], [ %0, %4 ]
  %17 = load i32, ptr %15, align 4
  %18 = load i32, ptr %14, align 4
  %19 = xor i32 %18, %17
  store i32 %19, ptr %16, align 4
  %20 = getelementptr i8, ptr %16, i32 4
  %21 = getelementptr i8, ptr %15, i32 4
  %22 = getelementptr i8, ptr %14, i32 4
  %23 = add i32 %13, -4
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %12, label %6

25:                                               ; preds = %31, %6
  %26 = phi ptr [ %7, %6 ], [ %39, %31 ]
  %27 = phi ptr [ %8, %6 ], [ %40, %31 ]
  %28 = phi ptr [ %9, %6 ], [ %41, %31 ]
  %29 = phi i32 [ %10, %6 ], [ %42, %31 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %44

31:                                               ; preds = %31, %6
  %32 = phi i32 [ %42, %31 ], [ %10, %6 ]
  %33 = phi ptr [ %41, %31 ], [ %9, %6 ]
  %34 = phi ptr [ %40, %31 ], [ %8, %6 ]
  %35 = phi ptr [ %39, %31 ], [ %7, %6 ]
  %36 = load i16, ptr %34, align 2
  %37 = load i16, ptr %33, align 2
  %38 = xor i16 %37, %36
  store i16 %38, ptr %35, align 2
  %39 = getelementptr i8, ptr %35, i32 2
  %40 = getelementptr i8, ptr %34, i32 2
  %41 = getelementptr i8, ptr %33, i32 2
  %42 = add i32 %32, -2
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %31, label %25

44:                                               ; preds = %25
  %45 = load i8, ptr %27, align 1
  %46 = load i8, ptr %28, align 1
  %47 = xor i8 %46, %45
  store i8 %47, ptr %26, align 1
  br label %48

48:                                               ; preds = %44, %25
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_alg_extsize(ptr nocapture noundef readonly %0) #15 {
  %2 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -64
  %7 = add i32 %6, %3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_type_has_alg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @crypto_find_alg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @crypto_mod_put(ptr noundef %5) #18
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @crypto_algapi_exit() #16 section ".exit.text" {
  tail call void @crypto_exit_proc() #19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @crypto_exit_proc() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @crypto_algapi_init() #16 section ".init.text" {
  tail call void @crypto_init_proc() #19
  tail call fastcc void @crypto_start_tests() #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_destroy_instance(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_instance, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.crypto_type, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #18
  %8 = getelementptr inbounds %struct.crypto_template, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_larval_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_shoot_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_create_tfm_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @crypto_init_proc() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @crypto_start_tests() unnamed_addr #16 section ".init.text" {
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %1 = load ptr, ptr @crypto_alg_list, align 4
  %2 = icmp eq ptr %1, @crypto_alg_list
  br i1 %2, label %22, label %3

3:                                                ; preds = %20, %0
  %4 = phi ptr [ %21, %20 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 9
  %11 = load i8, ptr %10, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.crypto_larval, ptr %4, i32 0, i32 4
  %15 = load i8, ptr %14, align 8, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %9, %3
  %18 = load ptr, ptr %4, align 4
  %19 = icmp eq ptr %18, @crypto_alg_list
  br i1 %19, label %22, label %20

20:                                               ; preds = %26, %17
  %21 = phi ptr [ %18, %17 ], [ %27, %26 ]
  br label %3

22:                                               ; preds = %26, %17, %0
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  br label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.crypto_larval, ptr %4, i32 0, i32 4
  store i8 1, ptr %24, align 8
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #18
  %25 = icmp eq ptr %4, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @crypto_wait_for_test(ptr noundef nonnull %4) #18
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #18
  %27 = load ptr, ptr @crypto_alg_list, align 4
  %28 = icmp eq ptr %27, @crypto_alg_list
  br i1 %28, label %22, label %20

29:                                               ; preds = %23, %22
  %30 = load i8, ptr @static_key_initialized, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @crypto_boot_test_finished) #18
  br label %33

33:                                               ; preds = %32, %29
  %34 = load volatile i32, ptr @crypto_boot_test_finished, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load volatile i32, ptr @crypto_boot_test_finished, align 4
  %38 = icmp ne i32 %37, 1
  %39 = load i1, ptr @static_key_enable.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44, !prof !9

42:                                               ; preds = %36
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 321, i32 noundef 9, ptr noundef null) #18
  br label %44

43:                                               ; preds = %33
  store volatile i32 1, ptr @crypto_boot_test_finished, align 4
  br label %44

44:                                               ; preds = %43, %42, %36
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly nofree nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154679127, i64 2154679607, i64 2154679164, i64 2154679220, i64 2154679254, i64 2154679278, i64 2154679319, i64 2154679340, i64 2154679368, i64 2154679402}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154667651, i64 2154668131, i64 2154667688, i64 2154667744, i64 2154667778, i64 2154667802, i64 2154667843, i64 2154667864, i64 2154667892, i64 2154667926}
!13 = !{i64 2147989737}
!14 = !{i64 312814, i64 2147814380, i64 2147814406, i64 2147814453, i64 2147814475, i64 2147814503, i64 2147814523}
!15 = !{i64 2147891896, i64 2147891928, i64 2147891957, i64 2147891991, i64 2147892022, i64 2147892045}
!16 = !{i64 2148600822}
!17 = !{i64 2154710689, i64 2154711169, i64 2154710726, i64 2154710782, i64 2154710816, i64 2154710840, i64 2154710881, i64 2154710902, i64 2154710930, i64 2154710964}
!18 = !{i64 2154726059, i64 2154726539, i64 2154726096, i64 2154726152, i64 2154726186, i64 2154726210, i64 2154726251, i64 2154726272, i64 2154726300, i64 2154726334}
!19 = !{i64 2154730095, i64 2154730575, i64 2154730132, i64 2154730188, i64 2154730222, i64 2154730246, i64 2154730287, i64 2154730308, i64 2154730336, i64 2154730370}
!20 = !{i64 2154734136, i64 2154734616, i64 2154734173, i64 2154734229, i64 2154734263, i64 2154734287, i64 2154734328, i64 2154734349, i64 2154734377, i64 2154734411}
!21 = !{i64 2147889539, i64 2147889571, i64 2147889600, i64 2147889634, i64 2147889665, i64 2147889688}
