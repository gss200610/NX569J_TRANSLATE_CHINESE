.class final Lcom/loc/co$a;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/loc/cr;

.field final synthetic b:Lcom/loc/co;


# direct methods
.method constructor <init>(Lcom/loc/co;Lcom/loc/cr;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/co$a;->b:Lcom/loc/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/co$a;->a:Lcom/loc/cr;

    iput-object p2, p0, Lcom/loc/co$a;->a:Lcom/loc/cr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/loc/co$a;->b:Lcom/loc/co;

    iget v1, v0, Lcom/loc/co;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/co;->b:I

    iget-object v0, p0, Lcom/loc/co$a;->b:Lcom/loc/co;

    iget-object v1, p0, Lcom/loc/co$a;->a:Lcom/loc/cr;

    invoke-virtual {v0, v1}, Lcom/loc/co;->b(Lcom/loc/cr;)V

    iget-object v0, p0, Lcom/loc/co$a;->b:Lcom/loc/co;

    iget v1, v0, Lcom/loc/co;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/loc/co;->b:I

    return-void
.end method
