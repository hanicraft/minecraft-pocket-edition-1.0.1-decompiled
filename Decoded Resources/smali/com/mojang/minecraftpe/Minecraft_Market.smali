.class public Lcom/mojang/minecraftpe/Minecraft_Market;
.super Lcom/mojang/minecraftpe/MainActivity;


# static fields
.field private static final a:[B


# instance fields
.field private b:Lcom/android/vending/licensing/t;

.field private c:Lcom/android/vending/licensing/b;

.field private volatile d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mojang/minecraftpe/Minecraft_Market;->a:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        0x7at
        0x63t
        -0x7ct
        -0x12t
        0x41t
        0x1dt
        -0x11t
        0x33t
        -0x5at
        0x59t
        0x65t
        -0x80t
        -0x76t
        -0x2dt
        0x7dt
        0x4at
        -0x7ct
        -0x3t
        0x3at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->d:I

    return-void
.end method

.method static synthetic a(Lcom/mojang/minecraftpe/Minecraft_Market;I)V
    .locals 0

    iput p1, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->d:I

    return-void
.end method


# virtual methods
.method public buyGame()V
    .locals 3

    const-string v0, "market://details?id=com.mojang.minecraftpe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public checkLicense()I
    .locals 1

    iget v0, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->d:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/Minecraft_Market;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/g;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/g;-><init>(Lcom/mojang/minecraftpe/Minecraft_Market;)V

    iput-object v1, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->b:Lcom/android/vending/licensing/t;

    new-instance v1, Lcom/android/vending/licensing/b;

    new-instance v2, Lcom/android/vending/licensing/m;

    new-instance v3, Lcom/android/vending/licensing/p;

    sget-object v4, Lcom/mojang/minecraftpe/Minecraft_Market;->a:[B

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/Minecraft_Market;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vending/licensing/p;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/android/vending/licensing/m;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/d;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqU9snkqLkTCYZQfQgNy9eabP/OcumQTgcoYhuBbmx2isicIX8mSUNJn64yxiA6acqnJzJxGbKW9H+gSWMuRtCtwI3Exb3sCq19EiVtjos4u5BJatzBKXXDDJeeYrejGk8FgT6ffokcilJFY4wgQQxDGFdfE/reAqm6+VKUtoqnjMpG0wVZn+o0bJfxNvE/ydJPlabDmoywEn9zEl0hXo0i+cimVlFZcTT6ed7U9celM2Ywg+7qVIu7fmBHPucTIoUAbipEAIvP2EntOqrhUG6GKJ219Qhdr43fvnyBailudNBiDRqA+x0rCH1JgmV/BvyAHTBylPzroeh9rWJNNPxQIDAQAB"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/vending/licensing/b;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/u;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->c:Lcom/android/vending/licensing/b;

    iget-object v0, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->c:Lcom/android/vending/licensing/b;

    iget-object v1, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->b:Lcom/android/vending/licensing/t;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/b;->a(Lcom/android/vending/licensing/t;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mojang/minecraftpe/Minecraft_Market;->c:Lcom/android/vending/licensing/b;

    invoke-virtual {v0}, Lcom/android/vending/licensing/b;->a()V

    return-void
.end method
