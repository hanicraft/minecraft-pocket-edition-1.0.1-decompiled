.class final Lcom/android/vending/licensing/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/vending/licensing/u;

.field private final b:Lcom/android/vending/licensing/t;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/android/vending/licensing/g;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/u;Lcom/android/vending/licensing/g;Lcom/android/vending/licensing/t;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/vending/licensing/c;->a:Lcom/android/vending/licensing/u;

    iput-object p2, p0, Lcom/android/vending/licensing/c;->f:Lcom/android/vending/licensing/g;

    iput-object p3, p0, Lcom/android/vending/licensing/c;->b:Lcom/android/vending/licensing/t;

    iput p4, p0, Lcom/android/vending/licensing/c;->c:I

    iput-object p5, p0, Lcom/android/vending/licensing/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/vending/licensing/c;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/c;->a:Lcom/android/vending/licensing/u;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/licensing/u;->a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V

    iget-object v0, p0, Lcom/android/vending/licensing/c;->a:Lcom/android/vending/licensing/u;

    invoke-interface {v0}, Lcom/android/vending/licensing/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/licensing/c;->b:Lcom/android/vending/licensing/t;

    invoke-interface {v0}, Lcom/android/vending/licensing/t;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/vending/licensing/c;->b:Lcom/android/vending/licensing/t;

    invoke-interface {v0}, Lcom/android/vending/licensing/t;->b()V

    goto :goto_0
.end method

.method private a(Lcom/android/vending/licensing/j;)V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/c;->b:Lcom/android/vending/licensing/t;

    invoke-interface {v0, p1}, Lcom/android/vending/licensing/t;->a(Lcom/android/vending/licensing/j;)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/c;->b:Lcom/android/vending/licensing/t;

    invoke-interface {v0}, Lcom/android/vending/licensing/t;->b()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/vending/licensing/t;
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/c;->b:Lcom/android/vending/licensing/t;

    return-object v0
.end method

.method public final a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_9

    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-static {p4}, Lcom/android/vending/licensing/a/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LicenseValidator"

    const-string v1, "Signature verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vending/licensing/a/a; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/vending/licensing/j;->d:Lcom/android/vending/licensing/j;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/j;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not Base64-decode signature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p3}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_4
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not parse response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Lcom/android/vending/licensing/i;

    invoke-direct {v2}, Lcom/android/vending/licensing/i;-><init>()V

    iput-object v1, v2, Lcom/android/vending/licensing/i;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/android/vending/licensing/i;->a:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/android/vending/licensing/i;->b:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/vending/licensing/i;->c:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/vending/licensing/i;->d:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/vending/licensing/i;->e:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/vending/licensing/i;->f:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    iget v0, v2, Lcom/android/vending/licensing/i;->a:I

    if-eq v0, p2, :cond_4

    const-string v0, "LicenseValidator"

    const-string v1, "Response codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto/16 :goto_0

    :cond_4
    iget v0, v2, Lcom/android/vending/licensing/i;->b:I

    iget v1, p0, Lcom/android/vending/licensing/c;->c:I

    if-eq v0, v1, :cond_5

    const-string v0, "LicenseValidator"

    const-string v1, "Nonce doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, v2, Lcom/android/vending/licensing/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vending/licensing/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "LicenseValidator"

    const-string v1, "Package name doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v2, Lcom/android/vending/licensing/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vending/licensing/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "LicenseValidator"

    const-string v1, "Version codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v2, Lcom/android/vending/licensing/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "LicenseValidator"

    const-string v1, "User identifier is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    :cond_9
    sparse-switch p2, :sswitch_data_0

    const-string v0, "LicenseValidator"

    const-string v1, "Unknown response code for license check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/vending/licensing/c;->d()V

    goto/16 :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/vending/licensing/c;->f:Lcom/android/vending/licensing/g;

    invoke-interface {v1}, Lcom/android/vending/licensing/g;->a()Lcom/android/vending/licensing/e;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V

    goto/16 :goto_0

    :sswitch_1
    sget-object v1, Lcom/android/vending/licensing/e;->b:Lcom/android/vending/licensing/e;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "LicenseValidator"

    const-string v2, "Error contacting licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/vending/licensing/e;->c:Lcom/android/vending/licensing/e;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "LicenseValidator"

    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/vending/licensing/e;->c:Lcom/android/vending/licensing/e;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "LicenseValidator"

    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/vending/licensing/e;->c:Lcom/android/vending/licensing/e;

    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/e;Lcom/android/vending/licensing/i;)V

    goto/16 :goto_0

    :sswitch_5
    sget-object v0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/j;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/j;)V

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/android/vending/licensing/j;->b:Lcom/android/vending/licensing/j;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/j;)V

    goto/16 :goto_0

    :sswitch_7
    sget-object v0, Lcom/android/vending/licensing/j;->c:Lcom/android/vending/licensing/j;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/c;->a(Lcom/android/vending/licensing/j;)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/vending/licensing/c;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/c;->d:Ljava/lang/String;

    return-object v0
.end method
