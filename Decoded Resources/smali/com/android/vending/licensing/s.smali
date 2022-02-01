.class final Lcom/android/vending/licensing/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/vending/licensing/r;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/r;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/licensing/s;->a:Lcom/android/vending/licensing/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/vending/licensing/s;->a:Lcom/android/vending/licensing/r;

    iget-object v0, v0, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/b;

    iget-object v1, p0, Lcom/android/vending/licensing/s;->a:Lcom/android/vending/licensing/r;

    invoke-static {v1}, Lcom/android/vending/licensing/r;->a(Lcom/android/vending/licensing/r;)Lcom/android/vending/licensing/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/licensing/b;->a(Lcom/android/vending/licensing/b;Lcom/android/vending/licensing/c;)V

    iget-object v0, p0, Lcom/android/vending/licensing/s;->a:Lcom/android/vending/licensing/r;

    iget-object v0, v0, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/b;

    iget-object v1, p0, Lcom/android/vending/licensing/s;->a:Lcom/android/vending/licensing/r;

    invoke-static {v1}, Lcom/android/vending/licensing/r;->a(Lcom/android/vending/licensing/r;)Lcom/android/vending/licensing/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/licensing/b;->b(Lcom/android/vending/licensing/b;Lcom/android/vending/licensing/c;)V

    return-void
.end method
