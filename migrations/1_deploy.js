const Example = artifacts.require("Example");

module.exports = async (deployer) => {
  // goerli dai, hardcoded use with caution
  const dai = "0x73967c6a0904aA032C103b4104747E88c566B1A2";
  await deployer.deploy(Example, dai);
}
