# $NetBSD: buildlink3.mk,v 1.12 2020/12/09 11:25:03 jaapb Exp $

BUILDLINK_TREE+=	ocaml-migrate-parsetree

.if !defined(OCAML_MIGRATE_PARSETREE_BUILDLINK3_MK)
OCAML_MIGRATE_PARSETREE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-migrate-parsetree+=	ocaml-migrate-parsetree>=1.0.1
BUILDLINK_ABI_DEPENDS.ocaml-migrate-parsetree+=	ocaml-migrate-parsetree>=1.8.0
BUILDLINK_PKGSRCDIR.ocaml-migrate-parsetree?=	../../devel/ocaml-migrate-parsetree
.endif	# OCAML_MIGRATE_PARSETREE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-migrate-parsetree
