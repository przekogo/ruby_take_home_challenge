module APITestingHelpers
  def etherscan_transaction_response
    {
      status: "1",
      message: "OK",
      result: [
        {
          blockNumber: "6302145",
          timeStamp: "1536526796",
          hash: "0xf6e80539326f56d1416c2013aded375a812e13ab90799b164f0c68900d6b773d",
          nonce: "55126",
          blockHash: "0xb9e889640d5b1b8bd2b4d102afbfae32c94ee346ff2a387ac3ef166d79133944",
          transactionIndex: "1",
          from: "0xa95350d70b18fa29f6b5eb8d627ceeeee499340d",
          to: "0xec690940081e780ae3310c88eb3f4c75622988ec",
          value: "3000000000000000000",
          gas: "21000",
          gasPrice: "60000000000",
          isError: "0",
          txreceipt_status: "1",
          input: "0x",
          contractAddress: "",
          cumulativeGasUsed: "58420",
          gasUsed: "21000",
          confirmations: "137382"
        },
        {
          blockNumber: "6302299",
          timeStamp: "1536528967",
          hash: "0x12bbb4225cc388ae0535ec907314266e79630c901a3ca399744e75e12467155d",
          nonce: "0",
          blockHash: "0xa822a12b17aef85f56dbb596e1c3e6f27d0fe09350e4f47ffc4a16f1128a5da4",
          transactionIndex: "18",
          from: "0xec690940081e780ae3310c88eb3f4c75622988ec",
          to: "0x3f5ce5fbfe3e9af3971dd833d26ba9b5c936f0be",
          value: "2994000000000000000",
          gas: "42000",
          gasPrice: "20000000000",
          isError: "0",
          txreceipt_status: "1",
          input: "0x",
          contractAddress: "",
          cumulativeGasUsed: "581497",
          gasUsed: "21000",
          confirmations: "137228"
        },
        {
          blockNumber: "6394447",
          timeStamp: "1537844540",
          hash: "0x235fc7274c70d1cae8e4cd148da82582412acbca9a9e4ebdde93e81a02cf797f",
          nonce: "56265",
          blockHash: "0xaaeb4a196864a7c77388f08796588508fd6b1707498daef8724f15292b6a7c3a",
          transactionIndex: "5",
          from: "0xa95350d70b18fa29f6b5eb8d627ceeeee499340d",
          to: "0xec690940081e780ae3310c88eb3f4c75622988ec",
          value: "2000000000000000000",
          gas: "21000",
          gasPrice: "60000000000",
          isError: "0",
          txreceipt_status: "1",
          input: "0x",
          contractAddress: "",
          cumulativeGasUsed: "220123",
          gasUsed: "21000",
          confirmations: "45080"
        },
        {
          blockNumber: "6394617",
        timeStamp: "1537846793",
        hash: "0xbd4803f537c2d061e9e944f40d0bcebcbe0aafc54e5a38b6fedfb424229dbeb6",
        nonce: "1",
        blockHash: "0x2ad8fef3e522f77e1fcbe3215bc8699a34a4df236db03adabf2786b3f18aed4e",
        transactionIndex: "68",
        from: "0xec690940081e780ae3310c88eb3f4c75622988ec",
        to: "0x3f5ce5fbfe3e9af3971dd833d26ba9b5c936f0be",
        value: "1999580000000000000",
        gas: "42000",
        gasPrice: "20000000000",
        isError: "0",
        txreceipt_status: "1",
        input: "0x",
        contractAddress: "",
        cumulativeGasUsed: "1910278",
        gasUsed: "21000",
        confirmations: "44910"
      }]
    }
  end

  def formatted_transaction_response
    {
      from: "0xa95350d70b18fa29f6b5eb8d627ceeeee499340d",
      to: "0xec690940081e780ae3310c88eb3f4c75622988ec",
      value: 3000000000000000000,
      fee: 1260000000000000,
      timestamp: "1536526796"
    }
  end
end
