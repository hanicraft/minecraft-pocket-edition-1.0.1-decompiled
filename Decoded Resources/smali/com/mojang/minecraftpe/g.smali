.class final Lcom/mojang/minecraftpe/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/t;


# instance fields
.field private synthetic a:Lcom/mojang/minecraftpe/Minecraft_Market;


# direct methods
.method synthetic constructor <init>(Lcom/mojang/minecraftpe/Minecraft_Market;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mojang/minecraftpe/g;-><init>(Lcom/mojang/minecraftpe/Minecraft_Market;B)V

    return-void
.end method

.method private constructor <init>(Lcom/mojang/minecraftpe/Minecraft_Market;B)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Minecraft_Market;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market;->a(Lcom/mojang/minecraftpe/Minecraft_Market;I)V

    goto :goto_0
.end method

.method public final a(Lcom/android/vending/licensing/j;)V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Minecraft_Market;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    invoke-virtual {p1}, Lcom/android/vending/licensing/j;->ordinal()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market;->a(Lcom/mojang/minecraftpe/Minecraft_Market;I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Minecraft_Market;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/g;->a:Lcom/mojang/minecraftpe/Minecraft_Market;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market;->a(Lcom/mojang/minecraftpe/Minecraft_Market;I)V

    goto :goto_0
.end method
