.class final Lcom/loc/be$a;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:Z

.field final synthetic c:Lcom/loc/be;


# direct methods
.method constructor <init>(Lcom/loc/be;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/loc/be$a;->c:Lcom/loc/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/loc/be$a;->a:Z

    iput-boolean v0, p0, Lcom/loc/be$a;->b:Z

    return-void
.end method
