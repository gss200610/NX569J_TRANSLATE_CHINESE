.class public final Lcom/loc/bz;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/bz;->a:Z

    sput-object v1, Lcom/loc/bz;->b:Ljava/lang/String;

    sput-object v1, Lcom/loc/bz;->c:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/loc/bz;->d:J

    return-void
.end method
