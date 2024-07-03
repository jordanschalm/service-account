
   
import FlowDKG from 0x8624b52f9ddcd04a

transaction(newThresholdPercentage: UFix64) {

    let dkgAdmin: &FlowDKG.Admin

    prepare(signer: AuthAccount) {

        self.dkgAdmin = signer.borrow<&FlowDKG.Admin>(from: FlowDKG.AdminStoragePath)
            ?? panic("Could not borrow DKG Admin reference")

    }

    execute {

        self.dkgAdmin.setSafeSuccessThreshold(newThresholdPercentage: newThresholdPercentage)

    }

}