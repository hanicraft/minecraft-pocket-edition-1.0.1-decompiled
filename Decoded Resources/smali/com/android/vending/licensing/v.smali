.class final Lcom/android/vending/licensing/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/vending/licensing/r;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/r;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    iput p2, p0, Lcom/android/vending/licensing/v;->b:I

    iput-object p3, p0, Lcom/android/vending/licensing/v;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/vending/licensing/v;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "LicenseChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/vending/licensing/v;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    iget-object v0, v0, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/b;

    invoke-static {v0}, Lcom/android/vending/licensing/b;->b(Lcom/android/vending/licensing/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    invoke-static {v1}, Lcom/android/vending/licensing/r;->a(Lcom/android/vending/licensing/r;)Lcom/android/vending/licensing/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    invoke-static {v0}, Lcom/android/vending/licensing/r;->b(Lcom/android/vending/licensing/r;)V

    iget-object v0, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    invoke-static {v0}, Lcom/android/vending/licensing/r;->a(Lcom/android/vending/licensing/r;)Lcom/android/vending/licensing/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    iget-object v1, v1, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/b;

    invoke-static {v1}, Lcom/android/vending/licensing/b;->c(Lcom/android/vending/licensing/b;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/android/vending/licensing/v;->b:I

    iget-object v3, p0, Lcom/android/vending/licensing/v;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vending/licensing/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/licensing/c;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    iget-object v0, v0, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/b;

    iget-object v1, p0, Lcom/android/vending/licensing/v;->a:Lcom/android/vending/licensing/r;

    invoke-static {v1}, Lcom/android/vending/licensing/r;->a(Lcom/android/vending/licensing/r;)Lcom/android/vending/licensing/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/licensing/b;->b(Lcom/android/vending/licensing/b;Lcom/android/vending/licensing/c;)V

    :cond_0
    return-void
.end method
